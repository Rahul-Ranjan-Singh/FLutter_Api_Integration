import 'package:api_integration/pages/image_page.dart';
import 'package:api_integration/service/api.dart';
import 'package:api_integration/service/api_service.dart';
import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Integration"),
      ),
      backgroundColor: Color(0x75082c6c),
      body: Container(
        child: Center(
          child: TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => image_page()));
            },
            child: Text(
              "Fetch",
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(
              primary: Color(0xff082c69),
              backgroundColor: Colors.lightBlueAccent.shade700,
              minimumSize: Size(150, 60),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ),
        ),
      ),
    );
  }
}
