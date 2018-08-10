import { Component, OnInit, Input, ViewChild } from '@angular/core';
import {ArticleService} from "../../services/article.service";
import {ActivatedRoute, Router} from "@angular/router";
import { ArticlesListComponent }  from '../article/articles-list/articles-list.component';

@Component({
  selector: 'app-page-result',
  templateUrl: './page-result.component.html',
  styleUrls: ['./page-result.component.css']
})
export class PageResultComponent implements OnInit {
  @ViewChild(ArticlesListComponent)
  private articleList: ArticlesListComponent;

  searchurl: string;

  constructor(
    private articleService: ArticleService,
    private route: ActivatedRoute,
    private router: Router
  ) {
    this.searchurl = '';
  }

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
    const params = btoa(JSON.stringify(data));
    this.searchurl = `/articles/search/${params}`;
    this.articleList.load(this.searchurl);
  }

}
