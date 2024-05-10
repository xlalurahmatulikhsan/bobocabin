import 'package:flutter/material.dart';
import 'package:my_application/shared/theme.dart';

class SplashScreen extends StatefulWidget {
  final Widget? child;

  const SplashScreen({super.key, this.child});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => widget.child!),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/logo/logobobobox.png', width: 70.0),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/logo/logotextwhite.png',
                    width: 70.0,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              )),
              const Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 20.0,
                  width: 20.0,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
