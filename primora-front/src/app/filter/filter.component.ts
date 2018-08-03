import { Component, OnInit } from '@angular/core';
import { HttpService } from 'src/services/http.service';

@Component({
  selector: 'app-filter',
  templateUrl: './filter.component.html',
  styleUrls: ['./filter.component.css'],
  providers: [HttpService]
})
export class FilterComponent implements OnInit {
  public categorie;
  public mensualite;
  public duree;
  public prix_max;
  public prix_min;

  constructor(private _http: HttpService) { 
    this.categorie = _http.get('url');
  }
  
  ngOnInit() {
    
  }

}
