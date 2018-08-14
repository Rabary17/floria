import { Injectable } from '@angular/core';
import { map } from 'rxjs/operators';
import {HttpService} from './http.service';

@Injectable({
    providedIn: 'root'
  })
export class ArticleService{
	constructor(
		private http: HttpService
	){

	}

	getArticlesPinned(){
		return this.getArticlesFromUrl('/articles/pinned');
	}

	getArticlesLastest(){
		return this.getArticlesFromUrl('/articles/latest');
	}

  getArticlesFromUrl(url) {
    return this.http
      .get(url);
  }

	getArticlesDetails(id){
		return this.http
      .get(`/article/${id}`);
	}

}
