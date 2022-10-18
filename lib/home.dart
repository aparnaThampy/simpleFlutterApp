import 'package:flutter/material.dart';
import 'constants/assets.dart' as assets_const;
import 'constants/string.dart' as string_const;
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeState createState() => HomeState();

}

class HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        Navigator.pop(context);
            return true;
      },
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(assets_const.registerBg),
              fit: BoxFit.cover),
        ),
        child: const Text( string_const.welcome,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.deepOrangeAccent
          ),
        ),
      ),
    );
  }
}