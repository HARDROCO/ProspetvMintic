import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class Pageestados extends StatefulWidget {
  

  const Pageestados({Key? key}) : super(key: key);

  @override
  createState() => _State();
}

class _State extends State<Pageestados> {
 // late AuthController controller;
  late bool _buttonDisabled;
  late TextEditingController stateController;

  @override
  void initState() {
    super.initState();
  //  controller = Get.find<AuthController>();
    _buttonDisabled = false;
    stateController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Publicar Estado",
              style: Theme.of(context).textTheme.headline2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: TextField(
                controller: stateController,
                keyboardType: TextInputType.multiline,
                // dynamic text lines
                maxLines: null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Estado',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    child: const Text("Publicar"),
                    onPressed: _buttonDisabled
                        ? null
                        : () {
                            
                          },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    stateController.dispose();
    super.dispose();
  }
}