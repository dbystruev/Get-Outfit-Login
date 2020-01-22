// https://github.com/NearHuscarl/flutter_login

import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'dashboard_screen.dart';

const users = {
  'dbystruev@getoutfit.ru': 'password',
};

class LoginScreen extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String> _authUser(LoginData data) {
    print('Trying to authorize name: ${data.name}, password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'Username not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      // User logged in — returning null for no error
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Recovering password for name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Username not exists';
      }
      // Username exists — returning null for no error
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: ' ',
      logo: 'images/getoutfitlogo.png',
      onLogin: _authUser,
      onSignup: _authUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => DashboardScreen(),
          ),
        );
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
