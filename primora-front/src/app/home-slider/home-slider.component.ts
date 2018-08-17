import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home-slider',
  templateUrl: './home-slider.component.html',
  styleUrls: ['./home-slider.component.css']
})
export class HomeSliderComponent implements OnInit {
  public images: Array<string> = ['assets/home-slide/1.png'];

  constructor() { }

  ngOnInit() {
  }

}
