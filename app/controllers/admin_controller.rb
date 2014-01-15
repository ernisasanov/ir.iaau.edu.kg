class AdminController < ApplicationController

  def admin
    if (params[:param] == "logout")
      logout;
    end
  end

end
