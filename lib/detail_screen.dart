import 'package:flutter/material.dart';
import 'package:submission_1/models/group_info.dart';

class DetailScreen extends StatelessWidget{
  final GroupInformation info;

  DetailScreen({@required this.info});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(info.imageAsset),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0, left: 16.0),
              child: Text(
                info.name,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20.0, left: 16.0, right: 16.0),
              child: Text(
                info.description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 30.0, bottom: 20.0),
              child: Text(
                info.officialWebsite,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Text(
                info.twitter,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Text(
                info.instagram,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Text(
                info.facebook,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Text(
                info.youtube,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Text(
                info.vLive,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Text(
                info.tikTok,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}