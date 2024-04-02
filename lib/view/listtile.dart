import 'package:flutter/material.dart';

class ListTileses extends StatelessWidget {
  const ListTileses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("data"),
            SizedBox(
              height: 900,
              child: ListView.builder(
                itemCount: 9,
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    maxRadius: 30,
                    foregroundImage: AssetImage("assett/images/benin.jpg"),
                  ),
                  title: Text(
                    "Benin P John",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        color: Colors.deepOrangeAccent[200]),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "data",
                      ),
                      Text(
                          "Open the Windows 11 settings app using shortcut keys Win + ISelect Network & Internet from the left pane.elect the Wi-Fi option from the right pane.Clickn the Manage known networks option from the right pane.You will see a list of saved networks. Select Forget next to the network you wish to remove from your saved networks.")
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
