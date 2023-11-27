import 'package:flutter/material.dart';
import 'package:newapp/components/app_bar.dart';
import 'package:newapp/components/app_text_field.dart';
import 'package:newapp/components/user_avatar.dart';
import 'package:newapp/styles/app_colors.dart';
import 'package:newapp/styles/app_text.dart';

enum Gender {
  male,
  female,
  other,
  none,
}

class EditProfile extends StatefulWidget {
  EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final phoneController = TextEditingController();
  final locationController = TextEditingController();
  final birthdayController = TextEditingController();
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: 'Edit Profile'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: UserAvatar(size: 120),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: Icon(
                          Icons.edit,
                          size: 20,
                          color: Colors.black,
                        ))),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            AppTextField(
              hint: 'First Name',
              controllerName: firstnameController,
            ),
            SizedBox(
              height: 16,
            ),
            AppTextField(
              hint: 'Last Name',
              controllerName: lastnameController,
            ),
            SizedBox(
              height: 16,
            ),
            AppTextField(
              hint: 'Phone Number',
              controllerName: phoneController,
            ),
            SizedBox(
              height: 16,
            ),
            AppTextField(
              hint: 'Location',
              controllerName: locationController,
            ),
            SizedBox(
              height: 16,
            ),
            AppTextField(
              hint: 'BirthDay',
              controllerName: birthdayController,
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.only(left: 12, right: 12, top: 6),
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Gender",
                    style: AppText.body1.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                            title: Text('Male'),
                            value: Gender.male,
                            visualDensity: VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity),
                            contentPadding: EdgeInsets.zero,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.male;
                              });
                            }),
                      ),
                      Expanded(
                        child: RadioListTile(
                            title: Text("Female"),
                            value: Gender.female,
                            visualDensity: VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity),
                            contentPadding: EdgeInsets.zero,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.female;
                              });
                            }),
                      ),
                      Expanded(
                        child: RadioListTile(
                            title: Text("Other"),
                            value: Gender.other,
                            visualDensity: VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity),
                            contentPadding: EdgeInsets.zero,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.other;
                              });
                            }),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
