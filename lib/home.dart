import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepage();
}

class _homepage extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: ListView(
        children: [
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  'asset_media/gambar/coba123.jpeg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
                Text('Owner: John Doe'),
                Text('Caption: Beautiful Landscape'),
                Text(
                    'This is a stunning image of a beautiful landscape. It was taken during a hike in the mountains and captures the natural beauty of the area.'),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  'asset_media/gambar/coba123.jpeg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
                Text('Owner: Jane Doe'),
                Text('Caption: Beautiful Cityscape'),
                Text(
                    'This is a stunning image of a beautiful cityscape. It was taken during a trip to the city and captures the vibrant energy of urban life.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
