import { Component, OnInit } from '@angular/core';
import { IProduct } from 'src/app/iproduct';
import { OrderDetailsService } from 'src/app/services/order-details.service';
import { CartService } from 'src/app/services/cart.service';
import { PaginationService } from 'src/app/services/pagination.service';


@Component({
  selector: 'app-menu',
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.css']
})
export class MenuComponent implements OnInit {

  result: IProduct[] = [];
  public filterCategory:any;

  searchKey: string = "";
  showMsg=false;
  showErrMsg=false;



  constructor(private order: OrderDetailsService, private cartService: CartService, private pagination: PaginationService) {  }

  ngOnInit(): void {
    this.order.getData().subscribe((data: IProduct[]) => {
      console.log(data);
      this.filterCategory=data;
      this.result = data;

      // for cart use------------------------
      this.result.forEach((a: any) => {
        Object.assign(a, { quantity: 1, total: a.Price })
      });

    });

    //  For searchKey
    this.cartService.search.subscribe((Val: any) => {
      this.searchKey = Val;
    });
    // this.getData();
  }
  
    // for cart
  addtocart(cart: any) {
    if(!this.cartService.cartItemList.includes(cart)){
    this.cartService.addtoCart(cart);
    this.showMsg=true;
    setTimeout(()=>{this.showMsg=false},1000)
    }
    else if(!this.cartService.hasReachedMaxQuantity(cart)){
      this.cartService.incrementQuantity(cart);
      this.showMsg=true;
      setTimeout(()=>{this.showMsg=false},1000)
    }
    else{
      this.showErrMsg=true;
      setTimeout(()=>{this.showErrMsg=false},1000)
    }
  }

  // Category
  filter(category:string){
    this.filterCategory=this.result.filter((a:any)=>{
      if(a.category==category || category==''){
        return a;
      }
    });
  }

  p:any;
  // data:any=[];
  getData(){
    this.pagination.getData().subscribe(
      (data)=> {
        this.filterCategory=data;
        
      }
    );
  }

  
}





