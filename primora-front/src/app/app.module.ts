import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { NgModule } from '@angular/core';
import { MaterialModule } from './material.module';


import { HttpClientModule } from '@angular/common/http';

import { AppComponent } from './app.component';
import { RouteModule } from './app.routing';
import { HeaderComponent } from './header/header.component';
import { FilterComponent } from './filter/filter.component';
import { ArticleThumbComponent } from './article/article-thumb/article-thumb.component';
import { ArticlesListComponent } from './article/articles-list/articles-list.component';
import { ArticleDetailComponent } from './article/article-detail/article-detail.component';
import { SimulationCreditComponent } from './simulation-credit/simulation-credit.component';
import { RenseignementBanqueComponent } from './renseignement-banque/renseignement-banque.component';
import { RegisterComponent } from './register/register.component';
import { LoginComponent } from './login/login.component';
import { FacebookLoginComponent } from './facebook-login/facebook-login.component';
import { ArticleAddComponent } from './article/article-add/article-add.component';
import { UploadFileComponent } from './upload-file/upload-file.component';
import { TopMenuComponent } from './top-menu/top-menu.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { FileUploadModule } from 'ng2-file-upload';
import {SlideshowModule} from 'ng-simple-slideshow';
import { SimpleSearchComponent } from './simple-search/simple-search.component';


import { PageHomeComponent } from './page-home/page-home.component';
import { PageResultComponent } from './page-result/page-result.component';
import { PageFicheArticleComponent } from './page-fiche-article/page-fiche-article.component';
import { PageAddArticleComponent } from './page-add-article/page-add-article.component';
import { PageContactComponent } from './page-contact/page-contact.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FilterComponent,
    ArticleThumbComponent,
    ArticlesListComponent,
    ArticleDetailComponent,
    SimulationCreditComponent,
    RenseignementBanqueComponent,
    RegisterComponent,
    LoginComponent,
    FacebookLoginComponent,
    ArticleAddComponent,
    UploadFileComponent,
    PageHomeComponent,
    PageResultComponent,
    PageFicheArticleComponent,
    PageAddArticleComponent,
    PageContactComponent,
    TopMenuComponent,
    SimpleSearchComponent,
  ],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    HttpClientModule,
    RouteModule,
    FormsModule,
    ReactiveFormsModule,
    MaterialModule,
    SlideshowModule,
    FileUploadModule,
  ],

  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
