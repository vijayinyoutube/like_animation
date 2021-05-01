import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LikeButton(
          onTap: onLikeButtonTapped,
          size: 150.00,
          circleColor: CircleColor(
            start: Color(0xFF00E67E),
            end: Color(0xFF69F0AA),
          ),
          bubblesColor: BubblesColor(
            dotPrimaryColor: Color(0xFF00E676),
            dotSecondaryColor: Color(0xFF69F0A1),
          ),
          likeBuilder: (bool isLiked) {
            return Icon(
              Icons.done_rounded,
              color: isLiked ? Colors.greenAccent : Colors.grey,
              size: 150.00,
            );
          },
        ),
      ),
    );
  }

  Future<bool> onLikeButtonTapped(bool isLiked) async {
    return !isLiked;
  }
}
