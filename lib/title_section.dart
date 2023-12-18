import 'package:flutter/material.dart';
import 'package:layout/favourite_widget.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: const Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  "Oeschinen Lake Campground",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "Kandersteg, Switzerland",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
        FavouriteWidget(),
      ]),
    );

    // return  const ListTile(
    //             title: Text('Oeschinen Lake Campground'),
    //             subtitle: Text("Kandersteg, Switzerland"),
    //             trailing: Row(
    //               mainAxisSize: MainAxisSize.min,
    //               children: <Widget>[
    //                 Icon(Icons.star,
    //                 color: Colors.red,),
    //                 Text('41'),
    //               ],
    //             ),
    //           );
  }
}
