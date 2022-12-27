import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage()
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _array = [];
  String imagePath = 'https://thiscatdoesnotexist.com';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemBuilder: (context, i) {
              //imagePath = 'https://picsum.photos/200';
          return Column(
              children: [
                ListTile(
                  title: Text('Hi'),
                  subtitle: Image.network(imagePath),
                ),
                Divider(),
              ]
          );
        })
        ),
    );
  }
}
