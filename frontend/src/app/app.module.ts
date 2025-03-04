import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoutingModule } from './app-routing.module';
import { HttpClientModule } from '@angular/common/http';
import { SwiperModule } from 'swiper/angular';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { ToastrModule } from 'ngx-toastr';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import {NgxPaginationModule} from 'ngx-pagination';

import { AppComponent } from './app.component';
import { HeaderComponent } from './components/layouts/header/header.component';
import { FooterComponent } from './components/layouts/footer/footer.component'
import { BooksListComponent } from './components/pages/books-list/books-list.component';
import { ManageBooksComponent } from './components/pages/manage-books/manage-books.component';
import { EditBookComponent } from './components/pages/edit-book/edit-book.component';
import { AddBookComponent } from './components/pages/add-book/add-book.component';
import { PageNotFoundComponent } from './components/pages/page-not-found/page-not-found.component';
import { HomeComponent } from './components/pages/home/home.component';
import { BookDetailsComponent } from './components/pages/book-details/book-details.component';
import { BookSliderComponent } from './components/shared/book-slider/book-slider.component';
import { BookFormComponent } from './components/shared/book-form/book-form.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    ManageBooksComponent,
    EditBookComponent,
    AddBookComponent,
    PageNotFoundComponent,
    HomeComponent,
    BookDetailsComponent,
    BooksListComponent,
    BookSliderComponent,
    BookFormComponent,

  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    SwiperModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    BrowserAnimationsModule,
    NgxPaginationModule,
    ToastrModule.forRoot({
      timeOut: 3000,
      positionClass: 'toast-top-right',
      preventDuplicates: true,
    })
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
