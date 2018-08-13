import { Component, OnInit } from '@angular/core';
import {  FileUploader, FileSelectDirective } from 'ng2-file-upload/ng2-file-upload';
import { config } from '../../config';

@Component({
  selector: 'app-upload-file',
  templateUrl: './upload-file.component.html',
  styleUrls: ['./upload-file.component.css']
})
export class UploadFileComponent implements OnInit {
  public uploader: FileUploader = new FileUploader({url: config.url, itemAlias: 'photo'});

  constructor() { }

  ngOnInit() {
  }

}
