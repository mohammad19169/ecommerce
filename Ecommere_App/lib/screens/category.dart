import 'package:flutter/material.dart';

class CategoryMain extends StatelessWidget {
  const CategoryMain({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Category(onTap: (){}, imageurl: 'https://static.vecteezy.com/system/resources/previews/013/319/334/original/pants-icon-logo-design-illustration-free-vector.jpg', label: 'Pants'),
          SizedBox(width: MediaQuery.of(context).size.width*0.075),
          Category(onTap: (){}, imageurl: 'https://www.shutterstock.com/image-vector/black-dress-on-hanger-iconisolated-260nw-1178512246.jpg', label: 'Dress'),
          SizedBox(width: MediaQuery.of(context).size.width*0.075,),
          Category(onTap: (){}, imageurl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNZx6bjiLEhUphfk3kLmd4IWC0i6VXOEY96Q&s', label: 'Jackets'),
          SizedBox(width: MediaQuery.of(context).size.width*0.075,),
          Category(onTap: (){}, imageurl: 'https://img.freepik.com/free-photo/black-cap-front-view-isolated_125540-1019.jpg', label: 'Caps'),
          SizedBox(width: MediaQuery.of(context).size.width*0.075,),
          Category(onTap: (){}, imageurl: 'https://w7.pngwing.com/pngs/211/749/png-transparent-t-shirt-hoodie-sleeve-clothing-black-tshirt-angle-logo-thumbnail.png', label: 'Shirts'),





        ],
      ),
    );
  }
}




class Category extends StatelessWidget {
  final VoidCallback onTap;
  final String imageurl;
  final String label;
  const Category({super.key,required this.onTap,required this.imageurl,required this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(

        children: [
          CircleAvatar(
            backgroundColor: Color(0xffF5F5F5),
            backgroundImage: NetworkImage(imageurl),
            radius: 30,
          ),
          Text(label,style: TextStyle(fontSize: 15),),
        ],
      ),
    );
  }
}


