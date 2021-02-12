import 'package:flutter_bloc_patter/models/product.dart';


class ProductService{
  static var products = List<Product>(); //// Product calsındaki objeleri degiskene bagladık !!!
  
  
  static var _singleton = ProductService._internal(); //// ._internla constructor static degıskene bagladık

  factory ProductService(){ /// factory bellekde olanı hızlı sekılde vericektir !!!
    return _singleton;
  }

  ProductService._internal(); //// ._internal adlı boş constructor oluşturuldu !!!

  static List<Product> getAll(){ ///// Product clasına urun ekledik ve return ettik 
    products.add(Product(1,"Acer",2500));
    products.add(Product(2,"Asus",3000));
    products.add(Product(3,"Apple",4500));
    products.add(Product(4,"Dell",6000));
    return products;
  }
  
   
}