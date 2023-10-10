import 'package:firstprojectwithfirebase/ScreenProfile.dart';
import 'package:firstprojectwithfirebase/components/UserItem.dart';
import 'package:firstprojectwithfirebase/models/UserModel.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  UserScreen({super.key});

  List<UserModel> users = [
    UserModel(
        number: "1",
        name: "Mariam Wael",
        phone: "0123456789",
        photo: 'images/img3.jpg'),
    UserModel(
        number: "2",
        name: "Mario Ashraf",
        phone: "01023785398",
        photo: 'images/boys.jpg'),
    UserModel(
        number: "3",
        name: "karol Hany",
        phone: "01175559923",
        photo: 'images/img3.jpg'),
    UserModel(
        number: "4",
        name: "Mera Refaat",
        phone: "01089537294",
        photo: 'images/img3.jpg'),
    UserModel(
        number: "5",
        name: "Omar Khaled ",
        phone: "01287349503",
        photo: 'images/boys.jpg'),
    UserModel(
        number: "6",
        name: "Marina Emad",
        phone: "01287430054",
        photo: 'images/img3.jpg'),
    UserModel(
        number: "7",
        name: "Alaa mohamed",
        phone: "01076302278",
        photo: 'images/img3.jpg'),
    UserModel(
        number: "8",
        name: "Kerolos Ayman",
        phone: "0113908473",
        photo: 'images/boys.jpg'),
    UserModel(
        number: "9",
        name: "Islam Hassan",
        phone: "01087239902",
        photo: 'images/boys.jpg'),
    UserModel(
        number: "10",
        name: "Mariam Bassem",
        phone: "012438294400",
        photo: 'images/img3.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 167, 254),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("images/Top10.png"),
          )
        ],
        title: Center(
          child: Text(
            "Top Ten",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            var currentuser = users[index];
            String imagepath = 'assets/images/$UserScreen';
            return GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenPro(
                      name: currentuser.name,
                      phone: currentuser.phone,
                      photo: currentuser.photo,
                    ),
                  )),
              child: UserItem(userModel: users[index]),
            );
          },
          itemCount: users.length,
          separatorBuilder: (context, index) => Divider(
              indent: 20, endIndent: 20, thickness: 1.5, color: Colors.white),
        ),
      ),
    );
  }
}
