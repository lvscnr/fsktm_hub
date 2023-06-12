import 'package:flutter/material.dart';
import 'package:fsktm_hub/reusable_widgets/reusable_widgets.dart';
import 'package:fsktm_hub/screens/blocka_screen.dart';
import 'package:fsktm_hub/utils/color_utils.dart';
import 'blockb_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 250,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: ClipPath(
          clipper: CustomShape(),
          child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            color: hexStringToColor("#A478B8"),
            child: Container(
              padding: EdgeInsets.fromLTRB(80, 80, 0, 0),
              child: Text(
                "FSKTM Hub",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text('Block B'),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const blockB(),
                ),
              );
            },
          ),
          ElevatedButton(
            child: const Text('Block B'),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const blockA(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
