import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import {  FileUploader, FileSelectDirective } from 'ng2-file-upload/ng2-file-upload';
import { config } from '../../config';
import {FileItem} from "ng2-file-upload";
import {MediaService} from "../../services/media.service";

@Component({
  selector: 'app-upload-file',
  templateUrl: './upload-file.component.html',
  styleUrls: ['./upload-file.component.css']
})
export class UploadFileComponent implements OnInit {
  @Output() uploadChanged: EventEmitter<Array<string>> = new EventEmitter();

  public uploader: FileUploader = new FileUploader({url: config.url + '/medias', itemAlias: 'photo'});
  public uploadedFiles: Array<string> = [];

  constructor(
    private mediaService: MediaService
  ) { }

  ngOnInit() {
    this.uploader.onAfterAddingFile = (item: FileItem) => {
      item.upload();
    };
    this.uploader.onCompleteItem = (item: any, response: any, status: any, headers: any) => {
      const file = JSON.parse(response);
      item.filename = file.filename;
      this.uploadedFiles.push(file.filename);
      this.uploadChanged.emit(this.uploadedFiles);
    };
  }

  remove(item: any) {
    const filename = item.filename;
    const index = this.uploadedFiles.indexOf(filename);
    if (index !== -1) {
      // remove from server
      this.mediaService.remove(filename).subscribe(() => {
        item.remove();
        this.uploadedFiles.splice(index, 1);
        this.uploadChanged.emit(this.uploadedFiles);
      });
    }
  }

  barColor(progression) {
    if(progression === 100) return 'primary';
    else return 'warn';
  }
}
