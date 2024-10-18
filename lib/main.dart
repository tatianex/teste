import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:oktoast/oktoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Toast'),
          ),
          body: SafeArea(
            child: Center(
              child: Column(
                children: [
                  const Text(
                    'Essa é uma página de teste',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  IconButton(
                    icon: const Icon(Icons.access_alarm_sharp),
                    onPressed: () {
                      // Customized
                      // showToastWidget(
                      //     const ToastWidget(
                      //       title: 'Hello darkness',
                      //       description: 'I\'ve come to talk',
                      //     ),
                      //     duration: const Duration(seconds: 5));
                      Fluttertoast.showToast(
                          msg: "This is a toast message",
                          toastLength: Toast.LENGTH_SHORT, // Duração do toast
                          gravity: ToastGravity.BOTTOM, // Posição do toast
                          timeInSecForIosWeb:
                              1, // Tempo de duração para iOS/web
                          backgroundColor: Colors.black, // Cor de fundo
                          textColor: Colors.white, // Cor do texto
                          fontSize: 16.0 // Tamanho da fonte
                          );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ToastWidget extends StatelessWidget {
  const ToastWidget({
    required this.title,
    required this.description,
    super.key,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            width: 140.0,
            height: 50.0,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w900),
                ),
                Text(
                  description,
                  style: const TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
