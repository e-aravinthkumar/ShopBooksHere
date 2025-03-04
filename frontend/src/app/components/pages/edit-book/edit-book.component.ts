import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { FormArray, FormBuilder, FormGroup, Validators } from '@angular/forms';
import { BooksService } from 'src/app/services/books.service';
import { Book } from 'src/app/models';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-edit-book',
  templateUrl: './edit-book.component.html',
  styleUrls: ['./edit-book.component.css']
})
export class EditBookComponent implements OnInit {
  bookForm!: FormGroup;
  imageUrls!: FormArray;

  constructor(
    private route: ActivatedRoute,
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

    this.route.paramMap.subscribe(params => {
      const id = Number(params.get('id'));
      this.booksService.getBookById(id).subscribe(book => {
        this.bookForm.patchValue(book);  
        this.imageUrls.clear(); // Clear the existing form array
        book.imageUrls.forEach(url => {
          this.imageUrls.push(this.fb.control(url, [Validators.required, Validators.pattern('^https?://.+')])); // URL pattern validation
        });
      });
    });
  }
  
  onSubmit(book: Book) {
    const id = Number(this.route.snapshot.paramMap.get('id'));
    this.booksService.updateBook(id, book).subscribe(() => {
      this.toastr.success('Book updated successfully.', 'Success');
      this.router.navigate(['/book-details', id]); 
    });
  }

}
