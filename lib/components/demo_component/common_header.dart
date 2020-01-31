import 'package:flutter/material.dart';

class CommonHeader extends StatelessWidget {

  final bool hideAvatar;

  CommonHeader({ this.hideAvatar = false });

  @override
  Widget build(BuildContext context) {

    return Row(
      children: <Widget>[
        Offstage(
          offstage: hideAvatar,
          child: SizedBox(
            width: 22.0,
            height: 22.0,
            child: Container(
              decoration: ShapeDecoration(
                color: Colors.teal[600],
                shape: CircleBorder(),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 6.0),
              child: Text('Shadow Tricker', style: TextStyle(
                fontSize: 16.0,
                color: Colors.blue
              )
            ),
          ),
        ),
        Container(
          child: Text(
            '1991-02-26',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black45
            ),
          ),
        )
        
      ],
    );
  } 

}