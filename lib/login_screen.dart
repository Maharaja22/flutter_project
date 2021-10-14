import 'package:flutter/material.dart';

import 'DashBoard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _firstname = TextEditingController();
  TextEditingController _lastname = TextEditingController();
  TextEditingController _collagename = TextEditingController();
  TextEditingController _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const gcolor = Color(0xFF38E486);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Title(
            color: gcolor,
            child: const Text("Login Screen",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ))),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                color: Colors.grey[50],
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          height: 120,
                          width: 120,
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: const LinearGradient(
                                  colors: [
                                    Colors.blueAccent,
                                    Colors.greenAccent
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight)),
                        ),
                      ),
                    )
                  ],
                )),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextFormField(
                  controller: _firstname,
                  decoration: InputDecoration(
                      labelText: 'First Name',
                      labelStyle: TextStyle(
                          color: gcolor,
                          fontStyle: FontStyle.italic,
                          fontSize: 40),
                      // ignore: prefer_const_constructors
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 2, color: gcolor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 5, color: Colors.greenAccent),
                        borderRadius: BorderRadius.circular(15),
                      )),
                  cursorColor: const Color(0xFF00D460),
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.black),
                  maxLines: 1,
                  // ignore: prefer_const_constructors
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextFormField(
                  controller: _lastname,
                  decoration: InputDecoration(
                      labelText: 'Last Name',
                      labelStyle: TextStyle(color: gcolor, fontSize: 40),
                      // ignore: prefer_const_constructors
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 2, color: gcolor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 5, color: gcolor),
                        borderRadius: BorderRadius.circular(15),
                      )),
                  cursorColor: const Color(0xFF00D460),
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.black),
                  maxLines: 1,
                  // ignore: prefer_const_constructors
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextFormField(
                  controller: _phone,
                  decoration: InputDecoration(
                      labelText: 'Mobile number',
                      labelStyle: TextStyle(color: gcolor, fontSize: 40),
                      // ignore: prefer_const_constructors
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 2, color: gcolor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 5, color: gcolor),
                        borderRadius: BorderRadius.circular(15),
                      )),
                  cursorColor: const Color(0xFF00D460),
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.black),
                  maxLines: 1,
                  // ignore: prefer_const_constructors
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextFormField(
                  controller: _collagename,
                  decoration: InputDecoration(
                      labelText: 'Address',
                      labelStyle: TextStyle(color: gcolor, fontSize: 40),
                      // ignore: prefer_const_constructors
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 2, color: gcolor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 5, color: gcolor),
                        borderRadius: BorderRadius.circular(15),
                      )),
                  cursorColor: const Color(0xFF00D460),
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.black),
                  maxLines: 1,
                  // ignore: prefer_const_constructors
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => DashBoard(
                              firstName: _firstname.text,
                              lastName: _lastname.text,
                              collage: _collagename.text,
                              phone: _phone.text,
                            )));
              },
              child: Container(
                child: Center(
                    child: Text(
                  "Register",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                )),
                height: 70,
                width: 270,
                decoration: BoxDecoration(
                    color: gcolor, borderRadius: BorderRadius.circular(20)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
