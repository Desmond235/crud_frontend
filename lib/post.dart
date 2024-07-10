import 'package:flutter/material.dart';

import 'package:crud_frontend/service/http.dart';

class POST extends StatefulWidget {
  const POST({super.key});

  @override
  State<POST> createState() => _POSTState();
}

class _POSTState extends State<POST> {
  final nameController = TextEditingController();
  final priceController = TextEditingController();
  final descController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Product-name'),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(labelText: "Product-price"),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: descController,
              decoration:
                  const InputDecoration(labelText: "Product-description"),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                var data = {
                  "name": nameController.text,
                  "price": priceController.text,
                  "description": descController.text
                };
                Http.postProduct(data);
              },
              child: const Text('POST'),
            )
          ],
        ),
      ),
    );
  }
}
