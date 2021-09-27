import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Box myBox;

  @override
  void initState() {
    super.initState();
    myBox = Hive.box('myBox');
    myBox.put('key', 'value');
    var chatBox = Hive.box('chatBox');
    print(chatBox.get('chat'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Home screen'),
    );
  }
}
