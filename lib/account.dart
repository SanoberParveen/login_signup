import 'package:flutter/material.dart';
import './global.dart' as acc;
import 'address.dart';

class Account extends StatefulWidget {
  const Account({Key key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.greenAccent.shade100,
        title: Text(
          "Account",
          style: TextStyle(color: Colors.white70),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black87),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100.0)),
                      color: Colors.greenAccent.shade100,
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.white70,
                      size: 50.0,
                    )),
                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your name ",
                      icon: Icon(Icons.person),
                    ),
                    onChanged: (value) {
                      acc.name = value;
                    },
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email ",
                      icon: Icon(Icons.email),
                    ),
                    onChanged: (value) {
                      acc.email = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: 200,
                  child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Address()),
                        );
                      },
                      //textColor: Colors.green,
                      minWidth: double.infinity,
                      height: 60,
                      color: Color(0XFFC8E6C9),
                      elevation: 0,
                      child: Text(
                        "Add Address",
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
