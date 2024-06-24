import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-menu',
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.scss']
})
export class MenuComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

  // Ouverture et fermeture du menu pour appareils mobiles (version 2).
  toggleMenu02() {
    const menu: any = document.getElementById("menu02");
    if (menu.className === "menu01") {
      menu.className += " openmenu01";
    } else {
      menu.className = "menu01";
    }
  }

}
