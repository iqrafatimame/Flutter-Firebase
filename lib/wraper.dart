import 'package:SignIn/screens/authenticate/authnticate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //todo: return either home or authenticate
    return Authenticate();
  }
}
