import 'package:chat/components/filled_outline_button.dart';
import 'package:chat/constants.dart';
import 'package:chat/models/Chat.dart';
import 'package:chat/screens/messages/message_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'chat_card.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    /// getChats();
  }

  /*getChats() async {
    setState(() {
      _isLoading = true;
    });

    QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection('chats').get();

    setState(() {
      _isLoading = false;
      chats = snapshot.docs.map((doc) => Chat.fromJson(doc)).toList();
      print(chats.length);
      print("snapshot.docs");
      print(chats[0]);
    });
  }
*/
  @override
 Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: "Recent Message"),
              SizedBox(width: kDefaultPadding),
              FillOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessagesScreen(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
