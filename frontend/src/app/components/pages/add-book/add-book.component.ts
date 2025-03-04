import { Component } from '@angular/core';
import { FormGroup, FormArray, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';
import { Book } from 'src/app/models';
import { BooksService } from 'src/app/services/books.service';

@Component({
  selector: 'app-add-book',
  templateUrl: './add-book.component.html',
  styleUrls: ['./add-book.component.css']
})
export class AddBookComponent {

  bookForm!: FormGroup;
  imageUrls!: FormArray;

  constructor(
    private router: Router,
    private fb: FormBuilder,
    private booksService: BooksService,
    private toastr: ToastrService
  ) {
    this.bookForm = this.fb.group({
      name: ['', Validators.required],
      author: ['', Validators.required],
      publisher: ['', Validators.required],
      pages: ['', Validators.required],
      category: ['', Validators.required],
      price: ['', Validators.required],
      description: ['', Validators.required],
      language: ['', Validators.required],
      imageUrls: this.fb.array([], [Validators.required, Validators.maxLength(4)])
    });
  }

  ngOnInit() {
    this.imageUrls = this.bookForm.get('imageUrls') as FormArray;
  }
  
  onSubmit(book: Book) {
    this.booksService.createBook(book).subscribe((response: any) => {
      this.toastr.success('Book created successfully.', 'Success');
      const createdBook = response.book;
      this.router.navigate(['/book-details', createdBook.id]); // Navigate to book-details/:id on successful submission
    }, (error) => {
      console.error('Error creating book:', error);
      this.toastr.error('Error creating book.', 'Error');
    });
  }
  
  
}
