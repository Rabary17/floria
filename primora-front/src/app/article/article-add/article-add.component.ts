import { Component, OnInit } from '@angular/core';
import { CategorieService } from '../../../services/categorie.service';


@Component({
  selector: 'app-article-add',
  templateUrl: './article-add.component.html',
  styleUrls: ['./article-add.component.css']
})
export class ArticleAddComponent implements OnInit {
  totalStep = null;
  currentStep = -1;

  categories = [];
  fiche = [];

  formData = {
    categorie: '',
    titre: '',
    description: '',
    prix_cash: '',
    lieu: '',
    adresse: '',
    fiche: {}
  };

  constructor(
    private categorieService: CategorieService
  ) { }

  ngOnInit() {
    this.categorieService.getAll().subscribe(categories => {
      this.categories = categories.items;
      // this.formData.categorie = this.categories[0].uuid;
      // this.fiche = this.categories[0].fiche;
    });
  }

  add() {
    console.log(this.formData);
    this.categorieService.save(this.formData).subscribe(result => {
      /*
      if(res.affectedRows) {

      } else {
        // TODO error
      }
      */
    });
  }

  selectCategorie(categorieUid) {
    const cat = this.categories.filter(item => item.uuid === categorieUid);
    if(cat.length > 0) {
      this.fiche = cat[0].fiche;
      this.formData.categorie = cat[0].uuid;
      this.formData.fiche = {};
      this.totalStep = this.fiche.length;

      ++this.currentStep;
    }
  }

  next(current) {
    this.currentStep = ++current;
  }

  previous(current) {
    this.currentStep = --current;
    if(this.currentStep < -1) this.currentStep = -1;
    if(this.currentStep <= -1) {
      this.fiche = [];
      this.totalStep = null;
    }
  }

  updateFiles(files, key) {
    this.formData.fiche[key] = files;
  }
}
