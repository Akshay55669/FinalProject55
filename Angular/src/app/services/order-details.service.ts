import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http'
import { IProduct } from '../iproduct';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class OrderDetailsService {

  constructor(private http: HttpClient) { }

  getData(): Observable<IProduct[]> {
    let url = "https://localhost:44307/api/products"
    return this.http.get<IProduct[]>(url);
  }



}
