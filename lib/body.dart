import 'package:campusproject1/screen/home_screen.dart';
import 'package:campusproject1/screen/search_screen.dart';
import 'package:flutter/cupertino.dart';

class InstaBody extends StatelessWidget {
  final int index;
  const InstaBody({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    if (index == 0){
      return const HomeScreen();
    }
    return const SearchScreen();
  }
}
