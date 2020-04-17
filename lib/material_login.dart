library material_login;

import 'package:flutter/material.dart';

class MaterialLogin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(height: 30), //space
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 18, 10, 2),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sign In\n_____",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Card(
                  elevation: 20,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.all_inclusive),
                        title: Text('Franship 101'),
                        subtitle: Text(
                            'Welcome to Material Login. Your mind controls your life. Sign in to access contents that will enrich your mind today'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: TextFormField(
                          style: TextStyle(color: Colors.blue),
                          decoration: InputDecoration(
                              labelText: 'Username',
                              labelStyle: TextStyle(color: Colors.black54),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                          decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.black54),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          Checkbox(
                            onChanged: null,
                            value: false,
                          ),
                          FlatButton(
                            child: const Text(
                              'Keep me Signed in',
                              style: TextStyle(fontSize: 13),
                            ),
                            onPressed: () {
                              /* ... */
                            },
                          ),
                          FlatButton(
                            color: Colors.grey[200],
                            child: const Text('SIGN UP'),
                            onPressed: () {
                              /* ... */
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                //sets button at the bottom of the screen
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: MaterialButton(
                    color: Colors.blue,
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {},
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
