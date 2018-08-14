import { Component, OnInit } from '@angular/core';
import { Article } from '../../../models/article';
import { config } from '../../../config';
import {MediaService} from "../../../services/media.service";

@Component({
  selector: 'app-article-thumb',
  inputs: ['article'],
  templateUrl: './article-thumb.component.html',
  styleUrls: ['./article-thumb.component.css']
})
export class ArticleThumbComponent implements OnInit {
  public article: Article;
  constructor(
    private mediaService: MediaService
  ) {
  }

  ngOnInit() {
  }

  getImage(file) {
    return this.mediaService.getImage(file);
  }
}
