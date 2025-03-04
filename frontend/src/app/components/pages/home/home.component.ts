import { Component } from '@angular/core';
import { Subscription } from 'rxjs';
import { map } from 'rxjs/operators';
import { BooksService } from 'src/app/services/books.service';
import { Book } from 'src/app/models';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent {
  booksByCategory: { [category: string]: Book[] } = {};
  uniqueCategories?: string[]
  constructor(private bookService: BooksService) {}

  ngOnInit() {
    this.bookService
      .getBooks()
      .subscribe((books: Book[]) => {
        this.uniqueCategories = [...new Set(books.map((book) => book.category))];
        this.uniqueCategories.forEach((category: string) => {
          this.booksByCategory[category] = books.filter((book) => book.category === category);
        });
      });
  }
}
