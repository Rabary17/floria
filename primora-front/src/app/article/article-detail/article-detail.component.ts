import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, ParamMap } from '@angular/router';
//import {HttpService} from "../../../services/http.service";
import { HttpClient } from '@angular/common/http';
import { ArticleService } from '../../../services/article.service';
import { CategorieService } from '../../../services/categorie.service';
import {MediaService} from "../../../services/media.service";

@Component({
  selector: 'app-article-detail',
  templateUrl: './article-detail.component.html',
  styleUrls: ['./article-detail.component.css']
})
export class ArticleDetailComponent implements OnInit {
  id: number;
  private sub: any;
  private article;

  fiche = [];
  jsonFiche = {};
  keyFiche = [];
  ficheCategorie = [];

  constructor(
    private articleService: ArticleService, 
    private route: ActivatedRoute,
    private categorieService: CategorieService,
    private mediaService: MediaService
  ) { }

  ngOnInit() {
     this.sub = this.route.params.subscribe(params => {
       this.id = params['id'];
       this.articleService.getArticlesDetails(this.id).subscribe(article => {
         this.categorieService.getByUuid(article.categorie).subscribe(categorie => {
            this.ficheCategorie = categorie.fiche;
         });
        this.fiche = article.fiche;
        this.keyFiche = Object.keys(this.fiche);
        console.log(this.fiche);
       });
    });
  }

  getImage(file) {
    return this.mediaService.getImage(file);
  }

}
