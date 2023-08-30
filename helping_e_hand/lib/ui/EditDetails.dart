
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditDetails extends StatefulWidget {
  late String firstName;
  late String lastName;
  late String gender;
  late String emailId;
  late String imageUrl;

  EditDetails({Key? key}) : super(key: key);

  @override
  _EditDetails createState() => _EditDetails();
}

class _EditDetails extends State<EditDetails> {
  final _formkey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final genderController = TextEditingController();
  final emailIdController = TextEditingController();
  final dobController = TextEditingController();

  get male => null;
  get female => null;
  get others => null;

  @override
  void dispose(){
    firstNameController.dispose();
    lastNameController.dispose();
    genderController.dispose();
    emailIdController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        elevation: 5,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,color: Colors.green.shade400,), onPressed: () {Navigator.pop(context) ; },),
        shadowColor: Colors.green.shade100,
        title:  Text("Edit Details",style:TextStyle(color: Colors.green.shade400,fontSize: 25,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child:Column(
            children: <Widget>[
              SizedBox(height: 28,),
              Container(
                margin: const EdgeInsets.fromLTRB(20,0,20,0),
                child:TextFormField(
                  cursorColor: Colors.black,
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    hintText: "First Name",
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter name';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 25,),
              Container(
                margin: const EdgeInsets.fromLTRB(20,0,20,0),
                child:TextFormField(
                  cursorColor: Colors.black,
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    hintText: "Last name",
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter last name';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 25,),
              Container(
                margin: const EdgeInsets.fromLTRB(20,0,20,0),
                child:TextFormField(
                  cursorColor: Colors.black,
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    hintText: "Email Address",
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter a Valid Number';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 25,),
              Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.fromLTRB(20,0,20,0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green[400],
                    ),
                    child: const Text('Save', style: TextStyle(fontSize: 18),),
                    onPressed: ()   {
                    },
                  )
              ),
            ]
        ),
      ),
    );

  }
}
