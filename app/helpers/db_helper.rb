module DbHelper
  require 'sqlite3';


  def initDB
    db = SQLite3::Database.new 'file.db';

    result = db.execute <<-SQL
      CREATE TABLE news (
          id INTEGER  PRIMARY KEY AUTOINCREMENT,
          title TEXT,
          text TEXT,
          date_ TEXT
        );
    SQL

    result = db.execute <<-SQL
       CREATE TABLE user (
         id INTEGER  PRIMARY KEY,
         username TEXT,
         password TEXT
       );
    SQL
  end

  def inserUser(username, password)
    db = SQLite3::Database.new 'file.db';
    db.execute( "INSERT INTO user ( username, password ) VALUES ( '#{username}', '#{password}' )" );
  end

  def getUser()
    db = SQLite3::Database.new 'file.db';
    query = "SELECT * FROM user"
    db.results_as_hash = true
    user = db.execute(query)
    return user;
  end

  def AddNews(title, text)
    date = Time.new
    curr_date = date.strftime("%Y/%m/%d %H:%M")
    db = SQLite3::Database.new 'file.db';
    db.execute( "INSERT INTO news ( title, text, date_ ) VALUES ( '#{title}', '#{text}', '#{curr_date}' )" );
  end

  def getAllNews
    db = SQLite3::Database.new 'file.db';

    query = "SELECT * FROM news"
    db.results_as_hash = true
    rows = db.execute(query)
    return rows;
  end

  def getNews(id)
    row2 = 0;
    db = SQLite3::Database.new 'file.db';

    query = "SELECT * FROM news WHERE id=#{id}"
    db.results_as_hash = true
    rows = db.execute(query)
    return rows;
  end

  def EditNews(title, text, id)
    date = Time.new
    curr_date = date.strftime("%Y/%m/%d %H:%M")
    db = SQLite3::Database.new 'file.db';
    query = "UPDATE news SET title='#{title}', text='#{text}', date_='#{curr_date}' WHERE id='#{id}'"
    rows = db.execute(query);

  end

  def deleteNews(id)
    db = SQLite3::Database.new 'file.db';
    query = "DELETE FROM news WHERE id='#{id}'"
    rows = db.execute(query);
  end

end
