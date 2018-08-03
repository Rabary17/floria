import { Component, OnInit } from '@angular/core';
import { HttpService } from 'src/services/http.service';

@Component({
  selector: 'app-filter',
  templateUrl: './filter.component.html',
  styleUrls: ['./filter.component.css'],
  providers: [HttpService]
})
export class FilterComponent implements OnInit {

  constructor(private _http: HttpService) { 

  }

  ngOnInit() {

  }

}
