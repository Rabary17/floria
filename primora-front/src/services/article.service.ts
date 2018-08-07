import { Injectable } from '@angular/core';
//import { HttpService } from './http.service';
import { map } from 'rxjs/operators';
import {config} from './config';
import { HttpClient } from '@angular/common/http';


@Injectable({
    providedIn: 'root'
  })
export class ArticleService{
    public apiUrl;
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
		
		return this._http.get(`${this.url}/article/pinned`)
                         .pipe(map(res=>res));
	}
}