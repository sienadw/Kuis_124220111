import 'package:flutter/material.dart';
import 'daftar_barang_dummy.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
          itemCount: supermarketItemList.length,
          itemBuilder: (context,index){
            final SupermarketItem item = supermarketItemList[index];
            return Card(
              child: Column(
                children: [
                  Image.network(SupermarketItem.imageUrls[0]),
                  Text(SupermarketItem.name),
                  Text(SupermarketItem.price)
                ],
              )
                );
              },
              
            )
            );
          }
}
