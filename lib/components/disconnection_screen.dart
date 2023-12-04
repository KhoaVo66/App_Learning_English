import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class DisConnection extends StatefulWidget {
  const DisConnection({super.key});

  @override
  State<DisConnection> createState() => _DisConnectionState();
}

class _DisConnectionState extends State<DisConnection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage('assets/EmptyState.png')),
            const Text(
              'Not Connected',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 15,),
            const SizedBox(
              width: 300,
              child: Text(
                'Ups.. You are not connected to internet Try again',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),
              ),
            ),
            const SizedBox(height: 30,),
            SizedBox(
              width: 180,
              child: ElevatedButton(
                style: const ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))
                    )
                  )
                ),
                  onPressed: () async{
                    ConnectivityResult result = await Connectivity().checkConnectivity();
                    // print(result.toString());
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 15),
                    child: Text(
                      'Try Again',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  )
              ),
            )
          ],
        )
      ),
    );
  }
}
