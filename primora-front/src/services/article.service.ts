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
		return this.http
      .get('/articles/pinned')
      .pipe(map(res=>res));
	}

	getArticlesLastest(){
		return this.http
      .get('/articles/latest');
	}

	getArticlesDetails(id){
		return this.http
      .get('/article/${id}')
      .pipe(map(res=>res));
	}

	getArticlesBy(data) {
    return this.http
      .get(`/articles/search/${data.categorie}/${data.mensualite}/${data.prix_min}/${data.prix_max}`);
  }
}
