import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AddBookComponent } from './components/pages/add-book/add-book.component';
import { BookDetailsComponent } from './components/pages/book-details/book-details.component';
import { BooksListComponent } from './components/pages/books-list/books-list.component';
import { EditBookComponent } from './components/pages/edit-book/edit-book.component';
import { HomeComponent } from './components/pages/home/home.component';
import { ManageBooksComponent } from './components/pages/manage-books/manage-books.component';
import { PageNotFoundComponent } from './components/pages/page-not-found/page-not-found.component';

const routes: Routes = [
  {path:'', component:HomeComponent},
  {path:'books-list', component: BooksListComponent},
  {path:'books-list/:category', component:BooksListComponent},
  {path:'book-details/:id', component: BookDetailsComponent},
  {path:'edit-book/:id', component:EditBookComponent},
  {path:'manage-books', component:ManageBooksComponent},
  {path:'add-book', component:AddBookComponent},
  {path:'**', component: PageNotFoundComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
