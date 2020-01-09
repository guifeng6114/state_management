import 'package:flutter/material.dart';

class StateAndPropsPage extends StatefulWidget {

  @override
  _StateAndPropsState createState() => _StateAndPropsState();

}

class _StateAndPropsState extends State<StateAndPropsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State & Props'),
        centerTitle: true,
      ),
      body: _buildBody()
    );
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // WithStateWidget(),
          WithoutStateWidget(3)
        ],
      ),
    );
  }

}

class WithoutStateWidget extends StatelessWidget {

  final int count;

  WithoutStateWidget(this.count);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 30.0),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black26),
      ),
      child: Column(
        children: <Widget>[
          Text(
            'Widget Without State',
            style: TextStyle(
              fontSize: 24.0
            ),
          ),
          Expanded(
            child: Center(
              child:  Text(
                'count: $count',
                style: TextStyle(
                  fontSize: 24.0
                )
              ),
            ),
          )
        ],
      ),
    );
  }

}