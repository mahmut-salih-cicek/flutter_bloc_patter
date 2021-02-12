import 'package:flutter_bloc_patter/models/product.dart';

class Cart{
  Product product; //// urunun Tipi Product classı 
  int quantity; //// üründen kac adet alındıysa sayısı

  Cart(this.product,this.quantity);//// constructor ile parametreleri gectik class cagrıldığında bu   adet ve urun tipini ulasabilmek için 

  
  
}