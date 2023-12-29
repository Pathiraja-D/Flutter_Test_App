import 'package:flutter/material.dart';
import 'package:newapp/config/app_icons.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.testback), fit: BoxFit.cover)),
          ),
          Positioned(
            top: height * 0.25,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [
                    Color(0x35283F31),
                    Color(0xFF283F31),
                    Color(0xFF283F31)
                  ],
                ),
              ),
              height: height * 0.75,
              width: width,
              child: ListView(
                children: [
                  Spacer(),
                  Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
width: 328,
decoration: ShapeDecoration(
shape: RoundedRectangleBorder(
side: BorderSide(
width: 1,
strokeAlign: BorderSide.strokeAlignCenter,
color: Colors.white,
),
),
),
)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
