import 'package:crud_empleados/domain/modelos/empleados.dart';
import 'package:crud_empleados/ui/pages/crear.dart';
import 'package:flutter/material.dart';

class ListarEmpleado extends StatefulWidget {
  const ListarEmpleado({Key? key}) : super(key: key);

  @override
  State<ListarEmpleado> createState() => _ListarEmpleadoState();
}

class _ListarEmpleadoState extends State<ListarEmpleado> {
  final List<Empleado> _empleados = listaEmpleado;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Empleado'),
      ),
      body: ListView.builder(
          itemCount: _empleados.length,
          itemBuilder: (context, pos) {
            return ListTile(
              onLongPress: () {
                _eliminarempleado(context, _empleados[pos]);
              },
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CrearEmpleado(
                      gestionEmpleado: _empleados[pos],
                    ), //Llamar la Vista
                  ),
                ).then((resultado) //Espera por un Resultado
                    {
                  if (resultado != null) {
                    _empleados[pos] = resultado[
                        0]; //Adiciona a la lista lo que recupera de la vista TextoEjercicio
                    setState(() {});
                  }
                });
              },
              leading: CircleAvatar(
                child: Text(_empleados[pos].nombre.substring(0, 1) +
                    _empleados[pos].apellido.substring(0, 1)),
              ),
              title:
                  Text(_empleados[pos].nombre + " " + _empleados[pos].apellido),
              subtitle: Text(_empleados[pos].telefono),
              trailing: const Icon(Icons.call),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => CrearEmpleado(
                gestionEmpleado:
                    Empleado(nombre: '', apellido: '', telefono: ''),
              ), //Llamar la Vista
            ),
          ).then((resultado) //Espera por un Resultado
              {
            if (resultado) {
              _empleados.addAll(
                  resultado); //Adiciona a la lista lo que recupera de la vista TextoEjercicio
              setState(() {});
            }
          });
        },
        child: const Icon(Icons.call, color: Colors.yellow),
      ),
    );
  }

  _eliminarempleado(context, Empleado elempleado) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: const Text('Eliminar Empleado'),
              content: Text('Esta seguro de Eliminar a: ${elempleado.nombre}'),
              actions: [
                TextButton(
                    onPressed: () {
                      _empleados.remove(elempleado);
                      setState(() {});
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Eliminar',
                      style: TextStyle(color: Colors.red),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Cancelar',
                      style: TextStyle(color: Colors.green),
                    ))
              ],
            ));
  }
}
