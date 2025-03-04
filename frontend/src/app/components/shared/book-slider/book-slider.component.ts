import { Component, Input } from '@angular/core';
import { Observable, Subscription, filter, map } from 'rxjs';
import { BooksService } from 'src/app/services/books.service';
import { Book } from 'src/app/models';
import { SwiperOptions } from 'swiper';

@Component({
  selector: 'app-book-slider',
  templateUrl: './book-slider.component.html',
  styleUrls: ['./book-slider.component.css']
})
export class BookSliderComponent {
  @Input('bookCategory') bookCategory!: string;
  @Input() books: Book[] = [];

  config: SwiperOptions = {
    slidesPerView: 'auto',
    spaceBetween: 15,
    centeredSlides: false,
  };
}
