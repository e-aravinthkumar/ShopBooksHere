import { Component, OnInit, OnDestroy } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { BooksService } from 'src/app/services/books.service';
import { Book } from 'src/app/models';
import SwiperCore, { SwiperOptions, Pagination } from 'swiper';
import { Location, ViewportScroller } from '@angular/common';
import { Subscription } from 'rxjs';
 SwiperCore.use([Pagination]);
 @Component({
  selector: 'app-book-details',
  templateUrl: './book-details.component.html',
  styleUrls: ['./book-details.component.css']
})
export class BookDetailsComponent implements OnInit, OnDestroy {
  book?: Book;
  private subscription?: Subscription;
   constructor(
    private location: Location,
    private route: ActivatedRoute,
    private bookService: BooksService,
    private viewportScroller: ViewportScroller
  ) { }
   ngOnInit() {
    // Get the book ID from the route parameters
    const bookId = this.route.snapshot.paramMap.get('id');
     // Fetch the book details from the service based on the ID
    if (bookId) {
      this.subscription = this.bookService.getBookById(parseInt(bookId)).subscribe(
        (book: Book) => {
          this.book = book;
        },
        (error) => {
          // Handle error appropriately
          this.book = undefined
          console.error(error);
        }
      );
    }
    // Scroll to the top of the page
    this.viewportScroller.scrollToPosition([0, 0]);
  }
   ngOnDestroy() {
    // Unsubscribe from the book service subscription
    this.subscription?.unsubscribe();
    console.log('destroyed book-details component');  
  }

  goBack(){
    this.location.back()   
  }

  shareCurrentPage(): void {
    if (navigator.share) {
      navigator.share({
        title: document.title,
        url: window.location.href
      })
        .then(() => console.log('Sharing successful'))
        .catch((error) => console.log('Error sharing:', error));
    } else {
      console.log('Native share not supported');
      // Provide an alternative sharing method or fallback option
    }
  }

  // Swiper configuration options
  config: SwiperOptions = {
    slidesPerView: 1,
    spaceBetween: 2,
    centeredSlides: false,
  };
}