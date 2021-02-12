import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_patter/data/cart_service.dart';
import 'package:flutter_bloc_patter/models/cart.dart';

class CartBlock{
  
  final cartStreamController = StreamController.broadcast();
  
  /// 1. yol  Stream get getStream => cartStreamController.stream;

    Stream get getStream{
      return cartStreamController.stream;
    }
    ////// stremi event ile uyandırdık ve eklenenler sepet ekranında guncellendi
    void addToCart (Cart item){
      CartService.addToItem(item);
      cartStreamController.sink.add(CartService.getCart());
    }

    //////strem eventi ile uyandırdık ve silme yaptık sepet ekranında guncellendi
    void deleteToCart(Cart item){
      CartService.removeCartItem(item);
      cartStreamController.sink.add(CartService.getCart());
    }


    ///// ekranda gosterilcek olan list view methodu
    List<Cart> getCart(){
      return CartService.getCart();
    }
  
}

////// refarans olusturup bloc ları heryerde kullanılcak !!!
final cartBloc = CartBlock();