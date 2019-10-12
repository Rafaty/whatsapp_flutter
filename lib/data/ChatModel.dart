class Chats{
  String name,image,time,lastMessage;
  int noRead;

  bool sound;
  Chats(this.name,this.image,this.time,this.lastMessage,this.noRead,this.sound);



}

List<Chats> chats = [

  Chats('Rafael Santana','https://avatars0.githubusercontent.com/u/7800240?s=460&v=4','12:00','hey how r u?',6,true),
  Chats('Natalie','https://images.pexels.com/photos/3061138/pexels-photo-3061138.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260','12:00','hey',0,false),
  Chats('Mark','https://adminlte.io/themes/AdminLTE/dist/img/user3-128x128.jpg','12:00','what?',0,false),
  Chats('Flutter','https://yt3.ggpht.com/a/AGF-l7-pLWHhqjLR5ZVoKzV9_eU6IjYrDyhvSLRjsw=s900-c-k-c0xffffffff-no-rj-mo','12:00','hello',8,true),
  Chats('Nadia Carmichael','https://adminlte.io/themes/AdminLTE/dist/img/user7-128x128.jpg','12:00','hey',0,false),
  Chats('Alexander Pierce','https://adminlte.io/themes/AdminLTE/dist/img/user1-128x128.jpg','12:00','hi',0,false),

];

