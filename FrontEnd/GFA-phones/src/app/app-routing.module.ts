import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { AccessoireComponent } from './accessoire/accessoire.component';
import { AccessoiresComponent } from './accessoires/accessoires.component';
import { CartComponent } from './cart/cart.component';
import { HomeComponent } from './home/home.component';
import { MarquesComponent } from './marques/marques.component';
import { ProductComponent } from './product/product.component';


const routes: Routes = [
  {path:"", component:HomeComponent},
  {path:"accessoires", component:AccessoiresComponent},
  {path:"marques", component:MarquesComponent},
  {path:"cart", component:CartComponent},
  {path:"product/:id", component:ProductComponent},
  {path:"accessoire/:id", component:AccessoireComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
