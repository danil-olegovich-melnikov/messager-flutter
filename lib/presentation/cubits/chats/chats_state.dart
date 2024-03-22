part of 'chats_cubit.dart';

@immutable
sealed class ChatsState extends Equatable {
  late final int myId;
  late final List<MessagesByIdEntity> contacts;

  @override
  List<Object> get props => [];
}

final class ChatsInitial extends ChatsState {
  ChatsInitial() {
    myId = 5;

    contacts = [
      MessagesByIdEntity(
        user: ContactEntity(
          id: 1,
          firstName: 'Данил',
          lastName: 'Мельников',
          status: 'онлайн',
        ),
        messagesByDate: [
          MessagesByDateEntity(
            date: DateEntity.formatDate(DateEntity.todayDate),
            messages: [
              MessageEntity(
                id: 13,
                fromContactId: myId,
                toContactId: 1,
                text: 'Привет! Как твои дела?',
                time: '9:05',
                date: DateEntity.formatDate(DateEntity.todayDate),
                status: MessageStatusEntity.delivered,
              ),
            ],
          ),
          MessagesByDateEntity(
            date: DateEntity.formatDate("10.11.2023"),
            messages: [
              MessageEntity(
                id: 1,
                fromContactId: myId,
                toContactId: 1,
                text: 'Привет! Как твои дела?',
                time: '11:10',
                date: DateEntity.formatDate('10.11.2023'),
                status: MessageStatusEntity.read,
              ),
              MessageEntity(
                id: 2,
                fromContactId: 1,
                toContactId: myId,
                text: 'Привет! У меня все нормально, спасибо! Как у тебя?',
                time: '11:15',
                date: DateEntity.formatDate('10.11.2023'),
                status: MessageStatusEntity.read,
              ),
              MessageEntity(
                id: 3,
                fromContactId: myId,
                toContactId: 1,
                text: 'У меня тоже все хорошо, спасибо!',
                time: '11:20',
                date: DateEntity.formatDate('10.11.2023'),
                status: MessageStatusEntity.read,
              ),
              MessageEntity(
                id: 10,
                fromContactId: myId,
                toContactId: 1,
                text: 'Увидимся вечером',
                time: '11:24',
                date: DateEntity.formatDate('10.11.2023'),
                status: MessageStatusEntity.delivered,
                imageUrl:
                    'https://newdocer.cache.wpscdn.com/photo/20211125/403c3e6ba7834032a92397df250b63f4.jpg',
              ),
            ],
          ),
        ],
      ),
      MessagesByIdEntity(
        user: ContactEntity(
          id: 2,
          firstName: 'Яна',
          lastName: 'Мельникова',
          status: 'недавно был(а) в сети',
        ),
        messagesByDate: [
          MessagesByDateEntity(
            date: DateEntity.formatDate(DateEntity.yesterdayDate),
            messages: [
              MessageEntity(
                id: 5,
                fromContactId: 2,
                toContactId: myId,
                text: 'Давно не общались, ты как?',
                time: '7:26',
                date: DateEntity.formatDate(DateEntity.yesterdayDate),
                status: MessageStatusEntity.read,
              ),
            ],
          ),
          MessagesByDateEntity(
            date: DateEntity.formatDate("10.09.2023"),
            messages: [
              MessageEntity(
                id: 4,
                fromContactId: myId,
                toContactId: 2,
                text: 'Привет! Как дела?',
                time: '7:25',
                date: DateEntity.formatDate('10.09.2023'),
                status: MessageStatusEntity.read,
              ),
              MessageEntity(
                id: 5,
                fromContactId: 2,
                toContactId: myId,
                text: 'Хорошо, ты как?',
                time: '7:26',
                date: DateEntity.formatDate('10.09.2023'),
                status: MessageStatusEntity.read,
              ),
              MessageEntity(
                id: 6,
                fromContactId: myId,
                toContactId: 2,
                text: 'Тоже все хорошо, спасибо!',
                time: '7:26',
                date: DateEntity.formatDate('10.09.2023'),
                status: MessageStatusEntity.read,
              ),
            ],
          ),
        ],
      ),
      MessagesByIdEntity(
        user: ContactEntity(
          id: 3,
          firstName: 'Дима',
          lastName: 'Кобзев',
          status: 'недавно был(а) в сети...',
        ),
        messagesByDate: [
          MessagesByDateEntity(
            date: DateEntity.formatDate("10.09.2023"),
            messages: [
              MessageEntity(
                id: 7,
                fromContactId: myId,
                toContactId: 3,
                text: 'Привет! Какие новости?',
                time: '9:30',
                date: DateEntity.formatDate('10.10.2023'),
                status: MessageStatusEntity.read,
              ),
              MessageEntity(
                id: 8,
                fromContactId: 3,
                toContactId: myId,
                text: 'Тоже ничего особенного, просто занят работой.',
                time: '',
                date: DateEntity.formatDate('10.10.2023'),
                status: MessageStatusEntity.read,
              ),
              MessageEntity(
                id: 10,
                fromContactId: 1,
                toContactId: myId,
                text: 'Удачи. Хорошего дня!',
                time: '11:21',
                date: DateEntity.formatDate('10.11.2023'),
                status: MessageStatusEntity.read,
                imageUrl:
                    'https://i1.sndcdn.com/artworks-khCF4bRgSEzGwaKM-vU32sA-t500x500.jpg',
              ),
            ],
          ),
        ],
      ),
      MessagesByIdEntity(
        user: ContactEntity(
          status: 'был(а) в сети 2 часа назад',
          id: 4,
          firstName: 'Нина',
          lastName: 'Дуброва',
        ),
      ),
    ];
  }
}
