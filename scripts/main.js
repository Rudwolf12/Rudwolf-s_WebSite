console.log("¡Hola mundo desde JavaScript!");

function UnfoldMobileMenu()
{
    if (document.querySelector('.menu_drop').style.display == 'block')
    {
        document.querySelector('.menu_drop').style.display = 'none';
    }
    else
    {
        document.querySelector('.menu_drop').style.display = 'block';
    }
}

function formDisplay()
{
    if (document.getElementById('form-data').style.display == 'block')
    {
        document.getElementById('form-data').style.display = 'none';
    }
    else
    {
        document.getElementById('form-data').style.display = 'block';
    }
}

function SocialMediaDisplay()
{
    if (document.getElementById('Social_media').style.display == 'block')
    {
        document.getElementById('Social_media').style.display = 'none';
    }
    else
    {
        document.getElementById('Social_media').style.display = 'block';
    }
}

function guardar() {
  const input = document.getElementById("referencia");
  const [file] = input.files; // Obtén el archivo seleccionado
  
  if (file) {
    // Aquí puedes enviar el archivo al servidor o procesarlo según tus necesidades
    console.log("Imagen seleccionada:", file.name);
    var _referencia = URL.createObjectURL(file);
    console.log("url:",_referencia)
  } else {
    console.log("No se ha seleccionado ninguna imagen.");
  }
  var _Id = _Id++;
  var _nombre = document.getElementById("nombre").value;
  var _apellidos = document.getElementById("apellidos").value;
  var _email = document.getElementById("email").value;
  var _pedido = document.getElementById("pedido").value;
  var _detalles = document.getElementById("detalles").value;
  
  var fila = `<tr><td>${_Id}</td><td>${_nombre}</td><td>${_apellidos}</td><td>${_email}</td><td>${_pedido}</td><td>${_detalles}</td><td><img src="${_referencia}"></img></td></tr>`;
  document.getElementById("datos_body").innerHTML = fila;
  document.location.href = "mailto:rodolfopemc@outlook.com?subject=" + _pedido + "&body=" + _detalles + " " + file;
}