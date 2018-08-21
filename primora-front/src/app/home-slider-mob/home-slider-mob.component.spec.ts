import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HomeSliderMobComponent } from './home-slider-mob.component';

describe('HomeSliderMobComponent', () => {
  let component: HomeSliderMobComponent;
  let fixture: ComponentFixture<HomeSliderMobComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HomeSliderMobComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HomeSliderMobComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
