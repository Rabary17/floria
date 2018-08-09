import { Component, OnInit } from '@angular/core';
import {ArticleService} from '../../services/article.service';

@Component({
  selector: 'app-page-home',
  templateUrl: './page-home.component.html',
  styleUrls: ['./page-home.component.css']
})
export class PageHomeComponent implements OnInit {
  public articleLast;
  public articlePinned;

  constructor(private service: ArticleService) {
    this.articlePinned = [];
  }

  ngOnInit() {
    this.getAllArticlePinned();
  }
	getAllArticlePinned(){
			this.service.getArticlesPinned().subscribe(
				response => {
				  this.articlePinned = response;
				},
				error => {
					console.log(<any>error);
				}
			);
	}

}
