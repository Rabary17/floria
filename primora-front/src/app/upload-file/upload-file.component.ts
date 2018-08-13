import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import {  FileUploader, FileSelectDirective } from 'ng2-file-upload/ng2-file-upload';
import { config } from '../../config';

@Component({
  selector: 'app-upload-file',
  templateUrl: './upload-file.component.html',
  styleUrls: ['./upload-file.component.css']
})
export class UploadFileComponent implements OnInit {
  @Output() uploadChanged: EventEmitter<Array<string>> = new EventEmitter();

  public uploader: FileUploader = new FileUploader({url: config.url + '/medias', itemAlias: 'photo'});
  public uploadedFiles: Array<string> = [];

  constructor() { }

  ngOnInit() {
    this.uploader.onCompleteItem = (item: any, response: any, status: any, headers: any) => {
      const file = JSON.parse(response);
      this.uploadedFiles.push(file.filename);
      this.uploadChanged.emit(this.uploadedFiles);
    };
  }

}
