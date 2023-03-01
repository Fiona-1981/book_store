require 'pg'

class DatabaseConnection
  def self.connect(book_store)
     @connection = PG.connect({ host: '127.0.0.1', dbname: book_store })
  end

  def self.exec_params(query, params)
    @connection.exec_params(query, params)
  end
end