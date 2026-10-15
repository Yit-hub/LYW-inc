function calcularIMC() {
  var nombre = document.getElementById('nombre').value;
  var alturaEnCentimetros = parseInt(document.getElementById('altura').value);
  var alturaEnMetros = alturaEnCentimetros / 100;
  var pesoEnKilos = parseInt(document.getElementById('peso').value);

  var imc = Math.round(pesoEnKilos / (alturaEnMetros * alturaEnMetros));
  var clasificacion;
  
  if (imc < 18.5) {
    clasificacion = 'está por debajo de la media, te recomendamos seguir un plan para subir masa';
  } else if (imc < 25) {
    clasificacion = 'estás saludable';
  } else {
    clasificacion = 'está por encima de la media, te recomendamos seguir un plan para bajar masa';
  }
  var respuesta = 'Tu IMC es ' + imc + ' y ' + clasificacion;
  alert(respuesta);
}
