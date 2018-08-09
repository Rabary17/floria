import { Component, OnInit } from '@angular/core';
import { Article } from '../../../models/article';

@Component({
  selector: 'app-article-thumb',
  inputs: ['article'],
  templateUrl: './article-thumb.component.html',
  styleUrls: ['./article-thumb.component.css']
})
export class ArticleThumbComponent implements OnInit {
  public article: Article;
  constructor() {
  }

  ngOnInit() {
  }

}
