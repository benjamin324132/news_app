import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 23.0,
      backgroundImage: NetworkImage('https://via.placeholder.com/150'),
      backgroundColor: Colors.transparent,
    );
  }
}
