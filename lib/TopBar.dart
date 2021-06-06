import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBar();
}

class _TopBar extends State<TopBar> {
  void _addButtonPressed() {}

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 10),
            child: CircleAvatar(
              radius: 26.0,
              backgroundColor: Color(0xffff6699),
              child: const Text('AH'),
            ),
          ),
          Expanded(
            child: Container(
              child: Text('Tên gì đó', style: Theme.of(context).textTheme.headline5),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: FloatingActionButton(
              onPressed: _addButtonPressed,
              backgroundColor: Color(0xff9966ff),
              child: const Icon(Icons.add),
            ),
          ),
        ],
      );
  }
}
