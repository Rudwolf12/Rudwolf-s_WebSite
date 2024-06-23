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