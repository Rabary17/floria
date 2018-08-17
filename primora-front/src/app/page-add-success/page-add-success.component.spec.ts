import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PageAddSuccessComponent } from './page-add-success.component';

describe('PageAddSuccessComponent', () => {
  let component: PageAddSuccessComponent;
  let fixture: ComponentFixture<PageAddSuccessComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PageAddSuccessComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PageAddSuccessComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
