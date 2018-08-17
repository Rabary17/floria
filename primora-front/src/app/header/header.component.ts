import { Component, OnInit } from '@angular/core';


@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {
  public menuDisplay: boolean = false;
  constructor() { }

  ngOnInit() {
  }

  toggleMenu() {
    this.menuDisplay = ! this.menuDisplay;
    console.log(this.menuDisplay);
  }

  toogleMenu() {
    this.menuDisplay = !this.menuDisplay;
    
  }

}
