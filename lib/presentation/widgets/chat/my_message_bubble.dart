import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  final int index;
  // final bool fromMe;
  const MyMessageBubble({
    super.key,
    this.index = 0,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      // fromMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
              color: colors
                  .primary, // borderRadius: BorderRadius.all(Radius.circular(10))
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Text(
              'My message # $index',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        // SizedBox(
        //   height: 6,
        // )
      ],
    );
  }
}
