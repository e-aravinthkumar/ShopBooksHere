import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { BooksService } from 'src/app/services/books.service';
import { Book } from 'src/app/models';


@Component({
  selector: 'app-manage-books',
  templateUrl: './manage-books.component.html',
  styleUrls: ['./manage-books.component.css'],
})
export class ManageBooksComponent {
  books: Book[] = [];
  // pagedBooks: Book[] = [];
  currentPage: number = 1;
  // itemsPerPage: number = 5;
  // totalPages: number = 1;
  // totalBooks? : number;
  // itemsPerPageOptions: number[] = [5, 10, 15, 20];
  constructor(private booksService: BooksService, private router: Router) { }

  ngOnInit(): void {
    this.loadBooks();
  }

  loadBooks(): void {
    this.booksService.getBooks().subscribe((data: Book[]) => {
      this.books = data;
      // this.totalBooks = this.books.length
      // this.totalPages = Math.ceil(this.totalBooks / this.itemsPerPage);
      // this.updatePagedBooks();
    });
  }

  // updatePagedBooks(): void {
  //   const startIndex = (this.currentPage - 1) * this.itemsPerPage;
  //   const endIndex = startIndex + this.itemsPerPage;
  //   this.pagedBooks = this.books.slice(startIndex, endIndex);
  // }

  // nextPage(): void {
  //   if (this.currentPage < this.totalPages) {
  //     this.currentPage++;
  //     this.updatePagedBooks();
  //   }
  // }

  // previousPage(): void {
  //   if (this.currentPage > 1) {
  //     this.currentPage--;
  //     this.updatePagedBooks();
  //   }
  // }

  // changeItemsPerPage(): void {
  //   this.currentPage = 1;
  //   this.totalPages = Math.ceil(this.books.length / this.itemsPerPage);
  //   this.updatePagedBooks();
  // }
  
  

  deleteBook(bookId: number): void {  
      this.booksService.deleteBook(bookId).subscribe(
        () => {
          alert(`Book with ID: ${bookId} has been deleted successfully.`);
          this.loadBooks(); // Reload the books after deletion
        },
        (error: any) => {
          console.error('Error deleting book:', error);
        }
      );
  }
  
  editBook(bookId: number): void {
    this.router.navigate(['/edit-book', bookId]);
  }

  addBook(): void {
    this.router.navigate(['/add-book']);
  }
}
