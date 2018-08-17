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
    // this.logo = this.logo;
  }

  toogleMenu() {
    this.menuDisplay = !this.menuDisplay;
    
  }

}
