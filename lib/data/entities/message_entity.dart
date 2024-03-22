import 'package:messanger/data/entities/message_status_entity.dart';

class MessageEntity {
  final int id;
  final int fromContactId;
  final int toContactId;
  final String text;
  final String? imageUrl;
  final String time;
  final String date;
  final MessageStatusEntity status;

  MessageEntity({
    required this.id,
    required this.fromContactId,
    required this.toContactId,
    required this.text,
    required this.date,
    required this.time,
    required this.status,
    this.imageUrl,
  });

  String get displayDate {
    return date;
  }
}
