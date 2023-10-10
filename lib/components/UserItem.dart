import 'package:firstprojectwithfirebase/models/UserModel.dart';
import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  UserModel userModel;
  UserItem({required this.userModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.purple,
            radius: 35,
            child: Text(
              userModel.number,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userModel.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                userModel.phone,
                style: TextStyle(color: Colors.purple, fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
