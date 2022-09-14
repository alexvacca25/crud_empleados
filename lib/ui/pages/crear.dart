import 'package:crud_empleados/domain/modelos/empleados.dart';
import 'package:flutter/material.dart';

class CrearEmpleado extends StatefulWidget {
  const CrearEmpleado({Key? key}) : super(key: key);

  @override
  State<CrearEmpleado> createState() => _CrearEmpleadoState();
}

class _CrearEmpleadoState extends State<CrearEmpleado> {
  final List<Empleado> _addEmpleado = [];
  TextEditingController controlnombre = TextEditingController();
  TextEditingController controlapellido = TextEditingController();
  TextEditingController controltelefono = TextEditingController();
  DateTime fechanac = DateTime(1990);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Empleados'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: controlnombre,
              decoration: InputDecoration(
                  filled: true,
                  labelText: 'Nombres',
                  // suffix: Icon(Icons.access_alarm),
                  suffix: GestureDetector(
                    child: const Icon(Icons.close),
                    onTap: () {
                      controlnombre.clear();
                    },
                  )
                  //probar suffix
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: controlapellido,
              decoration: InputDecoration(
                  filled: true,
                  labelText: 'Apellido',
                  // suffix: Icon(Icons.access_alarm),
                  suffix: GestureDetector(
                    child: const Icon(Icons.close),
                    onTap: () {
                      controlnombre.clear();
                    },
                  )
                  //probar suffix
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: controltelefono,
              decoration: InputDecoration(
                  filled: true,
                  labelText: 'Telefono',
                  // suffix: Icon(Icons.access_alarm),
                  suffix: GestureDetector(
                    child: const Icon(Icons.close),
                    onTap: () {
                      controlnombre.clear();
                    },
                  )
                  //probar suffix
                  ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                _addEmpleado.add(Empleado(
                    nombre: controlnombre.text,
                    apellido: controlapellido.text,
                    telefono: controltelefono.text,
                    fnac: fechanac));
                Navigator.pop(context, _addEmpleado);
              },
              child: const Text('Guardar Empleado'))
        ],
      ),
    );
  }
}
