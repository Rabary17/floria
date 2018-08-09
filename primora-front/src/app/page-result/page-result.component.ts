import { Component, OnInit } from '@angular/core';
import {ArticleService} from "../../services/article.service";
import {ActivatedRoute, ParamMap, Router} from "@angular/router";
import {switchMap} from "rxjs/internal/operators";

@Component({
  selector: 'app-page-result',
  templateUrl: './page-result.component.html',
  styleUrls: ['./page-result.component.css']
})
export class PageResultComponent implements OnInit {
  data: object;

  constructor(
    private articleService: ArticleService,
    private route: ActivatedRoute,
    private router: Router
  ) { }

  ngOnInit() {
    this.route.params.subscribe(params => {
      try {
        const data = JSON.parse(atob(params.data));
        this.search(data);
      } catch(e) {
        // raf
        // todo previous
      }
    });
  }

  search(data) {
    this.articleService.getArticlesBy(data)
      .subscribe(articles => {
        console.log(articles);
      });
  }

}
