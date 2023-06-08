import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pinch_scrollable/pinch_scrollable.dart';

@immutable
class BlockB {
  const BlockB({
    required this.title,
    required this.details,
    required this.imageUrl,
  });

  final String title;
  final String details;
  final String imageUrl;
}

class MyListPage extends StatelessWidget {
  const MyListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinchScrollableArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Block B'),
        ),
        backgroundColor: Colors.white70,
        body: _BlockB(),
      ),
    );
  }
}

class _BlockB extends StatelessWidget {
  const _BlockB({Key? key}) : super(key: key);

  static const _blockB = const <BlockBDetails>[
    const BlockBDetails(
      title: 'B-3-21',
      details:
          'Dr. Nornazlita Hussin',
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
    return ListView.builder(
      itemCount: _museums.length,
      itemBuilder: (BuildContext context, int index) {
        final details = _museums[index];
        final imageKey = GlobalKey();
        return PinchItemContainer(
          imageWidgetKey: imageKey,
          imageUrl: details.imageUrl,
          child: MuseumDetailsWidgetMuseum(
            museum: details,
            imageKey: imageKey,
          ),
        );
      },
    );
  }
}

class MuseumDetailsWidgetMuseum extends StatelessWidget {
  const MuseumDetailsWidgetMuseum({
    Key? key,
    required this.museum,
    required this.imageKey,
  }) : super(key: key);

  final MuseumDetails museum;
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
              imageUrl: museum.imageUrl,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            Text(
              museum.title,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 8),
            Text(
              museum.details,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
