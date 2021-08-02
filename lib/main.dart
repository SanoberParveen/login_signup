import 'package:flutter/material.dart';
import 'package:minproject/LoginPage.dart';
import 'package:minproject/account.dart';
import 'package:minproject/alert.dart';
import 'package:minproject/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Welcome User'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 20)),
              //SizedBox(
              Container(
                color: Colors.lightGreen.shade100,
                child: Text(
                  "Welcome To Menu List",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      decorationThickness: 5),
                ),
              ),
              //),
              ListTile(
                title: Text(
                  "Order History",
                  style: TextStyle(color: Colors.black87, fontSize: 15),
                ),
                //tileColor: Colors.purple,
                trailing: Icon(
                  Icons.history,
                  color: Colors.purple.shade200,
                ),
              ),
              Divider(
                thickness: 5,
                color: Colors.lightGreen.shade100,
              ),
              ListTile(
                title: Text(
                  "Help",
                  style: TextStyle(color: Colors.black87, fontSize: 15),
                ),

                ///tileColor: Colors.purple,
                trailing: Icon(
                  Icons.help,
                  color: Colors.purple.shade200,
                ),
              ),
              Divider(
                thickness: 5,
                color: Colors.lightGreen.shade100,
              ),
              // ListTile(
              //   title: Text(
              //     "Settings",
              //     style: TextStyle(color: Colors.purple.shade200, fontSize: 15),
              //   ),
              //   //tileColor: Colors.purple,
              //   trailing: Icon(
              //     Icons.login,
              //     color: Colors.purple.shade200,
              //   ),
              // ),
              // Divider(
              //   thickness: 5,
              //   color: Colors.purple.shade200,
              // ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Account()));
                },
                title: Text(
                  "Update",
                  style: TextStyle(color: Colors.black87, fontSize: 15),
                ),
                //tileColor: Colors.purple,
                trailing: Icon(
                  Icons.person,
                  color: Colors.purple.shade200,
                ),
              ),
              Divider(
                thickness: 5,
                color: Colors.lightGreen.shade100,
              ),
              ListTile(
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.black87, fontSize: 15),
                ),
                onTap: () async {
                  final action = await AlertDialogs.yescanceldialog(
                      context, "Logout", "Are you sure ?");
                },
                //tileColor: Colors.purple,
                trailing: Icon(
                  Icons.logout,
                  color: Colors.purple.shade200,
                ),
              ),
              // TextButton(
              //   style: TextButton.styleFrom(
              //     primary: Colors.lightBlue,
              //     onSurface: Colors.yellow,
              //   ),
              //   onPressed: () {},
              //   child: Text(
              //     "Submit",
              //     style: TextStyle(color: Colors.purple),
              //   ),
              // ),
            ],
          ),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/hello icon.png"))),
                ),
                Column(
                  children: <Widget>[
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      color: Color(0xff0095FF),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      color: Color(0xff0095FF),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    )

                    // ElevatedButton(
                    //     onPressed: null,
                    //     child: Text("Login",
                    //         style: TextStyle(color: Colors.green.shade900))),
                    // ElevatedButton(
                    //     onPressed: null,
                    //     child: Text("Register",
                    //         style: TextStyle(color: Colors.green.shade900))),

                    // Column(
                    //     children: <Widget>[
                    //       // the login button
                    //       MaterialButton(
                    //         minWidth: double.infinity,
                    //         height: 60,
                    //         onPressed: () {
                    //           Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));

                    //         },
                    //         // defining the shape
                    //         shape: RoundedRectangleBorder(
                    //           side: BorderSide(
                    //             color: Colors.black
                    //           ),
                    //           borderRadius: BorderRadius.circular(50)
                    //         ),
                    //         child: Text(
                    //           "Login",
                    //           style: TextStyle(
                    //             fontWeight: FontWeight.w600,
                    //             fontSize: 18
                    //           ),
                    //         ),
                    //       ),
                  ],
                ),
              ]),
        ));
  }
}
