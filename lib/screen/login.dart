import 'package:flutter/material.dart';
import 'package:tugasakhir/main.dart';
import 'package:tugasakhir/screen/register.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({
    Key ? key
  }): super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State < LoginWidget > {
  late TextEditingController _textController1;
  late TextEditingController _textController2;
  bool _passwordVisibility = true;

  @override
  void initState() {
    super.initState();
    _textController1 = TextEditingController();
    _textController2 = TextEditingController();
  }

  @override
  void dispose() {
    _textController1.dispose();
    _textController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 150),
                    child: Image.network(
                      'https://picsum.photos/seed/481/600',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Sign in to continue',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(25, 20, 25, 0),
                    child: TextFormField(
                      controller: _textController1,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Username',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.person,
                        ),
                      ),
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(25, 15, 25, 0),
                    child: TextFormField(
                      controller: _textController2,
                      autofocus: true,
                      obscureText: _passwordVisibility,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.lock_outlined,
                        ),
                        suffixIcon: InkWell(
                          onTap: () => setState(() => _passwordVisibility = !_passwordVisibility),
                          child: Icon(
                            _passwordVisibility ?
                            Icons.visibility_outlined :
                            Icons.visibility_off_outlined,
                            size: 20,
                          ),
                        ),
                      ),
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: ElevatedButton(
                      onPressed: () async {
                        Navigator.pushNamed(context, 'menu');
                      },
                      child: Text('Sign in'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(130, 40),
                        primary: Color(0xFF2F9DF5),
                        textStyle: TextStyle(color: Colors.white),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('register');
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}