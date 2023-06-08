import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 100,
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

//edit this part
TextField reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.white,
    style: GoogleFonts.poppins(
      color: Colors.black.withOpacity(0.6),
      fontSize: 14,
    ),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.black54,
      ),
      labelText: text,
      labelStyle: TextStyle(
        color: Colors.black.withOpacity(0.6),
        fontWeight: FontWeight.w800,
      ),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: const BorderSide(width: 0, style: BorderStyle.none),
      ),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
    controller: controller,
  );
}

Container reusableButton(BuildContext context, bool isLogin, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width / 1.1,
    height: 60,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(90),
    ),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black26;
            }
            return const Color.fromARGB(255, 209, 118, 124);
          },
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
      child: Text(
        isLogin ? 'Sign In' : 'Sign Up',
        style: GoogleFonts.poppins(
          color: const Color.fromARGB(255, 255, 255, 255),
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      ),
    ),
  );
}
