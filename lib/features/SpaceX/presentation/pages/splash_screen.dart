import 'dart:async';
import 'package:flutter/material.dart';
import 'package:spacex/features/SpaceX/presentation/pages/intro_pages/introScreen1.dart';


class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {


  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => const IntroScreen1()));
    }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
              image: AssetImage('lib/assets/images/images.jpg')),
        ),
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
               Text("Space X" , style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold ,fontSize: 32) ,)
            ],
          ),
        ),
      ),
    );
  }
}
