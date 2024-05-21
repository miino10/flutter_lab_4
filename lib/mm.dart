// import 'package:flutter/material.dart';
// import 'package:lab_4/nextpage.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final _formKey = GlobalKey<FormState>();

//   final TextEditingController _name = TextEditingController();
//   final TextEditingController _email = TextEditingController();
//   final TextEditingController _phoneno = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Form(
//           key: _formKey,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(25),
//                 child: TextFormField(
//                   controller: _name,
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(), 
//                     labelText: "Enter your Name"
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your name';
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(25),
//                 child: TextFormField(
//                   controller: _email,
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: "Enter your Email"
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your email';
//                     }
//                     if (!value.contains('@')) {
//                       return 'Please enter a valid email address';
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(25),
//                 child: TextFormField(
//                   controller: _phoneno,
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: "Enter your Phone Number"
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your phone number';
//                     }
//                     if (value.length != 10) {
//                       return 'Phone number must be 10 digits';
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (context) => NextPage(
//                           name: _name.text,
//                           email: _email.text,
//                           phoneno: _phoneno.text,
//                         )
//                       )
//                     );
//                   }
//                 },
//                 child: const Text("SUBMIT")
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
