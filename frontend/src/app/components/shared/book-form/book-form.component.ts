import { Component, Input, Output, EventEmitter } from '@angular/core';
import { FormArray, FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Book } from 'src/app/models';

@Component({
  selector: 'app-book-form',
  templateUrl: './book-form.component.html',
  styleUrls: ['./book-form.component.css']
})
export class BookFormComponent {
  @Input() bookForm!: FormGroup;
  @Input() imageUrls!: FormArray;
  @Output() formSubmit: EventEmitter<Book> = new EventEmitter<Book>();

  constructor(private fb: FormBuilder,){ }

  addImageUrl() {
    const imageUrls = this.bookForm.get('imageUrls') as FormArray;
    if (imageUrls.length < 4) {
      imageUrls.push(this.fb.control('', [Validators.required, Validators.pattern('^https?://.+')])); // URL pattern validation
    }
  }

  removeImageUrl(index: number) {
    const imageUrls = this.bookForm.get('imageUrls') as FormArray;
    imageUrls.removeAt(index);
  }
  
  onSubmit() {
    if (this.bookForm.invalid) {
      this.bookForm.markAllAsTouched();
      return;
    }
    const book: Book = this.bookForm.value as Book
    this.formSubmit.emit(book); // Emit the form submission event
  }
}
