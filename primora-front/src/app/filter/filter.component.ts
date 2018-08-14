import { Component, OnInit } from '@angular/core';
import { HttpService } from 'src/services/http.service';
import {ActivatedRoute, Router} from "@angular/router";
import {MatGridListModule} from '@angular/material/grid-list';

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
      nom: '3 000 000 Ar/mois'
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
    prix_min: '-',
    prix_max: '-'
  };

  constructor(
    private route: ActivatedRoute,
    private router: Router
  ) {
  }

  ngOnInit() {
  }

  search() {
    this.router.navigate(['result/' + btoa(JSON.stringify(this.formData)) ]);
  }

}
