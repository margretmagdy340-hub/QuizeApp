import 'package:flutter/material.dart';
import 'package:mi_card/quize_app/Quize_model.dart';

class QuizeData {
  List< QuizeModel> QuizeDatalist=[
QuizeModel("ljl",true ),
QuizeModel("okpo", false),
QuizeModel("okpo", true),
 ];
List<Icon> icon=[];

int questions=0;

void check(bool userAnswers){

if(userAnswers==QuizeDatalist[questions].Answers){
  icon.add(Icon(Icons.check,color: Colors.green));
}
else{
icon.add(Icon(Icons.close,color: const Color.fromARGB(255, 85, 7, 7)));
}
questions++;
}


}