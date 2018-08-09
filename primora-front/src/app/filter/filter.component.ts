import { Component, OnInit } from '@angular/core';
import { HttpService } from 'src/services/http.service';

@Component({
  selector: 'app-filter',
  templateUrl: './filter.component.html',
  styleUrls: ['./filter.component.css'],
  providers: [HttpService]
})
export class FilterComponent implements OnInit {
  categorie = [
    {
      uuid: '-',
      nom: 'Type de produit'
    }, {
      uuid: '128628c0-9a15-11e8-a0ed-0024d7ada560',
      nom: 'Voiture'
    }, {
      uuid: '996324e6-9a37-11e8-9aac-402cf41335ad',
      nom: 'Maison'
    }, {
      uuid: 'c6e5a3c0-9a33-11e8-9aac-402cf41335ad',
      nom: 'Terrain'
    }
  ];

  mensualite = [
    {
      value: '-',
      nom: 'Mensualité'
    }, {
      value: '1000000',
      nom: '1 000 000 Ar/mois'
    }, {
      value: '2000000',
      nom: '2 000 000 Ar/mois'
    }, {
      value: '3000000',
      nom: 'Terrain'
    }
  ];

  duree = [
    {
      value: '-',
      nom: 'Durée'
    }, {
      value: '1',
      nom: '1 mois'
    }, {
      value: '2',
      nom: '2 mois'
    }, {
      value: '3',
      nom: '3 mois'
    }
  ];

  formData = {
    categorie: '-',
    mensualite: '-',
    duree: '-',
  };


  constructor(private _http: HttpService) {

  }

  ngOnInit() {

  }

  search() {
    console.log(this.formData);
  }

}
