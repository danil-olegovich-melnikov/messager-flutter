import 'package:messanger/data/entities/contact_entity.dart';
import 'package:messanger/data/entities/message_entity.dart';
import 'package:messanger/data/entities/messages_by_date_entity.dart';

class MessagesByIdEntity {
  final ContactEntity user;
  final List<MessagesByDateEntity> messagesByDate;

  const MessagesByIdEntity({
    required this.user,
    this.messagesByDate = const [],
  });

  MessageEntity? get lastMessage {
    return messagesByDate.isNotEmpty ? messagesByDate[0].messages.last : null;
  }
}
