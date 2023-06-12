import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pinch_scrollable/pinch_scrollable.dart';

@immutable
class BlockBDetails {
  const BlockBDetails({
    required this.title,
    required this.details,
    required this.imageUrl,
  });

  final String title;
  final String details;
  final String imageUrl;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinchScrollableArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Block B'),
        ),
        backgroundColor: Colors.white70,
        body: _BlockBList(),
      ),
    );
  }
}

class _BlockBList extends StatelessWidget {
  const _BlockBList({Key? key}) : super(key: key);

  static const _blockBs = const <BlockBDetails>[
    const BlockBDetails(
      title: 'B-3-21',
      details:
          'The Louvre Museum in Paris is the largest art museum in the world.',
      imageUrl:
          'https://image.wmsm.co/eef1ef270f8045c067c3646caa7047b3/louvre-museum-paris-1.jpg?quality=80&width=1280',
    ),
    const BlockBDetails(
      title: 'Musée Rodin',
      details:
          'Visit the former workshop of the founder of modern sculpting - Auguste Rodin. Opened in 1919, the Musée Rodin museum houses a great collection of his works.',
      imageUrl:
          'https://image.wmsm.co/644942ebccdd976e0a4cf9b86844216b/musee-rodin-paris-1.jpg?quality=80&width=1280',
    ),
    const BlockBDetails(
      title: 'City of Paris Fine Art Museum',
      details:
          'The City of Paris Fine Art Museum is housed in the Petit Palais in Paris, which was built for the 1900 World\'s Fair by the architect Charles Girault.',
      imageUrl:
          'https://image.wmsm.co/a80749b800d2cecffada73c87b236635/city-of-paris-fine-art-museum-1.jpg?quality=80&width=1280',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: _blockBs.length,
        itemBuilder: (BuildContext context, int index) {
          final blockB = _blockBs[index];
          final imageKey = GlobalKey();
          return PinchItemContainer(
            imageWidgetKey: imageKey,
            imageUrl: blockB.imageUrl,
            child: BlockBDetailsWidgetBlockB(
              blockB: blockB,
              imageKey: imageKey,
            ),
          );
        },
      ),
    );
  }
}

class BlockBDetailsWidgetBlockB extends StatelessWidget {
  const BlockBDetailsWidgetBlockB({
    Key? key,
    required this.blockB,
    required this.imageKey,
  }) : super(key: key);

  final BlockBDetails blockB;
  final GlobalKey imageKey;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CachedNetworkImage(
              key: imageKey,
              imageUrl: blockB.imageUrl,
              fit: BoxFit.cover,
            ),
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
