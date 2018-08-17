import {Component, OnInit} from '@angular/core';
import { ActivatedRoute } from '@angular/router';
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

  fiche: any = {};
  ficheCategorie = [];
  ficheImages = [];

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
        this.ficheImages = this.getImages(article.fiche.images)
      });
    });
  }

  filterFiche(fiche) {
    return fiche.filter(item => item.key !== 'images');
  }

  getImages(files) {
    if(typeof files === 'undefined') return [];
    return files.map(item => this.mediaService.getImage(item));
  }

  boolDisplay(value) {
    if(value === true) return 'Oui';
    if(value === false) return 'Oui';
    else return '-';
  }
}
