
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:helping_e_hand/ui/MyAddress.dart';


class AddAddress extends StatefulWidget {
  final String firstName;
  final String lastName;
  final String mobile;
  const AddAddress({Key? key, required this.firstName,required this.lastName,required this.mobile}) : super(key: key);
  @override
  _AddAddress createState() => _AddAddress();
}

class _AddAddress extends State<AddAddress> {

  final _formkey = GlobalKey<FormState>();
  final typeController  = TextEditingController();
  final nameController  = TextEditingController();
  final alternateMobileNumberController  = TextEditingController();
  final streetController = TextEditingController();
  final landmarkController = TextEditingController();
  final districtController = TextEditingController();
  final cityController = TextEditingController();
  final pinCodeController = TextEditingController();
  final stateController = TextEditingController();
  final countryController = TextEditingController();
  final mobileNumberController = TextEditingController();
  String radioItem = '';

  get prefs => null;

  @override
  void dispose(){
    typeController.dispose();
    nameController.dispose();
    mobileNumberController.dispose();
    alternateMobileNumberController.dispose();
    streetController.dispose();
    landmarkController.dispose();
    districtController.dispose();
    cityController.dispose();
    pinCodeController.dispose();
    stateController.dispose();
    countryController.dispose();
    super.dispose();
  }



  @override
  void initState(){
    super.initState();
    mobileNumberController.text = widget.mobile;
    nameController.text = widget.firstName + " "+widget.lastName;
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
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,color: Colors.green.shade400,), onPressed: () {Navigator.pop(context) ; },),
        elevation: 5,
        shadowColor: Colors.green.shade100,
        title:  Text("Add address",style:TextStyle(color: Colors.green.shade400,fontSize: 25,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Form(key: _formkey,
              child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () async {
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.2,
                          ),
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.green.shade100,
                        ),
                        alignment: Alignment.center,
                        height: 50,
                        margin: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        child: Container(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Icon(Icons.add_location_outlined,color: Colors.blueGrey,),
                                Text('Use your current location',style: GoogleFonts.quicksand(
                                  textStyle: const TextStyle(fontSize:18,color: Colors.blueGrey,fontWeight: FontWeight.bold),),textAlign: TextAlign.left,),
                              ],
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 16.0,
                      margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: const Text(
                        'Street',style:  TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child:TextFormField(
                        cursorColor: Colors.black,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          isDense: true,
                          border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                        ),
                        controller: streetController,
                        validator: (value){
                          if(value == null || value.isEmpty || value==' '){
                            return 'All fields are mandatory';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 25,),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 16.0,
                      margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: const Text(
                        'Landmark',style:  TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          isDense: true,
                          border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                        ),
                        controller: landmarkController,
                        validator: (value){
                          if(value == null || value.isEmpty || value==' '){
                            return 'All fields are mandatory';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 25,),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 19.0,
                      margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: const Text(
                        'City',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          isDense: true,
                          border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                        ),
                        controller: cityController,
                        validator: (value){
                          if(value == null || value.isEmpty || value==' '){
                            return 'All fields are mandatory';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height:25,),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 16.0,
                      margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: const Text(
                        'District',style:  TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          isDense: true,
                          border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                        ),
                        controller: districtController,
                        validator: (value){
                          if(value == null || value.isEmpty || value==' '){
                            return 'All fields are mandatory';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height:25,),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 19.0,
                      margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: const Text(
                        'Pin Code',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          isDense: true,
                          border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                        ),
                        controller: pinCodeController,
                        keyboardType: TextInputType.phone,maxLength: 6,
                        validator: (value){
                          if(value == null || value.isEmpty || value==' '){
                            return 'All fields are mandatory';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height:15),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 16.0,
                      margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: const Text(
                        'State',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(isDense: true,
                          border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                        ),
                        controller: stateController,
                        validator: (value){
                          if(value == null || value.isEmpty || value==' '){
                            return 'All fields are mandatory';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height:25,),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 19.0,
                      margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: const Text(
                        'Country',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          isDense: true,
                          border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                        ),
                        controller: countryController,
                        validator: (value){
                          if(value == null || value.isEmpty || value==' '){
                            return 'All fields are mandatory';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height:80,),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 18.0,
                      margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: const Text(
                        'Name',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: TextFormField(
                        textCapitalization: TextCapitalization.sentences,
                        cursorColor: Colors.black,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          isDense: true,
                          border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                        ),
                        controller: nameController,
                        validator: (value){
                          if(value == null || value.isEmpty || value==' '){
                            return 'All fields are mandatory';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height:25,),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 18.0,
                      margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: const Text(
                        'Mobile Number',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: TextFormField(
                        textCapitalization: TextCapitalization.sentences,
                        cursorColor: Colors.black,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          isDense: true,
                          prefixText: '+91 ',
                          prefixStyle: TextStyle(fontSize: 17,color: Colors.black),
                          border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                        ),
                        controller: mobileNumberController,
                        keyboardType: TextInputType.phone,maxLength: 10,
                        validator: (value){
                          if(value == null || value.isEmpty || value==' '){
                            return 'All fields are mandatory';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height:15,),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 18.0,
                      margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: const Text(
                        'Alternative Mobile Number',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: TextFormField(
                        textCapitalization: TextCapitalization.sentences,
                        cursorColor: Colors.black,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          isDense: true,
                          prefixText: '+91 ',
                          prefixStyle: TextStyle(fontSize: 17,color: Colors.black),
                          hintText: "(Optional)",
                          hintStyle: TextStyle(color: Colors.black),
                          border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                        ),
                        controller: alternateMobileNumberController,
                        keyboardType: TextInputType.phone,maxLength: 10,
                      ),
                    ),
                    const SizedBox(height:15,),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 18.0,
                      margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: const Text(
                        'Address type',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: RadioListTile(
                          activeColor: Colors.black,
                          groupValue: radioItem,
                          title: const Text('Home'),
                          value: 'Home',
                          onChanged: (val) {
                            setState(() {
                            });
                          },
                        ),),
                        Expanded(child:  RadioListTile(
                          activeColor: Colors.black,
                          groupValue: radioItem,
                          title: const Text('Work/Office'),
                          value: 'work',
                          onChanged: (val) {
                            setState(() {
                            });
                          },
                        ),),
                      ],
                    ),
                    const SizedBox(height:55,),
                  ]
              ),
            ),
          )
      ),
      bottomSheet: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            padding: EdgeInsets.fromLTRB(10, 0, 10, 8),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green[400],
              ),
              child: const Text('Add Address', style: TextStyle(fontSize: 22),),
              onPressed: ()  async {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const MyAddress()));
              },
            )
        ),

    );
  }
}

