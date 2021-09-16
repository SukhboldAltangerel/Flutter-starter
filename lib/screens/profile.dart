import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  final String? id;

  const ProfileScreen({Key? key, required this.id}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var userId;

  @override
  void initState() {
    super.initState();
    userId = widget.id;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Profile screen $userId'),
    );
  }
}
