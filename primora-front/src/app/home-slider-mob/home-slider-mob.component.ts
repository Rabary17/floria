import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home-slider-mob',
  templateUrl: './home-slider-mob.component.html',
  styleUrls: ['./home-slider-mob.component.css']
})
export class HomeSliderMobComponent implements OnInit {
  public images: Array<string> = ['assets/home-slide/4.jpg','assets/home-slide/5.jpg','assets/home-slide/6.jpg'];

  constructor() { }

  ngOnInit() {
  }

}
