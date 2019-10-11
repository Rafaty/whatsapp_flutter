import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ItemTab extends StatefulWidget {
  String text;
  int notification;

  ItemTab(this.text, this.notification);

  @override
  _ItemTabState createState() => _ItemTabState();
}

class _ItemTabState extends State<ItemTab> {
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        children: <Widget>[
          Text(widget.text),
          SizedBox(
            width: 6.0,
          ),
          widget.notification > 0
              ? Badge(
                  badgeColor: Colors.white,
                  badgeContent: Text(widget.notification.toString()),
                )
              : Container(),
        ],
      ),
    );
  }
}
