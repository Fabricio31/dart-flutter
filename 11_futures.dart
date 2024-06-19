void main() {
  print('Inicio del programa');
  httpGet('https://google.com').then((value) {
    print(value);
  });
  print('Fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    return 'Respuesta de la peticion http';
  });
}
