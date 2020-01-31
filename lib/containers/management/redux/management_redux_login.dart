
import 'package:flutter/material.dart';
import 'package:state_management/components/demo_component/flutter_logo.dart';

class ManagementReduxLoginPage extends StatefulWidget {

  @override
  _ManagementReduxLoginPageState createState() => _ManagementReduxLoginPageState();

}

class _ManagementReduxLoginPageState extends State<ManagementReduxLoginPage> {

  TextEditingController _loginTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildLoginArea()
      ],
    );
  }

  Widget _buildLoginArea() {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          FlutterLogoWidget(),
          userNameInput(),
          buttonArea()
        ],
      ),
    );
  }

  Widget userNameInput() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
      child: TextField(
        controller: _loginTextController,
        autofocus: false,
        decoration: InputDecoration(
          labelText: 'Username or Email',
          hintText: 'Input username'
        )
      ),
    );
  }

  Widget buttonArea() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: RaisedButton(
        padding: EdgeInsets.symmetric(horizontal: 131.0, vertical: 12.0),
        child: Text('Login', style: TextStyle(
          color: Colors.white,
          fontSize: 20.0
        )),
        onPressed: () {
          print(_loginTextController.text);
          Navigator.of(context).pushReplacementNamed('/management/redux-articles');
        },
        color: Colors.blue,
      ),
    );
  }

}