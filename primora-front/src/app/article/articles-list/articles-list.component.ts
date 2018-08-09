import { Component, OnInit } from '@angular/core';
//import {HttpService} from "../../../services/http.service";
import { HttpClient } from '@angular/common/http';
import { Article } from '../../../models/article';

@Component({
  selector: 'app-articles-list',
  inputs: ['apiurl'],
  templateUrl: './articles-list.component.html',
  styleUrls: ['./articles-list.component.css']
})
export class ArticlesListComponent implements OnInit {
  public listeArticles: Array<Article>;
  public apiurl: string;

  constructor(private http: HttpClient) {
    this.listeArticles = [];
  }

  ngOnInit() {
    console.log('article list component'+this.apiurl);
    // this.http.get(this.apiurl).then(listeArticles => {
    //   this.listeArticles = <Array<Article>> listeArticles.items;
    // });
  }

}
