import 'package:flutter/material.dart';
import 'package:mi_card/Task/modelScreen3.dart';

class screen3 extends StatefulWidget{
const screen3 ({super.key});

@override
State<screen3> createState()=> _Screen3State();
}

class _Screen3State extends  State<screen3>{

List<ProductsModel> Myproduct =[
ProductsModel(productName: "Bell Pepper", image:"assets/images/image1v.png"),
ProductsModel(productName: "Carrot",image: "assets/images/image2v.png"),
ProductsModel(productName: "Broccoli",image: "assets/images/image3v.png"),
ProductsModel(productName: "Spinach",image: "assets/images/image4v.png"),
];


@override
Widget build(BuildContext context){
 return Scaffold(
  appBar:AppBar
  (title: Text("Create your order"),
  centerTitle: true,
  backgroundColor: Color(0xffFFFFFF),
   //leading: Icon(Icons.chevron_up),
  elevation: 30),
body: GridView.builder(
itemCount: Myproduct.length,

  itemBuilder: (context, index){
   return Card(
      child: Column(
        children: [
          Image.asset(Myproduct[index].image),

        ],
      ),
    );

  },
   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 4,
    crossAxisSpacing:12,
    mainAxisSpacing: 24,
   // childAspectRatio: 3/2
     ),
)
 

 );}}