import { Injectable } from '@angular/core';
import {config} from "../config";
import {HttpService} from "./http.service";
import {map} from "rxjs/operators";

@Injectable({
  providedIn: 'root'
})
export class MediaService {
  constructor(
    private http: HttpService
  ) {

  }

  getImage(file) {
    return `${config.url}/medias/${file}`;
  }

  remove(file) {
    return this.http.delete(`/medias/${file}`);
  }

}
