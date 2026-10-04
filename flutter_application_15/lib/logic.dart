
import 'package:flutter/material.dart';

class TodoProvider extends ChangeNotifier{
  List <String> tasks=[];
  List<bool> checkList=[];
  int index=0;



  void add (String str ){
    tasks.add(str);
    checkList.add(false);
    
    notifyListeners();
  }
  void check(int index){
    checkList[index]=!checkList[index];
    notifyListeners();
  }

  void delete (int index){
    tasks.removeAt(index);
    checkList.removeAt(index);
    notifyListeners();
  }
}