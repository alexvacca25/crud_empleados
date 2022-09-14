import 'package:crud_empleados/ui/pages/listar.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crud Empleados',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const ListarEmpleado(),
      debugShowCheckedModeBanner: false,
    );
  }
}
