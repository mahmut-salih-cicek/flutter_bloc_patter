import 'package:flutter_bloc_patter/models/cart.dart';

class CartService{
  static var cartItems = List<Cart>();
  static var _singleton = CartService._internal();
  CartService._internal();

  factory CartService(){
    return _singleton;
  }
  static addToItem(Cart item){//// sepete urun ekleme !!!!
   cartItems.add(item);
  }

  static removeCartItem(Cart item){
    cartItems.remove(item);
  }

  static List<Cart> getCart(){
    return cartItems;
  }


  
}