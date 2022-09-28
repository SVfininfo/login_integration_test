import 'package:flutter/material.dart';
import 'package:logintest2inastudio/home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: LoginPage(),
    );
  }
}
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState>_formKey = GlobalKey<FormState>();
  static const emailRegex = r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Loginpage',)),backgroundColor: Colors.green,),
      body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Container(
      child: Image.asset('assets/images/logo.png', height: 200,width: 280),
    ) , SizedBox(height: 40,),
    const Text('Login here',
    style:TextStyle(
    fontSize:40,
    color: Colors.green,
    fontWeight: FontWeight.bold
    )),
    SizedBox(height: 20,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                    labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                  // validator: (value){
                  //  //  if (RegExp(emailRegex).hasMatch(value!)){
                  //  // }else
                  //  if(value == null||value.isEmpty) {
                  //     return 'Field can not be empty';
                  //   }
                  //   else{
                  //     return 'Please enter correct email';}
                  // },
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter Your Password',
                labelText: 'Password',
                  prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(),
                ),
                  validator: (value){
                    if (value == null||value.isEmpty) {
                    return 'Field can not be empty';
                  }else if (value!.length<6){
                    return 'Must be 6 characters';
                  }else{return null;
                  }
                  },
),
              ),
              SizedBox(height: 15),
             ElevatedButton(onPressed: (){
               if (_formKey.currentState!.validate()){
               Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage()));}
               else {
                 return null;
               }
             }, child: Text('Login',),style: ElevatedButton.styleFrom(
    primary: Colors.green,)
    // style: ButtonStyle(
    // backgroundColor: ,)
             )],
          ),
        ),
      ),
    ]
    ),
    );

  }
}

