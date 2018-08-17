import { Component, OnInit } from '@angular/core';
import {ArticleService} from "../../services/article.service";
import {ActivatedRoute, Router} from "@angular/router";

@Component({
  selector: 'app-simple-search',
  templateUrl: './simple-search.component.html',
  styleUrls: ['./simple-search.component.css']
})
export class SimpleSearchComponent implements OnInit {
  public searchText: string = '';

  constructor(
    private articleservice: ArticleService,
    private route: ActivatedRoute,
    private router: Router
  ) { }

  ngOnInit() {
  }

  search(event: any) {
    if(event) {
      if (event.keyCode === 13 && event.target.value) {
        this.router.navigate(['result/' + btoa(JSON.stringify({
          term: event.target.value
        }))]);
      }
    } else {
      this.router.navigate(['result/' + btoa(JSON.stringify({
        term: this.searchText
      }))]);
    }
  }
}
