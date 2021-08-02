import 'package:flutter/material.dart';
import './global.dart' as acc;

class Address extends StatefulWidget {
  const Address({Key key}) : super(key: key);

  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
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
          "Add Address",
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
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Locality ",
                      //icon: Icon(Icons.person),
                    ),
                    onChanged: (value) {
                      acc.locality = value;
                    },
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "City ",
                      //icon: Icon(Icons.email),
                    ),
                    onChanged: (value) {
                      acc.city = value;
                    },
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Pincode ",
                      //icon: Icon(Icons.person),
                    ),
                    onChanged: (value) {
                      acc.pincode = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // height: MediaQuery.of(context).size.height,
                        //width: double.infinity,
                        Text(
                          "Locality",
                          style: TextStyle(color: Colors.green, fontSize: 22),
                        ),
                      ],
                    ),
                    //     SizedBox(
                    //   width: 300,
                    //   child: TextField(
                    //     decoration: InputDecoration(
                    //      // hintText: "Pincode ",
                    //       //icon: Icon(Icons.person),
                    //     ),
                    //     onChanged: (value) {
                    //       acc.locality = value;
                    //     },
                    //   ),
                    // ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      acc.locality,
                      style: TextStyle(color: Colors.black87, fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // height: MediaQuery.of(context).size.height,
                        //width: double.infinity,
                        Text(
                          "City",
                          style: TextStyle(color: Colors.green, fontSize: 22),
                        ),
                      ],
                    ),
                    Text(
                      acc.city,
                      style: TextStyle(color: Colors.black87, fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // height: MediaQuery.of(context).size.height,
                        //width: double.infinity,
                        Text(
                          "Pincode",
                          style: TextStyle(color: Colors.green, fontSize: 22),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      acc.pincode,
                      style: TextStyle(color: Colors.black87, fontSize: 22),
                    ),
                  ],
                ),
              ],
            ),
            //Text("Locality"),
          ],
        ),
      ),
    );
  }
}
