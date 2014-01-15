module ApplicationHelper

  def is_current(path)
      if current_page?(path)
        return 'nav-active'
      end
  end

  def is_admin_page
    if request.fullpath.include?('admin')
      return true;
    end
  end

  def login()
    getUser.each do |user|
      if (user['username'] == params[:username] && user['password'] == params[:password])
        session[:login] = true;
        return true;
      else return false;
      end
    end
  end

  def logout
    session.delete(:login);
    #session[:login] = false;
  end

  def loggen_in
    if (session[:login])
       return true;
    else
      return false;
    end
  end

end
