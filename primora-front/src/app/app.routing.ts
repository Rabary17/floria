import { RouterModule, Routes, RouterLink } from '@angular/router';
import { NgModule } from '@angular/core';


import {AppComponent} from './app.component';
import {ArticleAddComponent} from './article/article-add/article-add.component';
import {ArticleDetailComponent} from './article/article-detail/article-detail.component';
import {ArticleThumbComponent} from './article/article-thumb/article-thumb.component';
import {ArticlesListComponent} from './article/articles-list/articles-list.component';
import {RenseignementBanqueComponent} from './renseignement-banque/renseignement-banque.component';
import {SimulationCreditComponent} from './simulation-credit/simulation-credit.component';
import {PageHomeComponent} from './page-home/page-home.component';
import { PageAddArticleComponent} from './page-add-article/page-add-article.component';
import { PageResultComponent} from './page-result/page-result.component';
import { PageFicheArticleComponent} from './page-fiche-article/page-fiche-article.component';

const appRoutes: Routes = [
    { path:'', component		: PageHomeComponent },
    { path: 'accueil', component: PageHomeComponent },
    { path: 'ajouter', component: PageAddArticleComponent },
    { path: 'result', component: PageResultComponent },
    { path: 'article/:id', component: ArticleDetailComponent} ,
    { path: 'simulation', component: SimulationCreditComponent },
    { path: 'banque', component: RenseignementBanqueComponent },

    // {
    //   path: 'heroes',
    //   component: HeroListComponent,
    //   data: { title: 'Heroes List' }
    // }
  ];
  
  @NgModule({
    imports: [
      RouterModule.forRoot(
        appRoutes,
        { enableTracing: true } // <-- debugging purposes only
      ),
      
      // other imports here
    ],
    exports: [
        RouterModule,
        RouterLink
    ],
  })
  export class RouteModule { }