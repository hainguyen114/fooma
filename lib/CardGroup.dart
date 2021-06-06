import 'package:flutter/material.dart';

class CardGroup extends StatefulWidget {
  const CardGroup({Key? key}) : super(key: key);

  @override
  State<CardGroup> createState() => _CardGroup();
}

class _CardGroup extends State<CardGroup> {
  bool _isFavorited = false;
  int _favoriteCount = 0;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, right: 15),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 40),
                  child: CircleAvatar(
                    backgroundColor: Colors.brown.shade800,
                    child: const Text('AH'),
                  ),
                ),
                Icon(
                  Icons.messenger_rounded,
                  color: Color(0xffff4d94),
                ),
                Text('200'),
                Container(
                  padding: EdgeInsets.all(0),
                  child: IconButton(
                    padding: EdgeInsets.all(0),
                    alignment: Alignment.center,
                    icon: (_isFavorited
                        ? Icon(Icons.check_circle_rounded)
                        : Icon(Icons.check_circle_outline_rounded)),
                    color: Color(0xffff4d94),
                    onPressed: _toggleFavorite,
                  ),
                ),
                SizedBox(
                  width: 18,
                  child: Container(
                    child: Text(
                      '$_favoriteCount',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Card(
              /*1*/
              child: Container(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/lake2.jpg',
                      width: 400,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                    /*2*/
                    Container(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Text(
                        'Oeschinen Lake Campground',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'Kandersteg, Switzerland, Không biết viết gì nên ghi đại vài dòng demo thôi :v',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
