import { Injectable } from '@angular/core';
import{HttpClient}from '@angular/common/http'
import { ICheckOut } from '../icheck-out';

@Injectable({
  providedIn: 'root'
})
export class CheckOutService {

  constructor(private http :HttpClient) { }

  addDetail(details: ICheckOut){
    console.log(details.Fname);
    console.log(details.Lname);
    console.log(details.Address);
    console.log(details.Landmark);
    console.log(details.City);
    console.log(details.Pincode);
    console.log(details.MobileNo);
    console.log(details.Email);

    let url="https://localhost:44307/api/ShippingAddresses"
     this.http.post(url,details)
     .subscribe(result=>console.log("Data send to Database"));
  }

  // addDetail(details: ICheckOut){
  //   let url="https://localhost:44307/api/ShippingAddresses"
  //   this.http.post(url,details).subscribe(result => console.log("Data send to Database"));
  // }

  // addDetail(details: ICheckOut){
  //   this.http.post<ICheckOut>("https://localhost:44307/api/ShippingAddresses",JSON.stringify(details),{
  //     headers:{
  //       "Access-Control-Allow-Origin":"*",
  //       "Content-Type":"application/json"
  //     }
  //   }).subscribe(result => console.log("Data send to Database"));
  // }



}
