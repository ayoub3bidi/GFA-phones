import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';


@Component({
  selector: 'app-accessoire',
  templateUrl: './accessoire.component.html',
  styleUrls: ['./accessoire.component.css']
})
export class AccessoireComponent implements OnInit {

  products = [
    {"id": "3",
      "Reference": "B2994SC07FT",
      "Couleur": "Null",
      "Quantite": "15",
      "Prix": "22",
      "Name": "PROTECTEUR D’ÉCRAN KSIX POUR NOKIA 6",
      "Brand": "Ksix",
      "id_SmartPhone": "Null",
      "img": "https://www.wiki.tn/23151-large_mobi_default/protecteur-decran-ksix-pour-nokia-6.jpg"},

      {"id": "4",
      "Reference": "6941487202140",
      "Couleur": "Noir",
      "Quantite": "699",
      "Prix": "22",
      "Name": "ECOUTEURS SANS FIL HUAWEI FREEBUDS PRO ",
      "Brand": "HUAWEI",
      "id_SmartPhone": "3",
      "img": "https://www.wiki.tn/61528-large_mobi_default/ecouteurs-sans-fil-huawei-freebuds-pro-noir.jpg"},
      
      {"id": "5",
      "Reference": "48808",
      "Couleur": "Noir Rose",
      "Quantite": "69",
      "Prix": "4",
      "Name": "ACQUA GROOVE ADDICT STAR DANCE",
      "Brand": "ACQUA",
      "id_SmartPhone": "Null",
      "img": "https://www.wiki.tn/62289-large_mobi_default/ecouteur-groove-addict-series-stardance.jpg"},

      {"id": "6",
      "Reference": "G12-BK",
      "Couleur": "Noir",
      "Quantite": "420",
      "Prix": "6",
      "Name": "ECOUTEUR AVEC MICRO CELEBRAT G12",
      "Brand": "CELEBRAT",
      "id_SmartPhone": "Null",
      "img": "https://www.wiki.tn/57449-large_mobi_default/ecouteur-avec-micro-celebrat-g12-noir.jpg"},

      {"id": "7",
      "Reference": "OK-900",
      "Couleur": "Noir",
      "Quantite": "47",
      "Prix": "8",
      "Name": "CASQUE MICRO OAKORN",
      "Brand": "OAKORN",
      "id_SmartPhone": "Null",
      "img": "https://www.wiki.tn/56075-large_mobi_default/casque-micro-oakorn-.jpg"}
  ];

  id: string;

  constructor(private actRoute: ActivatedRoute) { 
    this.id = this.actRoute.snapshot.params.id;
   }

  ngOnInit(): void {
  }

}
