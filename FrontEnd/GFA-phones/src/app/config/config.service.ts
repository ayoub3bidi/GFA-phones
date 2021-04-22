import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { catchError, retry } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class ConfigService {

  constructor(private httpClient: HttpClient) { }

  public getProducts() {
    return this.httpClient.get("http://127.0.0.1:8000/products")
  }

  public getAccessoires() {
    return this.httpClient.get("http://127.0.0.1:8000/accessoires")
  }

  public getPromos() {
    return this.httpClient.get("http://127.0.0.1:8000/promos")
  }
}
