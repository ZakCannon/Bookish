# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

books = Book.find_or_create_by(title: "The Picture of Dorian Gray", author: "Oscar Wilde", isbn: "9780141439570", genre: "Classics", description: "Oscar Wilde’s only novel is the dreamlike story of a young man who sells his soul for eternal youth and beauty.

In this celebrated work Wilde forged a devastating portrait of the effects of evil and debauchery on a young aesthete in late-19th-century England. Combining elements of the Gothic horror novel and decadent French fiction, the book centers on a striking premise: As Dorian Gray sinks into a life of crime and gross sensuality, his body retains perfect youth and vigor while his recently painted portrait grows day by day into a hideous record of evil, which he must keep hidden from the world. For over a century, this mesmerizing tale of horror and suspense has enjoyed wide popularity. It ranks as one of Wilde's most important creations and among the classic achievements of its kind.")
books = Book.find_or_create_by(title: "The Bell Jar", author: "Sylvia Plath", isbn: "9780571226160", genre: "Classics", description: "The Bell Jar chronicles the crack-up of Esther Greenwood: brilliant, beautiful, enormously talented, and successful, but slowly going under—maybe for the last time. Sylvia Plath masterfully draws the reader into Esther's breakdown with such intensity that Esther's insanity becomes completely real and even rational, as probable and accessible an experience as going to the movies. Such deep penetration into the dark and harrowing corners of the psyche is an extraordinary accomplishment and has made The Bell Jar a haunting American classic.")
books = Book.find_or_create_by(title: "Animal Farm", author: "George Orwell", isbn: "9780452284241", genre: "Classics", description: "A farm is taken over by its overworked, mistreated animals. With flaming idealism and stirring slogans, they set out to create a paradise of progress, justice, and equality. Thus the stage is set for one of the most telling satiric fables ever penned –a razor-edged fairy tale for grown-ups that records the evolution from revolution against tyranny to a totalitarianism just as terrible.")
books = Book.find_or_create_by(title: "The Great Gatsby", author: "F. Scott Fitzgerald", isbn: "9780684801520", genre: "Classics", description: "This exemplary novel of the Jazz Age has been acclaimed by generations of readers. The story of the fabulously wealthy Jay Gatsby and his love for the beautiful Daisy Buchanan, of lavish parties on Long Island at a time when The New York Times noted \"gin was the national drink and sex the national obsession,\" it is an exquisitely crafted tale of America in the 1920s.")
books = Book.find_or_create_by(title: "The Metamorphosis", author: "Franz Kafka", isbn: "9780141023458", genre: "Classics", description: "With it's startling, bizarre, yet surprisingly funny first opening, Kafka begins his masterpiece, The Metamorphosis. It is the story of a young man who, transformed overnight into a giant beetle-like insect, becomes an object of disgrace to his family, an outsider in his own home, a quintessentially alienated man. A harrowing—though absurdly comic—meditation on human feelings of inadequacy, guilt, and isolation, The Metamorphosis has taken its place as one of the most widely read and influential works of twentieth-century fiction.")

copies = Copy.find_or_create_by(book_id: 1, borrower: "", due_date: "")
copies = Copy.find_or_create_by(book_id: 2, borrower: "", due_date: "")
copies = Copy.find_or_create_by(book_id: 3, borrower: "", due_date: "")
copies = Copy.find_or_create_by(book_id: 4, borrower: "", due_date: "")
copies = Copy.find_or_create_by(book_id: 5, borrower: "", due_date: "")

copies = Copy.find_or_create_by(book_id: 1, borrower: "Zak", due_date: "26/09/2022")
copies = Copy.find_or_create_by(book_id: 1, borrower: "Aga", due_date: "23/09/2022")
copies = Copy.find_or_create_by(book_id: 1, borrower: "Ralf", due_date: "27/09/2022")
copies = Copy.find_or_create_by(book_id: 2, borrower: "Natasha", due_date: "23/09/2022")
copies = Copy.find_or_create_by(book_id: 2, borrower: "Zak", due_date: "27/09/2022")
