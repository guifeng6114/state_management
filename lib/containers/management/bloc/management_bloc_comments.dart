import 'package:flutter/material.dart';
import 'package:state_management/components/demo_component/comment_item.dart';
import 'package:state_management/components/demo_component/common_content.dart';
import 'package:state_management/components/demo_component/common_header.dart';

class ManagementBlocCommentsPage extends StatefulWidget {

  @override
  _ManagementBlocCommentsPageState createState() => _ManagementBlocCommentsPageState();

}

class _ManagementBlocCommentsPageState extends State<ManagementBlocCommentsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/management/bloc-submit',
                arguments: 'Comment'
              );
            },
          )
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      width: double.infinity,
      child: ListView(
        padding: EdgeInsets.only(top: 10.0, right: 20.0, left: 20.0, bottom: 30.0),
        shrinkWrap: true, 
        children: <Widget>[
          CommonHeader(),
          CommonContent(),
          _buildComments(),
        ],
      )
    );
  }

  Widget _buildComments() {

    return ListView.separated(
      shrinkWrap: true, 
      itemCount: 2,
      itemBuilder: (context, int index) {
        return CommentItem();
      },
      separatorBuilder: (context, int index) => Divider(
        height: .5,
        color: Colors.black38
      ),
    );
  }
}