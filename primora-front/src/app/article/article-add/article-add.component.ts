import { Component, OnInit } from '@angular/core';
import { CategorieService } from '../../../services/categorie.service';

@Component({
  selector: 'app-article-add',
  templateUrl: './article-add.component.html',
  styleUrls: ['./article-add.component.css']
})
export class ArticleAddComponent implements OnInit {
  categories = [];
  fiche = [];

  formData = {
    titre: '',
    description: '',
    prix_cash: '',
    lieu: '',
    adresse: '',
    categorie: '',
    fiche: {}
  };

  constructor(
    private categorieService: CategorieService
  ) { }

  ngOnInit() {
    this.categorieService.getAll().subscribe(categories => {
      this.categories = categories.items;
      this.formData.categorie = this.categories[0].uuid;
      this.fiche = this.categories[0].fiche;
    });
  }

  add() {
    this.categorieService.save(this.formData).subscribe(result => {
      console.log(result);
    });
  }

  changeCat(categorieUid) {
    const cat = this.categories.filter(item => item.uuid === categorieUid);
    if(cat.length > 0) {
      this.fiche = cat[0].fiche;
      this.formData.fiche = {};
    }
  }

}
