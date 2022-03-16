import 'dart:math';
import 'songLibrary.dart';
import 'package:kanye/pages/song.dart';
 
late bool isEqual;  

getRandom(List<songName> list, instanceEmotion){
  final random = new Random();
  var i = random.nextInt(list.length);
  
  isEqual = list[i].emotion == instanceEmotion? true: false;
  
  if(!isEqual){
    return getRandom(list, instanceEmotion);
  }else{
    return list[i];
  }
  
  
}