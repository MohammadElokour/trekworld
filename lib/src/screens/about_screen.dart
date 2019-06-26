import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../services/crud.dart';

class AboutScreen extends StatelessWidget {
  final CrudMethods crudObj = CrudMethods();

  Widget build(context) {
    return Stack(
      children: <Widget>[
        background(context),
        homeBtn(context),
        header(),
        about(),
      ],
    );
  }

  Widget homeBtn(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 61.0),
      child: IconButton(
        icon: Icon(Icons.chevron_left),
        iconSize: 50.0,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget background(context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Image.asset(
        'assets/images/signup.jpg',
        width: size.width,
        height: size.height,
        fit: BoxFit.fill,
      ),
    );
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0, left: 50.0),
      child: Text(
        'About\n    Trek World',
        style: TextStyle(
          fontFamily: 'Trebuchet MS',
          fontSize: 40.0,
          color: Colors.white,
        ),
      ),
    );
  }
}

Widget about() {
  return Container(
    padding: EdgeInsets.only(top: 235.0),
    child: ListView(
      children: <Widget>[
        Center(
          child: Container(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Trek World\n is and idea to encourage more and more people to explore the unexplored areas around the world, '
              'to help promote others to hike and walk and take a break from the commotions in the city. '
              'To run arround in the astonishing nature and gorgeous wildlife.\n\n '
              'Trek World\n is about having unforgettable and uniqe experiences,'
              'it\'s purpose is to make these wonderful places arround the world more popular and known between the individuals in the community',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'GT Walsheim Regular',
                fontSize: 21.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
