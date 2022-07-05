import { Component, OnInit } from '@angular/core';
import { OrderDetailsService } from 'src/app/services/order-details.service';
import { IProduct } from 'src/app/iproduct';
import { CartService } from 'src/app/services/cart.service';


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  result: IProduct[] = [];
  showMsg = false;
  showErrMsg = false;
  public filterCategory: any;

  constructor(private order: OrderDetailsService, private cartService: CartService) { }

  ngOnInit(): void {
    this.order.getData().subscribe((data: IProduct[]) => {
      console.log(data);
      this.filterCategory = data;
      this.result = data;

      // for cart use------------------------
      this.result.forEach((a: any) => {
        Object.assign(a, { quantity: 1, total: a.Price })
      });
    });

  }

  addtocart(cart: IProduct) {
    if (!this.cartService.cartItemList.includes(cart)) {
      this.cartService.addtoCart(cart);
      this.showMsg = true;
      setTimeout(() => { this.showMsg = false }, 1000)
    }
    else if (!this.cartService.hasReachedMaxQuantity(cart)) {
      this.cartService.incrementQuantity(cart);
      this.showMsg = true;
      setTimeout(() => { this.showMsg = false }, 1000)
    }
    else {
      this.showErrMsg = true;
      setTimeout(() => { this.showErrMsg = false }, 1000)
    }
  }





}
