import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    /*Timer(
        Duration(seconds: 5),
            () => CustomerTypePageRoute().go(context));*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image(
          image: AssetImage('assets/images/ic_welcome_background.png'),
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        Opacity(
            opacity: 0.85,
            child: Container(
              color: Colors.black,
              height: double.infinity,
              width: double.infinity,
            )),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(
                image: AssetImage('assets/images/ic_high_style.png'),
                width: 254,
                height: 216,
              ),
              Text("Welcome to \n High Style Apparel",
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center),
              SizedBox(height: 2),
              Text("The home for a highstyleapparel",
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                  textAlign: TextAlign.center),
              SizedBox(height: 16),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Color(0xFF444343),
                      minimumSize: Size(164, 48),
                      side: BorderSide(
                        color: Colors.white, // Border color
                        width: 1.18, // Stroke size (thickness)
                      )),
                  onPressed: () {},
                  child: Text("LOG IN",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
              SizedBox(height: 16),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Color(0xFF444343),
                    minimumSize: Size(164, 48),
                    side: BorderSide(
                      color: Colors.white, // Border color
                      width: 1.18, // Stroke size (thickness)
                    )),
                onPressed: () {},
                child: Text("SIGN UP",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              )
            ],
          ),
        )
      ]),
    );
  }
}
