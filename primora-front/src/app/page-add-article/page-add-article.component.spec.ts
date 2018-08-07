import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PageAddArticleComponent } from './page-add-article.component';

describe('PageAddArticleComponent', () => {
  let component: PageAddArticleComponent;
  let fixture: ComponentFixture<PageAddArticleComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PageAddArticleComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PageAddArticleComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
