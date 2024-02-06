import 'package:flutter/material.dart';
import 'package:food/helpers/trianglePainter.dart';
import 'package:food/utils/api.dart';
import 'package:food/utils/constants.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var _formKey = GlobalKey<FormState>();
  var _nameController = TextEditingController();
  var _nameError = "";
  var _emailController = TextEditingController();
  var _emailError = "";
  var _phoneController = TextEditingController();
  var _phoneError = "";
  var _passwordController = TextEditingController();
  var _passwordError = "";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(
            painter: TrianglePainter(size),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 120,
                        child: Image.asset("assets/images/FoodMonkey.png")),
                    Text(
                      "Register",
                      style: TextStyle(fontSize: 35, color: normal),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _nameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Name cannot be empty";
                              }
                              return null;
                            },
                            // onChanged: (value) {
                            //   if (value.isEmpty) {
                            //     setState(() {
                            //       _nameError = "Name is emapty.";
                            //     });
                            //   } else {
                            //     _nameError = "";
                            //   }
                            // },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: "Username",
                              errorText: _nameError,
                              errorBorder: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            controller: _emailController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Email cannot be empty";
                              } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(value)) {
                                return "Invalid email format";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              labelText: "Email",
                              errorText: _emailError,
                              errorBorder: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            controller: _phoneController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Phone cannot be empty";
                              } else if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                                return "Invalid phone number";
                              }
                              return null;
                            },
                             decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone),
                              labelText: "Phone",
                              errorText: _phoneError,
                              errorBorder: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            controller: _passwordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Password cannot be empty";
                              } else if (value.length < 6) {
                                return "Password must be at least 6 characters long";
                              } else if (!RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).*$').hasMatch(value)) {
                                return "Password must contain at least one uppercase letter, one lowercase letter, and one digit";
                              }
                              return null;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              labelText: "Password",
                              errorText: _passwordError,
                              errorBorder: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                width: 150,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      var name = _nameController.text;
                                      var email = _emailController.text;
                                      var phone = _phoneController.text;
                                      var password = _passwordController.text;

                                      Api.userRegister(
                                          name, email, phone, password);
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 15),
                                    primary: accent, // Set the background color
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.person,
                                          size: 30,
                                          color: Colors
                                              .white), // Set the icon color
                                      SizedBox(width: 10),
                                      Text(
                                        "Register",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors
                                              .white, // Set the text color
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
