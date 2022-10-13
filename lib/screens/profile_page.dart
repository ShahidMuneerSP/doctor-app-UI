import 'dart:convert';

import 'package:doctor_booking_app/const.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
Map? mapResponse;
List? listResponse;
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
Future ApiCall() async{
  http.Response response = await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
  if(response.statusCode == 200){
  setState(() {
      mapResponse = jsonDecode(response.body);
      listResponse = mapResponse!["data"];
  });
  }
}
@override
  void initState() {
  ApiCall();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: const [
          Icon(Icons.settings),
          Kwidth,
        ],
      ),
      body: ListView.builder(
        itemCount:listResponse == null ? 0: listResponse!.length,
        itemBuilder:(context, index) {
          return   Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
         color:    const Color.fromARGB(255, 180, 185, 215),

        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            listResponse![index]["avatar"],
                  ))),
                ),
              ),
            ),
            KHight,
            Container(
              height: 40,
              width: 350,
              color: Colors.white,
              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(listResponse![index]["first_name"],style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                    Kwidth,
                      Text(listResponse![index]["last_name"],style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
            KHight20,
            Container(
              height: 40,
              width: 350,
              color: Colors.white,
              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(listResponse![index]["email"],style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
            ),
            KHight20,
            Container(
              height: 40,
              width: 350,
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("9048162627",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
            ),
            KHight20,
            Container(
              height: 40,
              width: 350,
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("NewYork",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
            ),
            KHight,
          ],
        ),
      ),
    );;
        
        
      })
    );
  }
}

