import 'package:messanger/data/entities/message_entity.dart';

class MessagesByDateEntity {
  final String date;
  final List<MessageEntity> messages;

  const MessagesByDateEntity({required this.date, required this.messages});
}
