import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'CardGroup.dart';
import 'TopBar.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPage();
}

/// This is the private State class that goes with MyStatefulWidget.
class _FirstPage extends State<FirstPage> {
  bool _pinned = false;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: _pinned,
          snap: _snap,
          floating: _floating,
          expandedHeight: 160.0,
          backwardsCompatibility: false,
          backgroundColor: Color(0x4fd4c4d4),
          systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
            statusBarColor: Colors.transparent,
          ),
          flexibleSpace: const FlexibleSpaceBar(
            // title: Text('My Name'),
            background: TopBar(),
            collapseMode: CollapseMode.parallax,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                color: Color(0x4fd4c4d4),
                child: CardGroup(),
              );
            },
            childCount: 20,
          ),
        ),
      ],
    );
    // return Container(
    //   child: ListView(
    //     children: [
    //       CardGroup(),
    //     ],
    //   ),
    // );
  }
}
