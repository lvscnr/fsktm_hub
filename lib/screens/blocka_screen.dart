import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text('Block A'),
      ),
      backgroundColor: Colors.white70,
      body: _BlockAList(),
    );
  }
}

class _BlockAList extends StatelessWidget {
  const _BlockAList({Key? key}) : super(key: key);

  static const _blockAs = const <BlockADetails>[
    const BlockADetails(
      title: 'Dewan Kuliah 2',
      details: ' ',
      imageName: 'assets/images/dewan-kuliah-2.jpg',
    ),
    const BlockADetails(
      title: 'Blockchain Technology Lab',
      details: ' ',
      imageName: 'assets/images/blockchain-techno-lab.jpg',
    ),
    const BlockADetails(
      title: 'Undergraduate Student Lounge',
      details: ' ',
      imageName: 'assets/images/undergraduate-student-centre.jpg',
    ),
    const BlockADetails(
      title: 'A-1-4',
      details: ' ',
      imageName: 'assets/images/a-1-4.jpg',
    ),
    const BlockADetails(
      title: 'A-1-5',
      details: ' ',
      imageName: 'assets/images/a-1-5.jpg',
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
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            roomPicture(blockA.imageName),
            const SizedBox(height: 8),
            Text(
              blockA.title,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 8),
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

Image roomPicture(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 300,
    height: 300,
  );
}
