import 'dart:async';

import 'package:flutter_bloc_patter/data/product_service.dart';
import 'package:flutter_bloc_patter/models/product.dart';


class ProductBloc{

  final productStreamControl = StreamController.broadcast(); ////productStreamControl adlı bir sabıt degısken tanımladık ve stream ozelliği verdik


  /// stream getter yazıldı !!!!
  Stream get getStream{
      return productStreamControl.stream;
    }

  //// lisete getter yazıldı !!!
  List<Product> getAll(){
    return ProductService.getAll();
  }

}

////// refarans olusturup bloc ları heryerde kullanılcak !!!
final productBloc = ProductBloc();
