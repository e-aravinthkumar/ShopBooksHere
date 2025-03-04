import { Location } from '@angular/common';
import { Component } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Subscription } from 'rxjs';
import { BooksService } from 'src/app/services/books.service';
import { Book } from 'src/app/models';

@Component({
  selector: 'app-books-list',
  templateUrl: './books-list.component.html',
  styleUrls: ['./books-list.component.css']
})
export class BooksListComponent {
  
  books: Book[] = [];
  category?: string | null;
  subscription? : Subscription;

  constructor(private booksService: BooksService, private route: ActivatedRoute, private location:Location){
  }

  goBack() {
    this.location.back()
  }

  ngOnInit(){
    this.category = this.route.snapshot.paramMap.get('category');

    if(this.category){
      this.subscription = this.booksService.getBooks({category: this.category}).subscribe((books:Book[])=>{
        this.books = books;        
      })
    }
    if(!this.category)
      this.subscription =  this.booksService.getBooks().subscribe((books:Book[])=>{
        this.books = books;        
      })
  }

  ngOnDestroy(){
    this.subscription?.unsubscribe();
    console.log('destroyed book-list component');
    
  }

}
