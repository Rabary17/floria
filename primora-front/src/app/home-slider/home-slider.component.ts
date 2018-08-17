import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home-slider',
  templateUrl: './home-slider.component.html',
  styleUrls: ['./home-slider.component.css']
})
export class HomeSliderComponent implements OnInit {
  public images: Array<string> = ['assets/home-slide/1.png','assets/home-slide/2.png','assets/home-slide/3.png'];

  constructor() { }

  ngOnInit() {
  }

}
