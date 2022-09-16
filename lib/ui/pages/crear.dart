import 'package:crud_empleados/domain/modelos/empleados.dart';
import 'package:crud_empleados/ui/pages/widget.dart';
import 'package:flutter/material.dart';

class CrearEmpleado extends StatefulWidget {
  final Empleado gestionEmpleado;
  const CrearEmpleado({Key? key, required this.gestionEmpleado})
      : super(key: key);

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
  void initState() {
    controlnombre.text = widget.gestionEmpleado.nombre;
    controlapellido.text = widget.gestionEmpleado.apellido;
    controltelefono.text = widget.gestionEmpleado.telefono;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Empleados'),
      ),
      body: Column(
        children: [
          Textos(gestioncontroles: controlnombre),
          Textos(gestioncontroles: controlapellido),
          Textos(gestioncontroles: controltelefono),
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
