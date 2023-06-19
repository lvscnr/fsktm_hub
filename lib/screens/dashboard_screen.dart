import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fsktm_hub/reusable_widgets/navbar.dart';
import 'package:fsktm_hub/reusable_widgets/reusable_widgets.dart';
import 'package:fsktm_hub/utils/color_utils.dart';

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
      drawer: NavBar(),
      appBar: AppBar(
        toolbarHeight: 60,
        centerTitle: true,
        backgroundColor: hexStringToColor("A478B8"),
        title: Text(
          "FSKTM HUB",
          style: TextStyle(
            color: hexStringToColor("FFFFFF"),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
        children: [
          displayimage1(context),
          SizedBox(
            height: 40,
          ),
          displayimage2(context),
        ],
      ),
    );
  }
}
