import 'package:flutter/material.dart';
import 'package:json_parsing/screen/Lec-8.2/provider/user_provider.dart';
import 'package:provider/provider.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        scrolledUnderElevation: 0.1,
        title: const Text(
          'User Data',
          style: TextStyle(
            letterSpacing: 0.3,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: userProvider.userList.length,
        itemBuilder: (context, index) => ListTile(
          leading: Text(userProvider.userList[index].id.toString(),style: TextStyle(fontSize: 15),),
          title: Text(userProvider.userList[index].name),
          subtitle: Text(userProvider.userList[index].address.street),
          trailing: Text(userProvider.userList[index].address.geo.lat,style: TextStyle(fontSize: 13),),
        ),
      ),
    );
  }
}
