import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:messanger/data/entities/contact_entity.dart';
import 'package:messanger/data/entities/date_entity.dart';
import 'package:messanger/data/entities/message_entity.dart';
import 'package:messanger/data/entities/message_status_entity.dart';
import 'package:messanger/data/entities/messages_by_date_entity.dart';
import 'package:messanger/data/entities/messages_by_id_entity.dart';
import 'package:meta/meta.dart';

part 'chats_state.dart';

class ChatsCubit extends Cubit<ChatsState> {
  ChatsCubit() : super(ChatsInitial());
}
