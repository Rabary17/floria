import { Injectable } from '@angular/core';
import {HttpService} from './http.service';

@Injectable({
  providedIn: 'root'
})
export class CategorieService {

  constructor(
    private http: HttpService
  ){

  }

  getAll(){
    return this.http.get('/categories');
  }
  save(data) {
    return this.http.post('/article', data);
  }
  getByUuid(uuid){
    return this.http.get(`/categories/${uuid}`);
  }
}
