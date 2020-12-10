
import 'package:stacked/stacked.dart';

class ChatListModel extends BaseViewModel{
  bool isLoading = true;

  List chatList = [{
    "id":1,
    "image":"assets/4.png",
    "name":"Smith Franzen",
    "lastMsg":"Lorem Ipsum is simply dummy text of the printing and typesetting industry",
    "time":"2 min ago",
    "hasUnread":false,
    "unRead": 0
  },{
    "id":2,
    "image":"assets/5.png",
    "name":"Franzen",
    "lastMsg":"Lorem Ipsum is simply dummy text of the printing and typesetting industry",
    "time":"2 min ago",
    "hasUnread":true,
    "unRead": 2
  },{
    "id":3,
    "image":"assets/3.png",
    "name":"Hussein",
    "lastMsg":"Lorem Ipsum is simply dummy text of the printing and typesetting industry",
    "time":"2 min ago",
    "hasUnread":true,
    "unRead": 9
  },{
    "id":4,
    "image":"assets/1.png",
    "name":"Sakhav Iqbal",
    "lastMsg":"Lorem Ipsum is simply dummy text of the printing and typesetting industry",
    "time":"2 min ago",
    "hasUnread":false,
    "unRead": 0
  },{
    "id":5,
    "image":"assets/6.png",
    "name":"Zakkir",
    "lastMsg":"Lorem Ipsum is simply dummy text of the printing and typesetting industry",
    "time":"2 min ago",
    "hasUnread":false,
    "unRead": 0
  },{
    "id":6,
    "image":"assets/7.png",
    "name":"Johan",
    "lastMsg":"Lorem Ipsum is simply dummy text of the printing and typesetting industry",
    "time":"2 min ago",
    "hasUnread":false,
    "unRead": 0
  },
    {
    "id":7,
    "image":"assets/4.png",
    "name":"Ali Muhammed",
    "lastMsg":"Lorem Ipsum is simply dummy text of the printing and typesetting industry",
    "time":"2 min ago",
    "hasUnread":false,
    "unRead": 0
  },];
}