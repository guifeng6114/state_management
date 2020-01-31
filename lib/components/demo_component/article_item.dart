
import 'package:flutter/material.dart';

import 'common_content.dart';
import 'common_footer.dart';
import 'common_header.dart';

class ArticleItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 10.0, right: 20.0, left: 10.0),
      child: Column(
        children: <Widget>[
          CommonHeader(),
          CommonContent(),
          CommonFooter()
        ],
      ),
    );
  }

}