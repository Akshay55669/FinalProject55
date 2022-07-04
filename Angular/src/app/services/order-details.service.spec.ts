import { HttpClient, HttpClientModule } from '@angular/common/http';
import { TestBed } from '@angular/core/testing';


import { OrderDetailsService } from './order-details.service';

describe('OrderDetailsService', () => {
  let service: OrderDetailsService;

   beforeEach(async() => {
    TestBed.configureTestingModule({imports:[HttpClientModule,HttpClient]});
    service = TestBed.inject(OrderDetailsService);
  });

  it('should be created', () => {
    const service:OrderDetailsService=TestBed.get(OrderDetailsService);
    expect(service).toBeTruthy();
  });
});
