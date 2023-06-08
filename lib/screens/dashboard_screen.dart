import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: Text("FSKTM HUB"),
        flexibleSpace: Container(
          height: 250,
          width: MediaQuery.of(context).size.width,
          color: hexStringToColor("#A478B8"),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
