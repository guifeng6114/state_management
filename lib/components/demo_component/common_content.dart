
import 'package:flutter/material.dart';

class CommonContent extends StatelessWidget {

  final String content2 = '归去来兮，请息交以绝游。世与我而相违，复驾言兮焉求？悦亲戚之情话，乐琴书以消忧。农人告余以春及，将有事于西畴。或命巾车，或棹孤舟。既窈窕以寻壑，亦崎岖而经丘。木欣欣以向荣，泉涓涓而始流。善万物之得时，感吾生之行休。';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        content2,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black
        ),
        maxLines: 10,
        overflow: TextOverflow.ellipsis,
      )
    );
  }

}