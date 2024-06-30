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

const fileInput = document.getElementById("referencia");

console.log(fileInput.referencia instanceof FileList); // true even if empty

for (const file of fileInput.files) {
  console.log(file.name); // prints file name
  let fileDate = new Date(file.lastModified);
  console.log(fileDate.toLocaleDateString()); // prints legible date
  console.log(
    file.size < 1000 ? file.size : Math.round(file.size / 1000) + "KB",
  );
  console.log(file.type); // prints MIME type
}
