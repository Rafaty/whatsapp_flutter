import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_flutter/data/ChatModel.dart';


class ChatBox extends StatefulWidget {
  @override
  _ChatBoxState createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: chats.length,

        itemBuilder: (context, index){
         final chat = chats[index];

         return InkWell(
           onTap: (){},
           child: Container(
               child: Column(
                 children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(top:8.0),
                     child: ListTile(
                       leading: Container(
                         height: 55.00,
                         width: 55.00,
                         decoration: BoxDecoration(
                           color: Colors.transparent,
                           borderRadius: BorderRadius.circular(55.0),
                           image: DecorationImage(
                             image: NetworkImage(
                                chat.image),
                             fit: BoxFit.cover,
                           ),
                         ),
                       ),
                       title:  Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Text(
                             chat.name != null ? chat.name:'no name',
                             style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 18.00),
                           ),
                           Column(
                             children: <Widget>[
                               Text(
                                 chat.time != null ? chat.time:'no time',
                                 style: TextStyle(color: chat.noRead > 0 ? Theme.of(context).accentColor:Colors.grey, fontSize: 14.0),
                               ),

                               Padding(
                                 padding: const EdgeInsets.only(top:10.0),
                                 child: Row(
                                   children: <Widget>[
                                     chat.sound? Icon(FontAwesomeIcons.volumeOff,color: Colors.grey[400],size: 19.00,):Container(),
                                     SizedBox(width: 3.00,),
                                     chat.noRead > 0 ? Badge(
                                       badgeColor: Theme.of(context).accentColor,
                                       badgeContent: Text(chat.noRead.toString(),style: TextStyle(color: Colors.white),),
                                     ):Container(),
                                   ],
                                 ),
                               ),

                             ],
                           ),
                         ],
                       ),
                       subtitle: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text(
                               chat.lastMessage != null ? chat.lastMessage:'no message',
                               style:  TextStyle(color: Colors.grey, fontSize: 15.0),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(top:13.0),
                               child: Divider(height: 2.00,),
                             )
                           ],
                         ),

                     ),
                   ),
                 ],
               )
           ),

         );

        }

    );
  }
}






