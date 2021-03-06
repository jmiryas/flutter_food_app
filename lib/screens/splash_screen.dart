import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Image(
                width: 100.0,
                height: 100.0,
                image: AssetImage("images/pizza.png")),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Food App",
              style: TextStyle(
                  fontSize: 25.0,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
