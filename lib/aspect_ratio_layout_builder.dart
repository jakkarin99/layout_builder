import 'package:flutter/material.dart';

class AspectRatioLayoutBuilder extends StatelessWidget {
  const AspectRatioLayoutBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.1,
        vertical: screenHeight * 0.1,
      ),
      child: Center(
        child: AspectRatio(
          aspectRatio: 1.5,
          child: Container(
            color: Colors.green[200],
            child: LayoutBuilder(builder: (context, constraints) {
              final wideEnough = constraints.maxWidth > 350;
              return FlutterLogo(
                style: wideEnough
                    ? FlutterLogoStyle.horizontal
                    : FlutterLogoStyle.markOnly,
              );
            }),
          ),
        ),
      ),
    );
  }
}