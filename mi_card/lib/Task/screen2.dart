import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mi_card/Task/Screen3.dart';

class Screen2 extends StatefulWidget{
const Screen2 ({super.key});

@override
State<Screen2> createState()=> _Screen2State();
}

class _Screen2State extends  State<Screen2>{

  var formkey= GlobalKey<FormState>();
  bool isValid=false;
@override
Widget build(BuildContext context){
 return Scaffold(
  appBar: AppBar(title: 
  Text("Enter your details",
  style: TextStyle(
    color: Color(0xff1E1E1E),
    fontSize: 20,
    fontWeight: FontWeight.w500)),),
   body: SafeArea(
     child: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 24),

       child: Form(
        key: formkey,
         
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         
          SizedBox(height: 31),
          Text("Gender",
          style: TextStyle(color: Color(0xff474747),
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: "")),
         
          SizedBox(height: 10),
         
         DropdownButtonFormField<String>(
          decoration: InputDecoration(
          hintText: "Choose your gender",
          hintStyle: TextStyle(color: Color(0xff959595),
          fontSize: 16,
          fontWeight: FontWeight.w400),
         
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Color(0xffEAECF0),)),
            
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Color(0xffEAECF0)) )
            ) ,
            
            items: [
              DropdownMenuItem(
                value: "1" ,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Female"),
                  Icon(Icons.check,color: Color(0xffF25700),)] )),
         
               DropdownMenuItem(//decoration:InputDecoration()
                value: "2",
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Male"),
                  Icon(Icons.check,color: Color(0xffF25700))
                 
                  ],))
              ],
              onChanged: (value){
              print(value);
              }
              ),
         
            SizedBox(height: 24),
         
             Text("Weight",style: TextStyle(color: Color(0xff474747),
             fontSize: 14,
             fontWeight: FontWeight.w500,
             fontFamily: ""),),
         
            SizedBox(height: 10),
         
            TextFormField(
              decoration: InputDecoration(
                hintText:"Enter your weight",
                hintStyle: TextStyle(color: Color(0xff959595),fontSize: 16,
                fontWeight: FontWeight.w400),
         
                suffixText: "Kg",
                suffixStyle: TextStyle(color: Color(0xff474747),
                fontSize: 14,
                fontWeight: FontWeight.w500),
                 
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Color(0xffEAECF0))),
         
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Color(0xffEAECF0)) ),
                    ),
                    validator:(String? value){
         
                      if(value==null || value.isEmpty){
                    return "Weight is required";
                      }
                      else{
                      return null;
                      } }),
                      SizedBox(height: 24),
         
                      Text("Height",style:
                       TextStyle(color: Color(0xff474747),
                       fontSize: 14,
                       fontWeight: FontWeight.w500,
                       fontFamily: ""
                       ),),
         
                      SizedBox(height: 10),
         
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter your height",
                          hintStyle: TextStyle(color: Color(0xff959595),fontSize: 16,
                          fontWeight: FontWeight.w400),
         
                          suffixText: "Cm",suffixStyle: TextStyle(color: Color(0xff474747),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
         
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Color(0xffEAECF0))
                          ),
         
                         focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color(0xffEAECF0)) )
                        ),
                        validator: (String? Value){
                          if(Value==null || Value.isEmpty){
                          return"Height is reguired";
                          }
                          else{
                            return null;
                          }
                        }
                      ),
         
                      SizedBox(height: 24),
                      Text("Age",style: TextStyle(
                        color: Color(0xff474747),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,)),
                    
                       SizedBox(height: 10),
                        TextFormField(decoration:
                         InputDecoration(
                          hintText: "Enter your age",
                          hintStyle: TextStyle(color: Color(0xff959595),fontSize: 16,
                          fontWeight: FontWeight.w400),
         
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Color(0xffEAECF0))
                          ),
         
                         focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color(0xffEAECF0)) )
                        ),
                        validator: (String? Value){
                          if(Value==null || Value.isEmpty){
                          return"Age is reguired";
                          }
                          else{
                            return null;
                          }
                        }),
                        SizedBox(height: 164),
                        
                        ElevatedButton(onPressed:(){
                         if(formkey.currentState!.validate()){
                          Navigator.push(context, 
                          MaterialPageRoute(builder:(context)=> screen3()));}
                          },

                          style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffEAECF0),
                          fixedSize: Size(327, 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          )),

                         child: Text("Next",
                         style: TextStyle(
                          fontSize: 16,
                         fontWeight: FontWeight.w500,
                         color: Color(0xff959595)),))
         
           ],),
       ),
     ))
);
}}