import 'package:flutter/material.dart';
import 'package:fsktm_hub/reusable_widgets/navbar.dart';
import 'package:fsktm_hub/reusable_widgets/reusable_widgets.dart';
import 'package:fsktm_hub/utils/color_utils.dart';

@immutable
class BlockADetails {
  const BlockADetails({
    required this.title,
    required this.details,
    required this.imageName,
  });

  final String title;
  final String details;
  final String imageName;
}

class BlockA extends StatelessWidget {
  const BlockA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        toolbarHeight: 60,
        centerTitle: true,
        backgroundColor: hexStringToColor("A478B8"),
        title: Text(
          "Block A",
          style: TextStyle(
            color: hexStringToColor("FFFFFF"),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      backgroundColor: hexStringToColor("F7E7FB"),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
        child: _BlockAList(),
      ),
    );
  }
}

class _BlockAList extends StatelessWidget {
  const _BlockAList({Key? key}) : super(key: key);

  static const _blockAs = <BlockADetails>[
    BlockADetails(
      title: 'Cube',
      details: ' ',
      imageName: 'assets/images/dewan-kuliah-2.jpg',
    ),
    BlockADetails(
      title: 'Bilik Kuliah',
      details: ' ',
      imageName: 'assets/images/blockchain-techno-lab.jpg',
    ),
    BlockADetails(
      title: 'Postgraduate Lounge',
      details: ' ',
      imageName: 'assets/images/undergraduate-student-centre.jpg',
    ),
    BlockADetails(
      title: 'Micro Lab 1',
      details: ' ',
      imageName: 'assets/images/b-1-4.jpg',
    ),
    BlockADetails(
      title: 'Micro Lab 2',
      details: ' ',
      imageName: 'assets/images/b-1-5.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: _blockAs.length,
        itemBuilder: (BuildContext context, int index) {
          final blockA = _blockAs[index];
          return BlockADetailsWidgetBlockA(blockA: blockA);
        },
      ),
    );
  }
}

class BlockADetailsWidgetBlockA extends StatelessWidget {
  const BlockADetailsWidgetBlockA({
    Key? key,
    required this.blockA,
  }) : super(key: key);

  final BlockADetails blockA;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            roomPicture(blockA.imageName),
            Text(
              blockA.title,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: hexStringToColor("A478B8"),
                shadows: const [
                  Shadow(
                    color: Colors.black26,
                    offset: Offset(0, 0),
                    blurRadius: 2,
                  ),
                ],
              ),
            ),
            Text(
              blockA.details,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
