import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';


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

  get(url:string) {
    return this.http.get(url);
  }

  post(url:string, data:object) {
    return this.http.post<object>(url, data, {
      headers: this.headers
    });
  }

}
