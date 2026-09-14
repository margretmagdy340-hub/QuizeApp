
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mi_card/Task/screen2.dart';

class Welcomescreen  extends StatefulWidget{
  const Welcomescreen({super.key});
  @override
    State<Welcomescreen> createState() => _welcomeScreenState();

}
class _welcomeScreenState extends State<Welcomescreen>{
@override
  Widget build(BuildContext context){
  return Scaffold(
    body: SafeArea(child:
    Stack(
      children: [
        Container(height: double.infinity,
        width: double.infinity,
          child: Image.asset("assets/images/splashscreen.jpg",
          fit: BoxFit.cover)),
      

            PositionedDirectional(start: 24,end: 24,
            top: 48,
              child: Center(
                child: Text("Balanced Meal",
                   style: TextStyle(color: Color(0xffFFFFFF),
                   fontSize: 48,
                   fontWeight: FontWeight.w800,
                   fontFamily: "abhaya-libre"
                    )
                    ),
              ),
            ),
             
          
         PositionedDirectional(start: 24,
         end: 24,bottom: 133,
           child: Center(
             child: Text(
                       "Craft your ideal meal effortlessly\n"
                       "  with our app. Select nutritious\n"
                       "ingredients tailored to your taste\n"
                        "          and well-being.   ",
                       style: TextStyle(color: Color(0xffDADADA),
                       fontSize: 20,
                        fontWeight: FontWeight.w300,
                         fontFamily:"Poppins"),
                 ),
           ),
         ),
             PositionedDirectional(start: 24,end: 24,bottom: 43,
               child: ElevatedButton(onPressed: (){Navigator.push(
                context, MaterialPageRoute(builder: (context)=> Screen2()
                ));

               },
                child:Text("Order Food",
                style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: ""),),

                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffF25700),
                  fixedSize: Size(327, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  )),
                ),
             )
       
       
      ]
    )
    )
  );
 }
}