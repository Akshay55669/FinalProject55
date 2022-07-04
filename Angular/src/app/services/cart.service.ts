import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';
import{HttpClient}from '@angular/common/http'
import { IProduct } from '../iproduct';

@Injectable({
  providedIn: 'root'
})
export class CartService {

  public cartItemList:IProduct[]=[]
  public search=new BehaviorSubject<string>('');
  public productList=new BehaviorSubject<any>([]);

  constructor(private http :HttpClient) { }

  productDetail(cartItemList: IProduct){
    let url="https://localhost:44307/api/CartProducts"
     this.http.post(url,cartItemList)
     .subscribe(result=>console.log("Data send to Database"));
  }


  getProducts(){
    return this.productList.asObservable();
  }

  setProducts(product :any){
    this.cartItemList.push(...product);
    this.productList.next(product);
  }

  addtoCart(product:any){
    this.cartItemList.push(product);
    this.productList.next(this.cartItemList);
    this.getTotalPrice();
    console.log(this.cartItemList);
  }
  
  incrementQuantity(product:any){
    const i = this.cartItemList.indexOf(product)
    this.cartItemList[i].quantity++;
  }

  decrementQuantity(product:any){
    const i = this.cartItemList.indexOf(product)
    this.cartItemList[i].quantity--;
  }

  hasReachedMaxQuantity(product:IProduct){
    const i = this.cartItemList.indexOf(product)
    return this.cartItemList[i].quantity===5
  }

  getTotalPrice(): number{
    let grandTotal=0;
    this.cartItemList.map((item:any)=>{
      item.total = item.price * item.quantity;
      grandTotal += Number(item.total);
    }) 
    return grandTotal;
  }

  removeCartItem(product: IProduct){
      for(let i=0;i<this.cartItemList.length;i++){
      if(this.cartItemList[i].id === product.id){
      this.cartItemList.splice(i,1);
      }
    }
    this.productList.next(this.cartItemList);
  }

  removeAllCart(){
    this.cartItemList=[]
    this.productList.next(this.cartItemList);
  }
}
