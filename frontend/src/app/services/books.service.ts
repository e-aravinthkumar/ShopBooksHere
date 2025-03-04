import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http'
import { Observable, catchError, filter, map, throwError } from 'rxjs';
import { Book } from '../models';

@Injectable({
  providedIn: 'root'
})
export class BooksService {

  private apiUrl = 'http://localhost:3000';

  constructor(private http: HttpClient) { }

  getBooks(filters?:{language?:string, category?:string}): Observable<Book[]> {
    return this.http.get<Book[]>(`${this.apiUrl}/books`).pipe(
      map(books =>{
        if(filters){
          if(filters.category)
          return books.filter(book=>book.category === filters.category)
          else if(filters.language)
          return books.filter(book=>book.language === filters.language)
          else if(filters.category && filters.language)
          return books.filter(book=> book.category === filters.category && book.language === filters.language)
          else return books
        }
        else{
          return books
        }
      }),
        catchError((error: any) => {
          console.error('Error getting books:', error);
          return throwError('An error occurred while getting the books.');
        })
    )
  }

  getBookById(id: number): Observable<Book> {
    return this.http.get<Book>(`${this.apiUrl}/books/${id}`)
    .pipe(
      catchError((error: any) => {
        console.error('Error getting book:', error);
        return throwError('An error occurred while getting the book.');
      })
    ); 
  }

  createBook(book: Book): Observable<any> {
    return this.http.post(`${this.apiUrl}/books`, book)
    .pipe(
      catchError((error: any) => {
        console.error('Error creating book:', error);
        return throwError('An error occurred while creating the book.');
      })
    ); 
  }

  updateBook(id: number, book: Book): Observable<any> {
    return this.http.put(`${this.apiUrl}/books/${id}`, book)
    .pipe(
      catchError((error: any) => {
        console.error('Error updating book:', error);
        return throwError(new Error('An error occurred while updating the book.'));
      })
    ); 
  }

  deleteBook(id: number): Observable<void> {
    return this.http.delete<void>(`${this.apiUrl}/books/${id}`)
      .pipe(
        catchError((error: any) => {
          console.error('Error deleting book:', error);
          return throwError('An error occurred while deleting the book.');
        })
      ); 
  }

}

