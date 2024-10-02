import 'dart:io';

void main() {
  menuConversion();
}

void menuConversion() {
  while (true) {
    print('APP KONVERSI SUHU\n1. Celcius\n2. Fahrenheit\n3. Reamur\n4. Kelvin\n5. Keluar');
    stdout.write('Pilih menu: ');
    var input = stdin.readLineSync();
    if (input == null) continue;

    var menu = int.tryParse(input);
    if (menu == null) {
      print('Input tidak valid. Silakan coba lagi.');
      continue;
    }

    switch (menu) {
      case 1:
        convertFromCelsius();
        break;
      case 2:
        convertFromFahrenheit();
        break;
      case 3:
        convertFromReamur();
        break;
      case 4:
        convertFromKelvin();
        break;
      case 5:
        print('Terima Kasih');
        return;
      default:
        print('Menu tidak valid');
    }
  }
}

void convertFromCelsius() {
  stdout.write("Masukkan Suhu (Celcius): ");
  var input = stdin.readLineSync();
  if (input == null) return;

  var celsius = double.tryParse(input);
  if (celsius == null) {
    print('Input tidak valid.');
    return;
  }

  var fahrenheit = (celsius * 9/5) + 32;
  var reamur = celsius * 4/5;
  var kelvin = celsius + 273.15;

  printResults(celsius, fahrenheit, reamur, kelvin);
}

void convertFromFahrenheit() {
  stdout.write("Masukkan Suhu (Fahrenheit): ");
  var input = stdin.readLineSync();
  if (input == null) return;

  var fahrenheit = double.tryParse(input);
  if (fahrenheit == null) {
    print('Input tidak valid.');
    return;
  }

  var celsius = (fahrenheit - 32) * 5/9;
  var reamur = (fahrenheit - 32) * 4/9;
  var kelvin = (fahrenheit - 32) * 5/9 + 273.15;

  printResults(celsius, fahrenheit, reamur, kelvin);
}

void convertFromReamur() {
  stdout.write("Masukkan Suhu (Reamur): ");
  var input = stdin.readLineSync();
  if (input == null) return;

  var reamur = double.tryParse(input);
  if (reamur == null) {
    print('Input tidak valid.');
    return;
  }

  var celsius = reamur * 5/4;
  var fahrenheit = (reamur * 9/4) + 32;
  var kelvin = (reamur * 5/4) + 273.15;

  printResults(celsius, fahrenheit, reamur, kelvin);
}

void convertFromKelvin() {
  stdout.write("Masukkan Suhu (Kelvin): ");
  var input = stdin.readLineSync();
  if (input == null) return;

  var kelvin = double.tryParse(input);
  if (kelvin == null) {
    print('Input tidak valid.');
    return;
  }

  var celsius = kelvin - 273.15;
  var fahrenheit = (kelvin - 273.15) * 9/5 + 32;
  var reamur = (kelvin - 273.15) * 4/5;

  printResults(celsius, fahrenheit, reamur, kelvin);
}

void printResults(double celsius, double fahrenheit, double reamur, double kelvin) {
  print('${celsius.toStringAsFixed(1)}°C');
  print('${fahrenheit.toStringAsFixed(1)}°F');
  print('${reamur.toStringAsFixed(1)}°R');
  print('${kelvin.toStringAsFixed(1)}°K');
}