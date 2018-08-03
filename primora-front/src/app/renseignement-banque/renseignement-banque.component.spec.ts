import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { RenseignementBanqueComponent } from './renseignement-banque.component';

describe('RenseignementBanqueComponent', () => {
  let component: RenseignementBanqueComponent;
  let fixture: ComponentFixture<RenseignementBanqueComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ RenseignementBanqueComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(RenseignementBanqueComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
