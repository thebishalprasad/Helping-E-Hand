import 'package:flutter/material.dart';
import 'package:helping_e_hand/ui/HomePage.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();


  bool _showPassword = false;
  void _toggleVisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }


  @override
  void dispose(){
    phoneNumberController.dispose();
    super.dispose();
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(5.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.green[400],
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child:Form(key: _formkey,
          child: Center(
            child: Column(
              children: <Widget>[
                Flexible(
                  child:Container(
                      alignment: Alignment.center,
                    color: Colors.green[400],
                    child: const Text('Helping E-Hand',
                        style: TextStyle(fontSize: 45,color: Colors.white,fontWeight: FontWeight.w800),
            )
                  ), ),
                const SizedBox(height: 20,),
                Flexible(child:Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  height: 50.0,
                  child: const Text(
                    'Welcome!',
                    style: TextStyle(fontSize: 45,color: Colors.black,fontWeight: FontWeight.w800),
                  )
                ),),
                const SizedBox(height: 30,),
                Flexible(child: Container(
                  margin: const EdgeInsets.fromLTRB(20,0,20,0),
                  child:TextFormField(
                    cursorColor: Colors.black,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      hintText: "Mobile number",
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                    keyboardType: TextInputType.phone,maxLength: 10,
                    controller: phoneNumberController,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Enter a Valid Number';
                      }
                      return null;
                    },
                  ),
                ),
                ),
                const SizedBox(height: 15,),
                Flexible(child: Container(
                  margin: const EdgeInsets.fromLTRB(20,0,20,0),
                  child:TextFormField(
                    obscureText: !_showPassword,
                    cursorColor: Colors.black,
                    obscuringCharacter: "*",
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                      hintStyle: const TextStyle(color: Colors.black),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          _toggleVisibility();
                        },
                        child: Icon(
                          _showPassword ? Icons.visibility : Icons
                              .visibility_off, color: Colors.blueGrey,),
                      ),
                    ),
                    controller: passwordController ,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Enter a valid password';
                      }
                      return null;
                    },
                  ),
                ),
                ),
                const SizedBox(height: 25,),
                TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: const Text('Forgot Password?', style: TextStyle(fontSize: 20),),
                ),
                Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),

                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green[400],
                      ),
                      child: const Text('Login', style: TextStyle(fontSize: 22),),
                      onPressed: ()  async {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const HomePage(title: '',)
                        ));
                      },
                    )
                ),
                Row(
                  children: <Widget>[
                    const Text('Does not have account?', style: TextStyle(fontSize: 20),),
                    TextButton(
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 22),
                      ),
                      onPressed: () {
                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}