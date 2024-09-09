import 'package:flutter/material.dart';
import 'package:smit_task/widgets/Text.dart';

class ProductCard extends StatelessWidget {

  const ProductCard({super.key,required this.imageurl,required this.name,required this.price});
  final String imageurl;
  final String name;
  final String price;
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

      Container(
        height: MediaQuery.of(context).size.height*0.18,
        width: MediaQuery.of(context).size.width*0.4,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(imageurl)),
      ),
      Container(
        height: 45,
        width: MediaQuery.of(context).size.width*0.4,
        child: Padding(
          padding: const EdgeInsets.only(left:15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(fontSize: 15,fontFamily: 'Inter'),),
              SizedBox(width: 15,),
              Text(price,style: TextStyle(fontSize: 15,fontFamily: 'Inter'),),
            ],
          ),
        ),
      ),

    ],
        );
  }
}
