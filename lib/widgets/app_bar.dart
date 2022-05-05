import 'package:flutter/material.dart';

import '../constants.dart';

AppBar buildAppBar({@required String title}) => AppBar(
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 16.0),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: kPrimaryColor,
    );
