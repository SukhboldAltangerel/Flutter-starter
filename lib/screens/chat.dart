import 'package:flutter/material.dart';
import 'package:flutter_application_2/utilities/fetch.dart';
import 'package:flutter_application_2/utilities/graphql/queries.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late List chat;

  @override
  void initState() {
    super.initState();
    fetchChat();
  }

  void fetchChat() async {
    var res = await fetchQuery(getChatRedis);
    setState(() {
      chat = res['getChatRedis'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Chat screen'),
    );
  }
}
