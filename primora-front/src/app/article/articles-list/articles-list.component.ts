import { Component, OnInit } from '@angular/core';
import {HttpService} from "../../../services/http.service";
import { ArticleService } from '../../../services/article.service';
import { Article } from '../../../models/article';

@Component({
  selector: 'app-articles-list',
  inputs: ['list'],
  templateUrl: './articles-list.component.html',
  styleUrls: ['./articles-list.component.css']
})
export class ArticlesListComponent implements OnInit {
  public listeArticles: Array<Article>;
  public list: string;

  constructor(
    private http: HttpService,
    private articleservice: ArticleService
  ) {
    this.listeArticles = [];
  }

  ngOnInit() {
    const service = this.list === 'latest'?
      this.articleservice.getArticlesLastest():
      this.articleservice.getArticlesLastest();

    service.subscribe(articles => {
        this.listeArticles = articles.items;
      });
  }

}
