import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Changer',
      theme: ThemeData(
        fontFamily: GoogleFonts.mcLaren().fontFamily,
        primarySwatch: Colors.lime,
      ),
      home: ImagePresenter(),
    );
  }
}

class ImagePresenter extends StatefulWidget {
  const ImagePresenter({Key key}) : super(key: key);

  @override
  _ImagePresenterState createState() => _ImagePresenterState();
}

class _ImagePresenterState extends State<ImagePresenter> {
  var _imagechangervar = 0;
  void _imagechangerfunc() {
    setState(() {
      _imagechangervar == 0 ? _imagechangervar = 1 : _imagechangervar = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _imagechangervar == 1
            ? Image.asset(
                'assets/bye.jpg',
                fit: BoxFit.cover,
              )
            : Image.asset(
                "assets/Welcome.jpg",
                fit: BoxFit.cover,
              ),
        InkWell(
          onTap: _imagechangerfunc,
          child: Container(
            width: 100,
            height: 50,
            child: Text(
              'Change Image',
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).primaryColorDark),
          ),
        )
      ],
    ));
  }
}
