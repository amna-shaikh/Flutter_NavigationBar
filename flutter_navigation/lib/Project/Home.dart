import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static Widget Homebody = UserListView();

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  IconData mybutton = Icons.add;
  bool isloginView = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home.Homebody,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (isloginView) {
              mybutton = Icons.add;
              isloginView = false;
              Home.Homebody = UserListView();
            } else {
              isloginView = true;
              mybutton = Icons.clear;
              Home.Homebody = UserLoginView();
            }
          });
        },
        child: Icon(mybutton),
      ),
    );
  }
}

class UserListView extends StatefulWidget {
  static List<Widget> ListViewList = [];
  // const UserListView({Key? key}) : super(key: key);

  @override
  _UserListViewState createState() => _UserListViewState();
}

class _UserListViewState extends State<UserListView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: UserListView.ListViewList,
    );
  }
}

class UserLoginView extends StatefulWidget {
  const UserLoginView({Key? key}) : super(key: key);

  @override
  _UserLoginViewState createState() => _UserLoginViewState();
}

class _UserLoginViewState extends State<UserLoginView> {
  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
            controller: name,
          ),
          TextField(
            controller: pass,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                UserListView.ListViewList.add(
                  Text('name : ${name.text} password : ${pass.text}'),
                );
                name.clear();
                pass.clear();
                Home.Homebody = UserListView();
              });
            },
            child: Text('submit'),
          )
        ],
      ),
    );
  }
}
