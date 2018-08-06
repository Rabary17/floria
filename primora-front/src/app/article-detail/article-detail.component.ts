import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, ParamMap } from '@angular/router';
import {HttpService} from "../../services/http.service";

@Component({
  selector: 'app-article-detail',
  templateUrl: './article-detail.component.html',
  styleUrls: ['./article-detail.component.css']
})
export class ArticleDetailComponent implements OnInit {
  id: number;
  private sub: any;
  private article;
  constructor(private route: ActivatedRoute,
              private http: HttpService) {

   }

  ngOnInit() {
    this.sub = this.route.params.subscribe(params => {
      this.id = +params['id'];
      console.log(this.id);
      this.http.get('article/' + this.id).then(detailArticle => {
        this.article = detailArticle;
        console.log(this.article);
      });

   });
  }

}
