import 'package:flutter/material.dart';

void main() {
  runApp(const LogoApp());
}

class LogoApp extends StatelessWidget {
  const LogoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: ClipPath(
            clipper: ATClipper(),
            child: Image.asset(
              'assets/Arunalu.png', // <- your image path here
              width: 300, // adjust size as needed
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

// Create custom clipper for "AT"
class ATClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // Here you need to draw the "A" and "T" shapes manually
    // or load an SVG clip if you have it.

    // Temporary simple rectangle (placeholder):
    path.addRect(Rect.fromLTWH(0, 0, size.width, size.height));

    // TODO: Replace with actual "AT" shape
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
