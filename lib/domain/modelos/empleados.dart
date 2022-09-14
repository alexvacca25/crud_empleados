class Empleado {
  var nombre;
  var apellido;
  var telefono;
  var fnac;

  Empleado({this.nombre, this.apellido, this.telefono, this.fnac});
}

List<Empleado> listaEmpleado = [
  Empleado(
    nombre: 'Alex',
    apellido: 'Vacca',
    telefono: '30111122',
    fnac: DateTime(1999, 01, 10),
  ),
  Empleado(
    nombre: 'Pedro',
    apellido: 'Perez',
    telefono: '9876543',
    fnac: DateTime(1970, 01, 10),
  ),
  Empleado(
    nombre: 'Maria',
    apellido: 'Orozco',
    telefono: '34721732',
    fnac: DateTime(1980, 01, 10),
  ),
];
