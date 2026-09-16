
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mi_card/Task/modelScreen3.dart';

class screen3 extends StatefulWidget{
const screen3 ({super.key});

@override
State<screen3> createState()=> _Screen3State();
}

class _Screen3State extends  State<screen3>{

List<ProductsModel> Myproduct =[
ProductsModel(productName: "Bell Pepper", image:"assets/images/image1v.png",Calories: "12 cal",price:12),
ProductsModel(productName: "Carrot",image: "assets/images/image2v.png",Calories: "12 cal",price:12),
ProductsModel(productName: "Broccoli",image: "assets/images/image3v.png",Calories: "12 cal",price:12),
ProductsModel(productName: "Spinach",image: "assets/images/image4v.png",Calories: "12 cal",price:12),
];

List<ProductsModel> Meats=[
ProductsModel(productName: "Lean Beef", image: "assets/images/image1m.png",
 Calories: "12 cal", price: 12),

 ProductsModel(productName: "Salmon", image: "assets/images/image2m.png",
 Calories: "12 cal", price: 12)
];

@override
Widget build(BuildContext context){
 return ScreenUtilInit(
  builder: (context, child) => 
    Scaffold(
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
              Expanded(
                child: Image.asset(Myproduct[index].image)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(Myproduct[index].productName),
                  Text(Myproduct[index].Calories)
                ],
              ),
              SizedBox(height: 8),
              Row(children: [
                Text(
                "\$${Myproduct[index].price}")
              ],)
            ],
          ),
        
      );
   
    },
     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4,
      crossAxisSpacing:12,
      mainAxisSpacing: 24,
    // childAspectRatio: 0.55
       ),
   )
   
   
   ),
 );}}