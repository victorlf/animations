import 'package:animations/widgets/expandable_tile.dart';
import 'package:flutter/material.dart';

class MyScrollView extends StatefulWidget {
  const MyScrollView({Key? key}) : super(key: key);

  static String routeName = '/my_scroll_view';

  @override
  _MyScrollViewState createState() => _MyScrollViewState();
}

class _MyScrollViewState extends State<MyScrollView> {
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('MyScrollView'),
        ),
        body: ListView.builder(
            controller: _controller,
            itemCount: 50,
            itemBuilder: (context, index) {
              return ExpandableTile(
                title: 'My expansion tile $index',
                index: index,
                controller: _controller,
              );
            }),
      ),
    );
  }
}
