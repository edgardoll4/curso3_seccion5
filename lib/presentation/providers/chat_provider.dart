import 'package:flutter/material.dart';
import 'package:curso3_seccion5/domains/entities/message.dart';

class ChetProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: 'Primero', fromWho: FronWho.me),
    Message(text: 'Segundo', fromWho: FronWho.hers),
  ];

  Future<void> sendMessage(String text) async {
    // TODO
  }
}
