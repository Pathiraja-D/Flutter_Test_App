import 'dart:convert';

Future doRegister() async {
  var usernameController;
  var emailController;
  Map data = {
    'username': usernameController.text,
    'email': emailController.text,
  };
  var body = jsonEncode(data);
  try {
    var http;
    var response = await http.post(
        Uri.parse(
            'https://node-js-crud-704glcj5h-dinuks-projects-f6a292f9.vercel.app/api/users/'),
        body: body,
        headers: {"Content-Type": "application/json"});
    if (response.statusCode == 200) {
      print("Success");
    } else {
      print("Failed");
      print(response.body);
    }
  } catch (e) {
    print(e);
  }
}
