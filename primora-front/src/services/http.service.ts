import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import {Observable} from "rxjs/index";
import { config } from '../config';

@Injectable({
  providedIn: 'root'
})
export class HttpService {
  headers: HttpHeaders;

  constructor(private http: HttpClient) {
    this.headers = new HttpHeaders({
      'Content-Type':  'application/json',
      'Accept': 'q=0.8;application/json;q=0.9'
      //'Authorization': 'my-auth-token'
    })
  }

  // TODO gestion centralisé des erreurs ici
  // TODO centralisation jwt token

  get(url:string): Observable<any> {
    return this.http.get(config.url + url);
  }

  post(url:string, data:object) {
    return this.http.post<object>(url, data, {
      headers: this.headers
    });
  }

}
