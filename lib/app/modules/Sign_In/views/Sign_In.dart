import 'package:chat_gpt_flutter/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends GetView<SignIn> {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 245, 243, 243), // Set black background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Custom Container
            customContainer(),
            const SizedBox(height: 12),
            // Add the sign-in form at the top
            buildSignInForm(),
            const SizedBox(height: 12),
            Row(
              children: [
                const SizedBox(width: 8),
                Expanded(
                  child: makeCard(Icons.lock, "Forgot Password",
                      Color.fromARGB(255, 3, 0, 1).withOpacity(0.5), () {
                    Get.toNamed(Routes.ForgotPassword);
                  }),
                ),
                Expanded(
                  child: makeCard(Icons.person_add, "Register",
                      Color.fromARGB(255, 235, 5, 5).withOpacity(0.5), () {
                    Get.toNamed(Routes.Register);
                  }),
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget makeCard(var image, var text, var color, var callback) {
    return InkWell(
      onTap: callback,
      child: Card(
        color: color,
        child: Center(
          child: SizedBox(
            height: 180,
            width: 180,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  image,
                  color: Colors.white,
                  size: 44,
                ),
                const SizedBox(height: 12),
                Text(
                  text,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSignInForm() {
    return Column(
      children: [
        Text(
          "Mitak AI", // Updated title
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(
                  255, 41, 40, 40)), // Set white color for the title
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Email",
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.white), // Set white color for text
        ),
        const SizedBox(height: 12),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Password",
            border: OutlineInputBorder(),
          ),
          obscureText: true,
          style: TextStyle(color: Colors.white), // Set white color for text
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            // Implement your sign-in logic here
          },
          style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(
                255, 0, 174, 255), // Set your preferred button color
          ),
          child: Text("Sign In"),
        ),
      ],
    );
  }

  Widget customContainer() {
    return Container(
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
        color: Color(0xFFFDFDFF),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      alignment: AlignmentDirectional(-1.00, 0.00),
      child: Container(
        width: 1001,
        height: 600,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 250, 250,
              250), // You can replace this with your desired color
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://picsum.photos/seed/386/600',
            width: 1000, // Set the width to match the container's width
            height: 600, // Set the height to match the container's height
            fit: BoxFit.cover, // Make the image cover the whole container
          ),
        ),
      ),
    );
  }
}
