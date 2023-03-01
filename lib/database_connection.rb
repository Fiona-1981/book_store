require 'pg'

class DatabaseConnection
  def self.connect(book_store_test)
     @connection = PG.connect({ host: '127.0.0.1', dbname: book_store_test })
  end

  def self.exec_params(query, params)
    @connection.exec_params(query, params)
  end
end