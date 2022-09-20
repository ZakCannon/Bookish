# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

books = Book.find_or_create_by(title: "The Picture of Dorian Gray", author: "Oscar Wilde", isbn: "9780141439570")
books = Book.find_or_create_by(title: "The Bell Jar", author: "Sylvia Plath", isbn: "9780571226160")
books = Book.find_or_create_by(title: "Animal Farm", author: "George Orwell", isbn: "9780452284241")
books = Book.find_or_create_by(title: "The Great Gatsby", author: "F Scott Fitzgerald", isbn: "9780684801520")
books = Book.find_or_create_by(title: "The Metamorphosis", author: "Franz Kafka", isbn: "9780141023458")

copies = Copy.find_or_create_by(book_id: 1)
copies = Copy.find_or_create_by(book_id: 2)
copies = Copy.find_or_create_by(book_id: 3)
copies = Copy.find_or_create_by(book_id: 4)
copies = Copy.find_or_create_by(book_id: 5)

copies = Copy.find_or_create_by(book_id: 1, borrower: "Zak", due_date: "26/09/2022")
copies = Copy.find_or_create_by(book_id: 1, borrower: "Aga", due_date: "23/09/2022")
copies = Copy.find_or_create_by(book_id: 1, borrower: "Ralf", due_date: "27/09/2022")
copies = Copy.find_or_create_by(book_id: 2, borrower: "Natasha", due_date: "23/09/2022")
copies = Copy.find_or_create_by(book_id: 2, borrower: "Zak", due_date: "27/09/2022")
