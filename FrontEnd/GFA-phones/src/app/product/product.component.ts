import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-product',
  templateUrl: './product.component.html',
  styleUrls: ['./product.component.css']
})
export class ProductComponent implements OnInit {

  products = [
    {"id":"2548",
    "Name": "HUAWEI Y9A",
    "Brand": "HUAWEI",
    "Prix": "999.000",
    "Quantité": "15",
    "Couleur": "Noir minuit",
    "Reference": "FRL-23",
    "Ecran": '6.63"',
    "Processeur": "Mediatek Helio G80 (12 nm)-Octa-core",
    "Systeme": " Android 10, EMUI 10.1",
    "Appareil_Photo":"48 MP + 8 MP + 2 MP+ 2 MP / 16MP",
    "Ram": "8G",
    "Stockage": "128G",
    "Batterie": "4300 mah",
    "Double_Sim": "1",
    "img": "https://www.wiki.tn/54566-large_mobi_default/huawei-y9a.jpg"},

    {"id":"3648",
    "Name": "HUAWEI NOVA 7I",
    "Brand": "HUAWEI",
    "Prix": "899.000",
    "Quantité": "20",
    "Couleur": "Noir minuit",
    "Reference": "HU-NOVA-7I",
    "Ecran": '6.4 IPS LCD"',
    "Processeur": "Octa-Core HUAWEI Kirin 810",
    "Systeme": " Android 10",
    "Appareil_Photo":"48 MP + 8 MP + 2 MP+ 2 MP / 16MP",
    "Ram": "8G",
    "Stockage": "128G",
    "Batterie": "4200 mah",
    "Double_Sim": "1",
    "img": "https://www.wiki.tn/51991-large_mobi_default/-huawei-nova-7i-noir-minuit.jpg"},

    {"id":"5468",
    "Name": "OPPO RENO",
    "Brand": "OPPO",
    "Prix": "1999.000",
    "Quantité": "13",
    "Couleur": "Noir",
    "Reference": "BU-OPPO-RENO4-SBLACK",
    "Ecran": '6.4" AMOLED',
    "Processeur": "Qualcomm SM7125 Snapdragon 720G Octa-core",
    "Systeme": " Android 10",
    "Appareil_Photo":"48 MP f/1.7 + 8 MP f/2.2 + 2 MP f/2.4 + 2 MP ",
    "Ram": "8G",
    "Stockage": "128G",
    "Batterie": "4015 mah",
    "Double_Sim": "1",
    "img": "https://www.wiki.tn/54442-large_mobi_default/oppo-reno-4-noir.jpg"},

    {"id":"8896",
    "Name": "IPHONE 11 PRO MAX",
    "Brand": "APPLE",
    "Prix": "1200.000",
    "Quantité": "5",
    "Couleur": "Gris",
    "Reference": "apple-iphone-11-pro-max",
    "Ecran": '2688 x 1242 pixels',
    "Processeur": "Puce A13",
    "Systeme": "iOS 13",
    "Appareil_Photo":"12 MP + 12 MP + 12 MP, 12 MP",
    "Ram": "4G",
    "Stockage": "64G",
    "Batterie": "3969 mah",
    "Double_Sim": "0",
    "img": "https://www.wiki.tn/56225-large_mobi_default/iphone-11-pro-max-64-go.jpg"},
    
    {"id":"7684",
    "Name": "SAMSUNG GALAXY A51",
    "Brand": "SAMSUNG",
    "Prix": "1900.000",
    "Quantité": "2",
    "Couleur": "Silver",
    "Reference": "SM-A515-SILVER MET",
    "Ecran": '6.5" Super AMOLED',
    "Processeur": "Exynos 9611 Octa-core",
    "Systeme": " Android 10",
    "Appareil_Photo":"48.0 MP + 12.0 MP + 5.0 + 5.0 MP",
    "Ram": "6G",
    "Stockage": "128G",
    "Batterie": "4000 mah",
    "Double_Sim": "1",
    "img": "https://www.wiki.tn/54666-large_mobi_default/samsung-galaxy-a-51-silver-metalic.jpg"},
   ];

   id: string;

  constructor(private actRoute: ActivatedRoute) { 
    this.id = this.actRoute.snapshot.params.id;
   }

  ngOnInit() {}

}
