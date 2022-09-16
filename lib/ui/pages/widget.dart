import 'package:flutter/material.dart';

class Textos extends StatelessWidget {
  final TextEditingController gestioncontroles;

  const Textos({
    Key? key,
    required this.gestioncontroles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        controller: gestioncontroles,
        decoration: InputDecoration(
            filled: true,
            labelText: 'Apellido',
            // suffix: Icon(Icons.access_alarm),
            suffix: GestureDetector(
              child: const Icon(Icons.close),
              onTap: () {
                gestioncontroles.clear();
              },
            )
            //probar suffix
            ),
      ),
    );
  }
}
