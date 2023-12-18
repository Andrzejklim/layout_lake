import 'package:flutter/material.dart';

class FavouriteWidget extends StatefulWidget {
  const FavouriteWidget({super.key});

  @override
  State<FavouriteWidget> createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget> {
  int counter = 41;
  bool isLiked = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              if (isLiked) {
                isLiked = false;
                counter--;
              } else {
                isLiked = true;
                counter++;
              }
            });
          },
          child: Icon(
            isLiked ? Icons.star : Icons.star_border,
            color: Colors.red,
          ),
        ),
        Text(counter.toString())
      ],
    );
  }
}
