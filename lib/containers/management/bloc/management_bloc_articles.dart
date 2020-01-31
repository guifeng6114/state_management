
import 'package:flutter/material.dart';
import 'package:state_management/components/demo_component/article_item.dart';
import 'package:state_management/components/demo_component/drawer_component.dart';

class ManagementBlocArticlesPage extends StatefulWidget {

  @override
  _ManagementBlocArticlesPageState createState() => _ManagementBlocArticlesPageState();

}

class _ManagementBlocArticlesPageState extends State<ManagementBlocArticlesPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Article List'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/management/bloc-submit',
                arguments: 'Article'
              );
            },
          )
        ],
      ),
      drawer: DrawerComponent(logout: _logout,),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      child: ListView.separated(
        padding: EdgeInsets.only(left: 16.0),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ArticleItem();
        },
        separatorBuilder: (BuildContext context, int index) => Divider(
          height: 0.5,
          color: Colors.black26,
        )
      ),
    );
  }

  void _logout() {
    Navigator.of(context).pushReplacementNamed('/management/bloc-login');
  }

}