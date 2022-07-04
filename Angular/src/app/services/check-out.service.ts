import { Injectable } from '@angular/core';
import{HttpClient}from '@angular/common/http'
import { ICheckOut } from '../icheck-out';

@Injectable({
  providedIn: 'root'
})
export class CheckOutService {

  constructor(private http :HttpClient) { }

  addDetail(details: ICheckOut){
    let url="https://localhost:44307/api/ShippingAddresses"
     this.http.post(url,details)
     .subscribe(result=>console.log("Data send to Database"));
  }





}
