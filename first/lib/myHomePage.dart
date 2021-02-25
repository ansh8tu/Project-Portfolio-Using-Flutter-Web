import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html';

class myHomePage extends StatefulWidget {
  @override
  _myHomePageState createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [const Color(0xff780206), const Color(0xff061161)])),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(150)),
              child: Image.asset("assets/gitHubProfile.jfif",
                  width: 250, height: 250),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Anshuman Mishra",
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 25,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "Undergrad student @UPES, Dehradun! ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 15,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "Currently Pursuing BTech Hons. with Specialization in DevOps",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.teal,
                fontSize: 15,
                fontWeight: FontWeight.w100,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Social Media, here we go!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red.shade700,
                fontSize: 15,
                fontWeight: FontWeight.w100,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              GestureDetector(
                onTap: () {
                  _launchURL('https://github.com/ansh8tu');
                },
                child: Image.asset("assets/gitHub.png", width: 50, height: 50),
              ),
              SizedBox(
                width: 12,
              ),
              GestureDetector(
                onTap: () {
                  _launchURL(
                      "https://www.linkedin.com/in/anshuman-mishra-67b7a5190/");
                },
                child:
                    Image.asset("assets/LinkedIn.png", width: 50, height: 50),
              ),
              SizedBox(
                width: 12,
              ),
              GestureDetector(
                onTap: () {
                  _launchURL("https://twitter.com/ansh19_");
                },
                child: Image.asset("assets/Twitter.png", width: 50, height: 50),
              ),
              SizedBox(
                width: 12,
              ),
            ]),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                _launchURL(
                    "https://www.blogger.com/profile/01425470803268426645");
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 9),
                child: Text("Read my blogs!"),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(17)),
                    gradient: LinearGradient(colors: [
                      const Color(0xffA2834D),
                      const Color(0xffBC9A5F)
                    ])),
              ),
            ),
            SizedBox(height: 12),
            GestureDetector(
                onTap: () {
                  _launchURL("https://www.hackerrank.com/anshu8tu");
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 9),
                  child: Text("My HackerRank Profile!"),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(17)),
                      gradient: LinearGradient(colors: [
                        const Color(0xffA2834D),
                        const Color(0xffBC9A5F)
                      ])),
                ))
          ])),
    );
  }
}
