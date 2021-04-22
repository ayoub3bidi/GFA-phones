import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NavComponent } from './nav/nav.component';
import { HomeComponent } from './home/home.component';
import { AccessoiresComponent } from './accessoires/accessoires.component';
import { MarquesComponent } from './marques/marques.component';
import { CartComponent } from './cart/cart.component';
import { ProductComponent } from './product/product.component';
import { AccessoireComponent } from './accessoire/accessoire.component';

@NgModule({
  declarations: [
    AppComponent,
    NavComponent,
    HomeComponent,
    AccessoiresComponent,
    MarquesComponent,
    CartComponent,
    ProductComponent,
    AccessoireComponent
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
