import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fsktm_hub/screens/blockb_screen.dart';

import '../screens/blocka_screen.dart';

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 200,
    height: 100,
  );
}

Image logoWidgetSplash(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 300,
    height: 300,
  );
}

Image roomPicture(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 300,
    height: 300,
  );
}

Image blockPicture(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 600,
    height: 300,
  );
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height - 70);
    path.quadraticBezierTo(width / 2, height, width, height - 70);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

Material displayimage1(BuildContext context) {
  return Material(
    elevation: 10,
    borderRadius: BorderRadius.circular(30),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: InkWell(
      splashColor: Colors.black26,
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const BlockA(),
          ),
        );
      },
      child: Ink.image(
        image: AssetImage('assets/images/blok-a.jpg'),
        height: 200,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.25), BlendMode.srcOver),
        fit: BoxFit.cover,
        child: Center(
          child: Text(
            'Block A',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}

Material displayimage2(BuildContext context) {
  return Material(
    elevation: 10,
    borderRadius: BorderRadius.circular(30),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: InkWell(
      splashColor: Colors.black26,
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const BlockB(),
          ),
        );
      },
      child: Ink.image(
        image: AssetImage('assets/images/Blok-B.jpg'),
        height: 200,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.25), BlendMode.srcOver),
        fit: BoxFit.cover,
        child: Center(
          child: Text(
            'Block B',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}
