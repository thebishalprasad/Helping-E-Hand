
import 'package:flutter/material.dart';
import 'package:helping_e_hand/ui/AddAddress.dart';

class MyAddress extends StatefulWidget {
  const MyAddress({Key? key}) : super(key: key);

  @override
  _MyAddress createState() => _MyAddress();
}

class _MyAddress extends State<MyAddress> {
  get data => null;

  get prefs => null;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
          leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,color: Colors.green.shade400,), onPressed: () {Navigator.pop(context) ; },),
          elevation: 5,
          shadowColor: Colors.green.shade100,
          title:  Text("My Address",style:TextStyle(color: Colors.green.shade400,fontSize: 25,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.white,
        ),
        body: const SafeArea(child: Center(child: Text('Here All Address will be saved',style: TextStyle(fontSize: 25, color: Colors.blueGrey,fontWeight:FontWeight.bold),))
        ),
        floatingActionButton: FloatingActionButton.extended(
            elevation: 0.0,
            icon: const Icon(Icons.add, color: Colors.white, size: 15,),
            label: const Text('Add address',
              style: TextStyle(fontSize: 12, color: Colors.white),),
            backgroundColor: Colors.green[400],
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const AddAddress(firstName: 'firstname', lastName: 'lastname', mobile: 'mobile',)));
            }
        )
    );
  }
}
