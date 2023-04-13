import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const CupertinoSearchTextField(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("GAMCHALUNGI.COM", style: TextStyle(
              fontSize: 30.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
            SizedBox(height: 20.h),
            Container(
              color: Colors.black26,
              height: 60,
              width: 330,
            ),
            SizedBox(height: 20.h),
            Container(
              color: Colors.orangeAccent,
              height: 60,
              width: 330,
            ),
            SizedBox(height: 20.h),
            Container(
              color: Colors.lightBlueAccent,
              height: 60,
              width: 330,
            ),
            SizedBox(height: 20.h),
            Container(
              color: Colors.deepPurpleAccent,
              height: 60,
              width: 330,
            ),
            SizedBox(height: 20.h),
            Container(
              color: Colors.lightGreen,
              height: 60,
              width: 330,
            )
          ],
        ),
      ),
    bottomNavigationBar: BottomNavigationBar(

      currentIndex: _currentIndex,
      selectedItemColor: Colors.orangeAccent,
      unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.store_mall_directory), label: "Shoping"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
    ],
    onTap: (index){
      setState(() {
        _currentIndex=index;
      });
    },
      ),
    );
  }
}