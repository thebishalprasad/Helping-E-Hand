
import 'package:flutter/material.dart';
import 'package:helping_e_hand/SizeConfig.dart';
import 'package:helping_e_hand/ui/DonatedItems.dart';

class Donate extends StatefulWidget {

  @override
  State<Donate> createState() => _DonateState();
}

class _DonateState extends State<Donate> {
  String dropdownValue = 'Money';
  bool raise = false;
  bool donate = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Center(
          child:Column(
              children: <Widget>[
                SizedBox(height: 28,),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  height: SizeConfig.blockSizeVertical! * 2020,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Donate.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  donate = true;
                                  raise=false;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blueGrey,
                                    width: 0.2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                  color: donate ? Colors.green[100] : Colors.blueGrey[100],
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.all(10),
                                  child: Text("Donate"),
                                ),
                              ),
                            )
                        ),
                        Expanded(
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  donate = false;
                                  raise=true;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blueGrey,
                                    width: 0.2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                  color: raise ? Colors.green[100] : Colors.blueGrey[100],
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.all(10),
                                  child: Text("Raise"),
                                ),
                              ),
                            )
                        ),
                      ],
                    )
                ),
                donate ? Column(
                    children: <Widget>[
                      Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          margin: const EdgeInsets.fromLTRB(20,0,20,0),
                          child:DropdownButton<String>(
                            value: dropdownValue,
                            style: const TextStyle(color: Colors.deepPurple,fontSize: 16),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            underline: Container(
                              height: 0.1,
                              color: Colors.white,
                            ),
                            items: <String>['Money', 'Clothes', 'Grocery', 'Others']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          )
                      ),
                      const SizedBox(height: 25,),
                      Container(
                        margin: const EdgeInsets.fromLTRB(20,0,20,0),
                        child:TextFormField(
                          cursorColor: Colors.black,
                          style: const TextStyle(color: Colors.black),
                          decoration: const InputDecoration(
                            hintText: "Amount/Quantity",
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
                    ]):Container(
                  margin: const EdgeInsets.fromLTRB(20,0,20,0),
                  child:TextFormField(
                    cursorColor: Colors.black,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      hintText: "Enter Amount",
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Enter Amount';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 25,),
                Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.fromLTRB(20,0,20,0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green[400],
                      ),
                      child: donate?const Text('Donate', style: TextStyle(fontSize: 18),):const Text('Raise', style: TextStyle(fontSize: 18),),
                      onPressed: ()   {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const DonatedItems()));
                      },
                    )
                ),
              ]
          ),
        ),
      ),
    );
  }
}