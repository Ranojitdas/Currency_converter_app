import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0 ;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemTeal,
        middle: Text('Currency Converter',style: TextStyle(color: CupertinoColors.white) ,),
      ),
        backgroundColor: CupertinoColors.systemTeal,
      child: Center(
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
              CupertinoTextField(
                controller: textEditingController,
                style: TextStyle(color: CupertinoColors.black),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: 'Please enter the amount in USD',
                prefix: Icon(CupertinoIcons.money_dollar),
                keyboardType: TextInputType.numberWithOptions(),
              ),
              //  button
              //   raised
              //   appears like a text
            ),

            Padding(
              padding: const EdgeInsets.all(9.0),
              child: CupertinoButton(
                onPressed: (){
                  // debug , release , profile three types of mode
                  setState(() {
                    result = double.parse(textEditingController.text) * 85;
                  });
                },
                color: CupertinoColors.black,
                child: Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
}
}
