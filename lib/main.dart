import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_page.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, child){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          );
        }
    );
  }
}