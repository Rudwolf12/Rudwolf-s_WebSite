console.log("¡Hola mundo desde JavaScript!");

function UnfoldMobileMenu()
{
    if (document.querySelector('.menu-row-mobile .menu-dropdown-mobile .menu-dropdown-content-mobile').style.display == 'block')
    {
        document.querySelector('.menu-row-mobile .menu-dropdown-mobile .menu-dropdown-content-mobile').style.display = 'none';
    }
    else
    {
        document.querySelector('.menu-row-mobile .menu-dropdown-mobile .menu-dropdown-content-mobile').style.display = 'block';
    }
}