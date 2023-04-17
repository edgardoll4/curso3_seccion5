import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  final int index;
  // final bool fromMe;
  const HerMessageBubble({
    super.key,
    this.index = 0,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // fromMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
              color: colors
                  .secondary, // borderRadius: BorderRadius.all(Radius.circular(10))
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Text(
              'Your message # $index',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        _ImagenBubble(),
        SizedBox(
          height: 10,
        )
        // TODO Images
      ],
    );
  }
}

class _ImagenBubble extends StatelessWidget {
  const _ImagenBubble({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://techcrunch.com/wp-content/uploads/2014/06/surprised-andy.gif',
        width: size.width * .7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }

          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        },
      ),
    );
  }
}
