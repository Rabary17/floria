import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PageFicheArticleComponent } from './page-fiche-article.component';

describe('PageFicheArticleComponent', () => {
  let component: PageFicheArticleComponent;
  let fixture: ComponentFixture<PageFicheArticleComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PageFicheArticleComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PageFicheArticleComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
