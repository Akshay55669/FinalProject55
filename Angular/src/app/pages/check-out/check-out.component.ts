import { Component, OnInit } from '@angular/core';
import { CartService } from 'src/app/services/cart.service';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { CheckOutService } from 'src/app/services/check-out.service';
import { ICheckOut } from 'src/app/icheck-out';
import { IProduct } from 'src/app/iproduct';




@Component({
  selector: 'app-check-out',
  templateUrl: './check-out.component.html',
  styleUrls: ['./check-out.component.css']
})
export class CheckOutComponent implements OnInit {


  Fname: FormControl = new FormControl("");
  Lname: FormControl = new FormControl("");
  address: FormControl = new FormControl("");
  landmark: FormControl = new FormControl("");
  city: FormControl = new FormControl("");
  pincode: FormControl = new FormControl("");
  mobile: FormControl = new FormControl("");
  email: FormControl = new FormControl("");

  constructor(private cartService: CartService, private checkout: CheckOutService) { }

  ngOnInit(): void {
  }

  saveOrder() {
    let details: ICheckOut = {
      Fname: this.Fname.value,
      Lname: this.Lname.value,
      Address: this.address.value,
      Landmark: this.landmark.value,
      City: this.city.value,
      Pincode: parseInt(this.pincode.value),
      MobileNo: parseInt(this.mobile.value),
      Email: this.email.value,
    };
    this.checkout.addDetail(details);
    // alert("Data Saved");
  }

}
