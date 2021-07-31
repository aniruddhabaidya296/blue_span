import 'package:blue_span/size_config.dart';
import 'package:flutter/material.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key key}) : super(key: key);

  @override
  _NavigatorPageState createState() => _NavigatorPageState();
}

MaterialButton _button(
    String text, String routeName, BuildContext context, Color color) {
  return MaterialButton(
      minWidth: SizeConfig.blockWidth * 50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      color: color,
      child: Text("$text"),
      onPressed: () => {Navigator.pushNamed(context, '$routeName')});
}

class _NavigatorPageState extends State<NavigatorPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Colors.yellow[100],
        appBar: AppBar(
          title: Text("WELCOME"),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
              child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockWidth * 5,
                vertical: SizeConfig.blockHeight * 5),
            height: SizeConfig.blockHeight * 70,
            width: SizeConfig.blockWidth * 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue[100],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _button("Main UI", '/main', context, Colors.red),
                // SizedBox(height: SizeConfig.blockHeight * 2),
                // // _button(
                // //     "SingleCowStats UI", '/cow_stats', context, Colors.blue),
                // // SizedBox(height: SizeConfig.blockHeight * 2),
                // // _button("HomePage UI", '/homepage', context, Colors.yellow),
                // // SizedBox(height: SizeConfig.blockHeight * 2),
                // // _button("Linking UI", '/linkingcow', context, Colors.green),
                // // SizedBox(height: SizeConfig.blockHeight * 2),
                // // _button("Custom Keyboard UI", '/custom_keyboard', context,
                // //     Colors.orange),
                // // SizedBox(height: SizeConfig.blockHeight * 2),
                // // _button("Switch Sensor UI", '/switch_sensor', context,
                // //     Colors.purple),
              ],
            ),
          )),
        ));
  }
}
