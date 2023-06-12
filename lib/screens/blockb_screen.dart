import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text('Block B'),
      ),
      backgroundColor: Colors.white70,
      body: _BlockBList(),
    );
  }
}

class _BlockBList extends StatelessWidget {
  const _BlockBList({Key? key}) : super(key: key);

  static const _blockBs = const <BlockBDetails>[
    const BlockBDetails(
      title: 'Dewan Kuliah 2',
      details: ' ',
      imageName: 'assets/images/dewan-kuliah-2.jpg',
    ),
    const BlockBDetails(
      title: 'Blockchain Technology Lab',
      details:' ',
      imageName: 'assets/images/blockchain-techno-lab.jpg',
    ),
    const BlockBDetails(
      title: 'Undergraduate Student Lounge',
      details:
          ' ',
      imageName: 'assets/images/undergraduate-student-centre.jpg',
    ),
    const BlockBDetails(
      title: 'B-1-4',
      details: ' ',
      imageName: 'assets/images/b-1-4.jpg',
    ),
    const BlockBDetails(
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
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            roomPicture(blockB.imageName),
            const SizedBox(height: 8),
            Text(
              blockB.title,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 8),
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

Image roomPicture(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 300,
    height: 300,
  );
}
