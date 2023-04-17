enum FronWho { me, hers }

class Message {
  final String text;
  final String? imageUrl;
  final FronWho fromWho;
  final DateTime? dateSend;
  final bool? readUser;
  Message(
      {this.dateSend,
      this.readUser,
      required this.text,
      this.imageUrl,
      required this.fromWho});
}
