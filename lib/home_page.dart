import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  void _launch(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could'nt Launch";
    }
  }

  @override
  Widget build(BuildContext context) {
    void showUrl() {
      _launch(
          'https://www.youtube.com/watch?v=Mo5tQDcs__g&list=RDMMMo5tQDcs__g&start_radio=1');
    }

    void showSms() {
      _launch('sms:03343938041');
    }

    void showEmail() {
      _launch('mailto:abdullahkhan.smiu@gmail.com');
    }

    void showPhone() {
      _launch('tel:03343938041');
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(onPressed: () => showUrl(), child: Text('Url')),
            ElevatedButton(onPressed: () => showEmail(), child: Text('Email')),
            ElevatedButton(onPressed: () => showSms(), child: Text('Sms')),
            ElevatedButton(onPressed: () => showPhone(), child: Text('Phone'))
          ],
        ),
      ),
    );
  }
}
