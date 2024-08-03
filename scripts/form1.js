document.getElementById('form').addEventListener('submit', function(event) {
    //  const input = document.getElementById("archivo");
    //  const [file] = input.files; // Obtén el archivo seleccionado  
    //  if (file) {
        // Aquí puedes enviar el archivo al servidor o procesarlo según tus necesidades
    //    console.log("Archivo seleccionado:", file.name);
    //    var _file = URL.createObjectURL(file);
    //    console.log("url:",_file)
    //  } else {
    //    console.log("No se ha seleccionado ningun archivo.");
    //  }
    //  document.getElementById("file").value = _file;
    //  document.getElementById("archivo").value = "";
    
    //   event.preventDefault();
    
       btn.value = 'Sending...';
    
       const serviceID = 'default_service';
       const templateID = 'template_v5xv2bj';
    
       emailjs.sendForm(serviceID, templateID, this)
        .then(() => {
          btn.value = 'Send Email';
          alert('Sent!');
        }, (err) => {
          btn.value = 'Send Email';
          alert(JSON.stringify(err));
        });
    });