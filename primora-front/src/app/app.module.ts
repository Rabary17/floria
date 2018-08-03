import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { HeaderComponent } from './header/header.component';
import { FilterComponent } from './filter/filter.component';
import { ArticleThumbComponent } from './article-thumb/article-thumb.component';
import { ArticlesListComponent } from './articles-list/articles-list.component';
import { ArticlesDetailComponent } from './articles-detail/articles-detail.component';
import { SimulationCreditComponent } from './simulation-credit/simulation-credit.component';
import { RenseignementBanqueComponent } from './renseignement-banque/renseignement-banque.component';
import { RegisterComponent } from './register/register.component';
import { LoginComponent } from './login/login.component';
import { FacebookLoginComponent } from './facebook-login/facebook-login.component';
import { ArticleAddComponent } from './article-add/article-add.component';
import { UploadFileComponent } from './upload-file/upload-file.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FilterComponent,
    ArticleThumbComponent,
    ArticlesListComponent,
    ArticlesDetailComponent,
    SimulationCreditComponent,
    RenseignementBanqueComponent,
    RegisterComponent,
    LoginComponent,
    FacebookLoginComponent,
    ArticleAddComponent,
    UploadFileComponent
  ],
  imports: [
    BrowserModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
