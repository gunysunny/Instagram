import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'body.dart';

void main() {
  runApp(const InstaCloneApp());
}
 class InstaCloneApp extends StatelessWidget {
  const InstaCloneApp({super.key});



  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.white,
          secondary: Colors.black,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: const InstaCloneHome(),
    );
  }
 }



 class InstaCloneHome extends StatefulWidget{
  const InstaCloneHome({super.key});

  @override
  State<InstaCloneHome> createState() => _InstaCloneHomeState();
}




class _InstaCloneHomeState extends State<InstaCloneHome> {
  late int index;

  @override
  void initState(){
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: index == 0 ?PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey, // 그림자 색상
                blurRadius: 4, // 흐림 정도
                offset: Offset(0, 2), // x, y 방향 이동
              ),
            ],
          ),
          child: AppBar(
            title: Text(
              'Instagram',
              style: GoogleFonts.lobsterTwo(color: Colors.black, fontSize: 32),
            ),
            centerTitle: false,
            elevation: 0, // 기본 elevation 제거
            backgroundColor: Colors.transparent, // 배경 투명화
            actions: [
              IconButton(icon: const Icon(Icons.favorite_outline, size: 32), onPressed: () {
                print('Tap');
              },),
              IconButton(icon: const Icon(CupertinoIcons.paperplane, size: 32,), onPressed: (){
                print('Tap');
              },),
            ],
          ),
        ),
      ) : null,
      body: InstaBody(index:index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (newIndex){
          setState(() {
            index = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 28,), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search, size: 28,), label: 'search'),
        ]
      ),
    );
  }
}


