import 'package:flutter/material.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MoneyInputUI()),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 69, 0, 153),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/money.png',
                width: MediaQuery.of(context).size.width * 0.5,
              ),
              Text(
                'เเชร์เงินกันเถอะ',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.07,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              Text(
                'Create by Gun SAU',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              CircularProgressIndicator(
                color: Color(0xFFFFFFFF),
              ),
            ],
          ),
        ));
  }
}
