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
    if (document.getElementById('form').style.display == 'inline-block')
    {
        document.getElementById('form').style.display = 'none';
    }
    else
    {
        document.getElementById('form').style.display = 'inline-block';
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

  

const btn = document.getElementById('button');

