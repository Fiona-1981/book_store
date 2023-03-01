require 'book_repository'
# EXAMPLES

# 1
# Get all books

repo = BookRepository.new

books = repo.all

books.length # =>  2

expect(books[0].id).to eq('1')
expect(books[0].title).to eq('Nineteen Eighty-Four')
expect(books[0].author_name).to eq('George Orwell')

expect(books[1].id).to eq('2')
expect(books[1].title).to eq('Mrs Dalloway')
expect(books[1].author_name).to eq('Virginia Woolf')

# 2
# Get a single book

repo = BookRepository.new

book = repo.find(1)

expect(book.id).to eq('1')
expect(book.title).to eq('Nineteen Eighty-Four')
expect(book.author_name).to eq('George Orwell')

# Add more examples for each method
repo = BookRepository.new

book = repo.create(1)

expect(book.id).to eq('1')
expect(book.title).to eq('Nineteen Eighty-Four')
expect(book.author_name).to eq('George Orwell')

repo = BookRepository.new

book = repo.update(1)

expect(book.id).to eq('1')
expect(book.title).to eq('Nineteen Eighty-Four')
expect(book.author_name).to eq('George Orwell')

repo = BookRepository.new

book = repo.delete(1)

