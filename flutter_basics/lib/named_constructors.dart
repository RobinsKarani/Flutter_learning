import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? imageUrl;
  final Color? backgroundColor;

  // Default Constructor
  CardWidget({
    required this.title,
    required this.subtitle,
    this.imageUrl,
    this.backgroundColor,
  });

  // Named Constructor 'PrimaryCard'
  CardWidget.primaryCard({
    required this.title,
    required this.subtitle,
    this.backgroundColor = Colors.blue,
  });

  // Named Constructor 'ImageCard'
  CardWidget.imageCard({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Column(
        children: <Widget>[
          if (imageUrl != null)
            Image.network(
              imageUrl!,
              height: 150,
              fit: BoxFit.cover,
            ),
          ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Named Constructors Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CardWidget(
              title: 'Basic Card',
              subtitle: 'This is a basic card',
            ),
            SizedBox(height: 20),
            CardWidget.primaryCard(
              title: 'Primary Card',
              subtitle: 'This is a primary card',
            ),
            SizedBox(height: 20),
            CardWidget.imageCard(
              title: 'Image Card',
              subtitle: 'This is an image card',
              imageUrl: 'https://via.placeholder.com/150',
            ),
          ],
        ),
      ),
    ),
  ));
}
