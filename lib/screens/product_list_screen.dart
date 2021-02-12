import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_patter/blocs/cart_bloc.dart';
import 'package:flutter_bloc_patter/blocs/product_bloc.dart';
import 'package:flutter_bloc_patter/models/cart.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Buy Cart",
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined) , 
            onPressed: (){
              Navigator.pushNamed(context, "/cart");
            }
          ),
        ],
      ),
      body: buildProducList(),
    );
  }

  buildProducList() {
    return StreamBuilder(
      initialData: productBloc.getAll(),////yaratıldıgında ilk data 
      stream: productBloc.getStream,
      builder: (context , snapshot){ ///// snapshot stream den gelen en son data !!!!
       return snapshot.data.length>0?buildProductListItem(snapshot):Center(child: Text("data yok"),);

      },
      
    );
  }

  buildProductListItem(AsyncSnapshot snapshot) {
    return ListView.builder(
      itemCount: snapshot.data.length,
      itemBuilder: (BuildContext context , index){
        final list = snapshot.data;
        return ListTile(
          title: Text(list[index].name),
          subtitle: Text(list[index].price.toString()),
          trailing: IconButton(
            icon: Icon(Icons.add_shopping_cart), 
            onPressed: (){
              cartBloc.addToCart(Cart(list[index],1));
            } 
            ),
        );
      }

      );
  }

  
}