import 'package:billing_app/screens/Invoice%20details/receiver_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddItems extends StatefulWidget {
  const AddItems({super.key});

  @override
  State<AddItems> createState() => _AddItemsState();
}

class _AddItemsState extends State<AddItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Generate Invoices",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Clients",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return AboutDialog(
                      children: [ReceiverDetails()],
                    );
                  }));
                },
                child: const Text('Add')),
          ],
        ),
      ),
    );
  }
}
