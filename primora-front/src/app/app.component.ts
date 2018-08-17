import { Component } from '@angular/core';
import {ActivatedRoute, NavigationEnd, Router} from "@angular/router";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'primora-front';
  public showHomeSlider: boolean = true;

  constructor(
    private route: ActivatedRoute,
    private router: Router
  ) {
    router.events.subscribe((val: NavigationEnd) => {
      if(val.url !== undefined) {
        this.showHomeSlider = val.url === '/' || val.url === '/accueil';
      }
    });
  }

  ngOnInit() {
  }
}
