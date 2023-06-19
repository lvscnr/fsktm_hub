import 'package:flutter/material.dart';
import 'package:fsktm_hub/reusable_widgets/reusable_widgets.dart';
import 'package:fsktm_hub/utils/color_utils.dart';
import '../reusable_widgets/navbar.dart';

@immutable
class BlockBDetails {
  const BlockBDetails({
    required this.title,
    required this.details,
    required this.imageName,
  });

  final String title;
  final String details;
  final String imageName;
}

class BlockB extends StatelessWidget {
  const BlockB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        toolbarHeight: 60,
        centerTitle: true,
        backgroundColor: hexStringToColor("A478B8"),
        title: Text(
          "Block B",
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
        child: _BlockBList(),
      ),
    );
  }
}

class _BlockBList extends StatelessWidget {
  const _BlockBList({Key? key}) : super(key: key);

  static const _blockBs = <BlockBDetails>[
    BlockBDetails(
      title: 'Dewan Kuliah 2',
      details: ' ',
      imageName: 'assets/images/dewan-kuliah-2.jpg',
    ),
    BlockBDetails(
      title: 'Blockchain Technology Lab',
      details: ' ',
      imageName: 'assets/images/blockchain-techno-lab.jpg',
    ),
    BlockBDetails(
      title: 'Undergraduate Student Lounge',
      details: ' ',
      imageName: 'assets/images/undergraduate-student-centre.jpg',
    ),
    BlockBDetails(
      title: 'B-1-4',
      details: ' ',
      imageName: 'assets/images/b-1-4.jpg',
    ),
    BlockBDetails(
      title: 'B-1-5',
      details: ' ',
      imageName: 'assets/images/b-1-5.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: _blockBs.length,
        itemBuilder: (BuildContext context, int index) {
          final blockB = _blockBs[index];
          return BlockBDetailsWidgetBlockB(blockB: blockB);
        },
      ),
    );
  }
}

class BlockBDetailsWidgetBlockB extends StatelessWidget {
  const BlockBDetailsWidgetBlockB({
    Key? key,
    required this.blockB,
  }) : super(key: key);
  final BlockBDetails blockB;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            roomPicture(blockB.imageName),
            Text(
              blockB.title,
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
              blockB.details,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
