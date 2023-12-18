import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      _buildButtonColumn(color, Icons.phone, "CALL"),
      _buildButtonColumn(color, Icons.route, "ROUTE"),
      _buildButtonColumn(color, Icons.share, "SHARE"),
    ]);
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    children: [
      Icon(
        icon,
        color: color,
      ),
      const SizedBox(height: 8,),
      Text(
        label,
        style: TextStyle(
          color: color,
        ),
      ),
    ],
  );
}
