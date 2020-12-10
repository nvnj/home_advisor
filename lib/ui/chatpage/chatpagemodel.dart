import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import 'recievedmsg.dart';
import 'sentmsg.dart';

class ChatPageModel extends BaseViewModel{

  var childList = <Widget>[];
  ChatPageModel(){
    childList.add(Align(
        alignment: Alignment(0, 0),
        child: Container(
          margin: const EdgeInsets.only(top: 5.0),
          height: 25,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              )),
          child: Center(
              child: Text(
                "Today",
                style: TextStyle(fontSize: 11),
              )),
        )));
    childList.add(Align(
      alignment: Alignment(1, 0),
      child: SendedMessageWidget(
        content: 'Hi Hussein',

        isImage: false,
      ),
    ));
    childList.add(Align(
      alignment: Alignment(1, 0),
      child: ReceivedMessageWidget(
        content: 'Hi Franzen',

        isImage: false,
      ),
    ));
    childList.add(Align(
      alignment: Alignment(-1, 0),
      child: SendedMessageWidget(
        content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',

        isImage: false,
      ),
    ));
    childList.add(Align(
      alignment: Alignment(1, 0),
      child: ReceivedMessageWidget(
        content:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',

        isImage: false,
      ),
    ));
  }

}