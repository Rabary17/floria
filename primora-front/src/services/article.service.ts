import { Injectable } from '@angular/core';
//import { HttpService } from './http.service';
import { map } from 'rxjs/operators';
import {config} from './config';
import { HttpClient } from '@angular/common/http';


@Injectable({
    providedIn: 'root'
  })
export class ArticleService{
	
    public url;

	constructor(
		private _http: HttpClient
	){
       this.url = config.url;
	}

	getArticlesPinned(){
		//let params = "authorization="+token;
		//const params = `authorization=${token}`;
		//const header = new Headers({'Content-Type':'application/x-www-form-urlencoded'});
		
		return this._http.get(`${this.url}/articles/pinned`)
                         .pipe(map(res=>res));
	}

	getArticlesLast(){
		//let params = "authorization="+token;
		//const params = `authorization=${token}`;
		//const header = new Headers({'Content-Type':'application/x-www-form-urlencoded'});
		
		return this._http.get(`${this.url}/articles/latest`)
                         .pipe(map(res=>res));
	}

	getArticlesDetails(id){
		//let params = "authorization="+token;
		//const params = `authorization=${token}`;
		//const header = new Headers({'Content-Type':'application/x-www-form-urlencoded'});
		
		return this._http.get(`${this.url}/article/${id}`)
                         .pipe(map(res=>res));
	}
}