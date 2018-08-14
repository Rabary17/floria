import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, ParamMap } from '@angular/router';
//import {HttpService} from "../../../services/http.service";
import { HttpClient } from '@angular/common/http';
import { ArticleService } from '../../../services/article.service';

@Component({
  selector: 'app-article-detail',
  templateUrl: './article-detail.component.html',
  styleUrls: ['./article-detail.component.css']
})
export class ArticleDetailComponent implements OnInit {
  id: number;
  private sub: any;
  private article;
  /*constructor(private route: ActivatedRoute,
              private http: HttpClient) {

   }*/
  fiche = [];
  jsonFiche = {};
  keyFiche = [];

  constructor(
    private articleService: ArticleService, 
    private route: ActivatedRoute
  ) { }

  ngOnInit() {
     this.sub = this.route.params.subscribe(params => {
       this.id = params['id'];
       this.articleService.getArticlesDetails(this.id).subscribe(article => {
        this.fiche = article.fiche;
        //this.jsonFiche = JSON.stringify(this.fiche);
        //console.log(Object.keys(article));
        //console.log(typeof(this.jsonFiche));
        //console.log(Object.keys(this.fiche)[0]);// donne annee
        this.keyFiche = Object.keys(this.fiche);
        console.log(this.fiche);
       });
    });
  }

}
