import 'package:flutter/material.dart';

// Create a variable to store the input valur
// then we have to multiply the input with 84 to convert it into dollar
// store the value in another variable and display it

class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}
class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0 ;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 1.5,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
      borderRadius: BorderRadius.circular(10),
    );
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 30,
          title: Text('Currency Converter',style: TextStyle(color: Colors.white) ,),
        ),
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$result ₹",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child:
                TextField(
                  controller: textEditingController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText :
                      'Please enter the amount in USD',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: Icon(Icons.monetization_on),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: TextInputType.numberWithOptions(),
                ),
                //  button
                //   raised
                //   appears like a text
              ),

              Padding(
                padding: const EdgeInsets.all(9.0),
                child: ElevatedButton(
                    onPressed: (){
                      // debug , release , profile three types of mode
                      setState(() {
                        result = double.parse(textEditingController.text) * 85;
                      });
                      },

                    style: ElevatedButton.styleFrom(
                      foregroundColor: (Colors.white),
                    backgroundColor: (Colors.black),
                      minimumSize: Size(double.infinity, 50),
                      elevation: (5),
                  ),
                    child: Text('Convert'),
                ),
              ),
            ],
          ),
        ),
      );
  }




}
// Stateless Widget
// class CurrencyConverterMaterialPage extends StatelessWidget{
//   const CurrencyConverterMaterialPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final TextEditingController textEditingController = TextEditingController();
//     double result = 0;
//     final border = OutlineInputBorder(
//       borderSide: BorderSide(
//         width: 1.5,
//         style: BorderStyle.solid,
//         strokeAlign: BorderSide.strokeAlignInside,
//       ),
//       borderRadius: BorderRadius.circular(10),
//     );
//       return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blueGrey,
//           elevation: 30,
//           title: Text('Currency Converter',style: TextStyle(color: Colors.white) ,),
//         ),
//         backgroundColor: Colors.blueGrey,
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(result.toString() ,
//               style: TextStyle(
//                 color: Color.fromARGB(255, 255, 255, 255),
//                 fontSize: 40,
//                 fontWeight: FontWeight.bold,
//               ),),
//               Padding(
//                 padding: const EdgeInsets.all(9.0),
//                 child:
//                 TextField(
//                   controller: textEditingController,
//                   style: TextStyle(color: Colors.black),
//                   decoration: InputDecoration(
//                     hintText :
//                       'Please enter the amount in USD',
//                     hintStyle: TextStyle(
//                       color: Colors.black,
//                     ),
//                     prefixIcon: Icon(Icons.monetization_on),
//                     prefixIconColor: Colors.black,
//                     filled: true,
//                     fillColor: Colors.white,
//                     focusedBorder: border,
//                     enabledBorder: border,
//                   ),
//                   keyboardType: TextInputType.numberWithOptions(),
//                 ),
//                 //  button
//                 //   raised
//                 //   appears like a text
//               ),
//
//               Padding(
//                 padding: const EdgeInsets.all(9.0),
//                 child: ElevatedButton(
//                     onPressed: (){
//                       // debug , release , profile three types of mode
//                       result = double.parse(textEditingController.text) * 81;
//                       },
//
//                     style: ElevatedButton.styleFrom(
//                       foregroundColor: (Colors.white),
//                     backgroundColor: (Colors.black),
//                       minimumSize: Size(double.infinity, 50),
//                       elevation: (5),
//                   ),
//                     child: Text('Convert'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//   }
// }
