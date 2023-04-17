import 'package:curso3_seccion5/presentation/widgets/chat/her_message_bubble.dart';
import 'package:curso3_seccion5/presentation/widgets/chat/my_message_bubble.dart';
import 'package:curso3_seccion5/presentation/widgets/shared/message_filed_box.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://mediaproxy.tvtropes.org/width/350/https://static.tvtropes.org/pmwiki/pub/images/shaka_zulu.jpg'),
          ),
        ),
        title: const Text('Yayito Shaka Zulu'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemBuilder: (context, index) {
                final testMessga = (index % 2 == 0) ? true : false;
                return (index % 2 == 0)
                    ? HerMessageBubble(
                        index: index,
                        // fromMe: testMessga,
                      )
                    : MyMessageBubble(
                        index: index,
                        // fromMe: testMessga,
                      );
              },
            )),
            MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
