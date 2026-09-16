import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:mi_card/api/Quote.controller.dart';

class Quotescreen extends StatelessWidget{
  const  Quotescreen ({super.key});

@override
Widget build(BuildContext context){
final controller =Get.put(QuoteController());

return Scaffold(
  appBar:AppBar(
    title :Text("Quotes")
  ),
  body:Obx((){
    if (controller.isloading.value){
      return const Center(
        child:CircularProgressIndicator(),
      );
    }
    if(controller.errorMessage.value.isNotEmpty){
      return Center(
        child:Column(
          
          children:[
            Text(controller.errorMessage.value),
            const SizedBox(height:12),
            ElevatedButton(
              onPressed:controller.getQuotes,
              child: const Text("Retry"),

            )
          ]
          ));
    }
    return RefreshIndicator(onRefresh:controller.getQuotes , child: Column());

  
  })
);

}
}