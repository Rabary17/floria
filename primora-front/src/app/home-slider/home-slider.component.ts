import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home-slider',
  templateUrl: './home-slider.component.html',
  styleUrls: ['./home-slider.component.css']
})
export class HomeSliderComponent implements OnInit {
  public images: Array<string> = ['assets/home-slide/1.jpg','assets/home-slide/2.jpg','assets/home-slide/3.jpg'];

  constructor() { }

  ngOnInit() {
  }

}
