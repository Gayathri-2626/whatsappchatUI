import 'package:flutter/material.dart';
import 'package:whatsapp_chat/user.dart';

class ChatList extends StatelessWidget {
  List <User> list=[
    User("Gayathri", "Good Morning buddy", "11:11AM","images/jayalalitha.png"),
    User("Kishore guru", "Can i call you?", "10:10AM","images/kalam.png"),
    User("Iyshu Akka", "Be Calm", "12:12AM","images/avatar-1.jpg"),
    User("Mohamad Aqeel", "I Need Peace", "01:05PM","images/thara.png"),
    User("Subash", "Poi Thoongu po", "05:39PM","images/avatar-2.jpg"),
    User("Gayathri", "Mudiyala....", "07:12PM","images/bellie2.jpg"),
    User("Kishore guru", "Enna Pandra?", "08:22PM","images/jayalalitha.png"),
    User("Iyshu Akka", "Zandaaaaaaa", "11:11PM","images/images/kalam.png"),
    User("Mohamad Aqeel", "What's your problem?", "12:11AM","images/bellie.jpg"),
    User("Subash", "Cool Buddy", "11:11AM","images/thara.png"),

  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: list.length,
       itemBuilder: (BuildContext context, int index)=>new Column(
      children: [
        new Divider(height: 0.1,),
        new ListTile(
          leading:  CircleAvatar(
                backgroundImage: AssetImage(list[index].dp),
        ),
          title: Text(list[index].userName),
          subtitle: Text(list[index].lastMessage),
          trailing: Text(list[index].time),
        ),
      ],
    )
      //     return ListTile(
      //       leading: CircleAvatar(
      //         backgroundImage: AssetImage(list[index].dp),
      //       ),
      //       title: Text(list[index].userName),
      //       subtitle: Text(list[index].lastMessage),
      //       trailing: Text(list[index].time),
      //     );
    );
  }
}
