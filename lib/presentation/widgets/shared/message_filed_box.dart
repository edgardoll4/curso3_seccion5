import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();
    final colors = Theme.of(context).colorScheme;
    final outlineInputBorder = UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(5));
    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "??',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
          onPressed: () {
            final textValue = textController.value.text;
            print('Valor del input: $textValue');
            textController.clear();
          },
          icon: Icon(Icons.send_outlined)),
    );
    return TextFormField(
      // keyboardType: TextInputType.multiline,
      focusNode: focusNode,
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Valor enviado: $value');
        textController.clear();
        focusNode.requestFocus();
      },
      // onChanged: (value) {
      //   print('Valor cambiado: $value');
      // },
    );
  }
}
