import { Library } from "../sealed/library";

export class User {
   
     constructor() {
        this.books = [];
        this.library = new Library();
    };

    borrow(book, library) {
        this.books.push(book);

        this.library = library;
        this.library.removeBook(book);
    };

    hasBook(book) {
        return this.books.includes(book);
    };

    return(book, library) {
        if (this.books.includes(book)) {
            this.books.removeBook(book);
            
            this.library = library;
            this.library.addBook(book);

            return true;
        } else {
            return false;
        }
    };

    getBookNames() {
        const borrowedBooks = [...this.books];

        return borrowedBooks;
    };
}