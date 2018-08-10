import { Component, OnInit } from '@angular/core';
import {HttpService} from "../../../services/http.service";
import { ArticleService } from '../../../services/article.service';
import { Article } from '../../../models/article';

@Component({
  selector: 'app-articles-list',
  inputs: ['list', 'apiurl'],
  templateUrl: './articles-list.component.html',
  styleUrls: ['./articles-list.component.css']
})
export class ArticlesListComponent implements OnInit {
  public listeArticles: Array<Article>;
  public list: string;
  public apiurl: string;

  constructor(
    private http: HttpService,
    private articleservice: ArticleService
  ) {
    this.listeArticles = [];
  }

  ngOnInit() {
    this.load();
  }

  load() {
    let service = null;
    if(this.list === 'latest') {
      service = this.articleservice.getArticlesLastest()
    } else if(this.list === 'pinned') {
      service = this.articleservice.getArticlesLastest();
    } else if(this.list === 'custom') {
      service = this.articleservice.getArticlesFromUrl(this.apiurl);
    }
    service.subscribe(articles => {
      this.listeArticles = articles.items;
    });
  }

}
