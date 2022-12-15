AOS.init();

//vamos a darle el efecto al menú
let ubicacionPrincipal = window.pageYOffset; //0
/*aparece y desaparece el menu segun mueve el scroll*/
window.addEventListener("scroll", function () {
    let desplazamientoActual = window.pageYOffset; //180
    if (ubicacionPrincipal >= desplazamientoActual) { // 200 > 180
        document.getElementsByTagName("nav")[0].style.top = "0px";
    } else {
        document.getElementsByTagName("nav")[0].style.top = "-130px";
    }
    ubicacionPrincipal = desplazamientoActual; //200

});

$(document).ready(function () {
    var quienesSomos = $('#quienes-somos').offset().top,
            galeria = $('#galeria').offset().top,
            promociones = $('#promociones').offset().top,
            catalogo = $('#catalogo').offset().top,
            contactanos = $('#contactanos').offset().top;
    //Función del Scroll para Acerca De...
    $('#btn-quienes-somos').on('click', function (e) {
        e.preventDefault();
        $('html, body').animate({
            scrollTop: quienesSomos - 80
        }, 500);
    });

    //Función del Scroll para Promociones
    $('#btn-promociones').on('click', function (e) {
        e.preventDefault();
        $('html, body').animate({
            scrollTop: promociones - 80
        }, 500);
    });

    //Función del Scroll para Galería
    $('#btn-galeria').on('click', function (e) {
        e.preventDefault();
        $('html, body').animate({
            scrollTop: galeria - 80
        }, 500);
    });

    //Función del Scroll para Catálogo
    $('#btn-catalogo').on('click', function (e) {
        e.preventDefault();
        $('html, body').animate({
            scrollTop: catalogo - 80
        }, 500);
    });

    //Función del Scroll para Contáctanos
    $('#btn-contactanos').on('click', function (e) {
        e.preventDefault();
        $('html, body').animate({
            scrollTop: contactanos - 80
        }, 500);
    });
});

// Menu-Desplegable
let enlaces = document.querySelectorAll(".enlaces")[0];
let semaforo = true;
document.querySelectorAll(".menu-desplegable")[0].addEventListener("click", function () {
    if (semaforo) {
        document.querySelectorAll(".menu-desplegable")[0].style.color = "#fff";
        semaforo = false;
    } else {
        document.querySelectorAll(".menu-desplegable")[0].style.color = "#000";
        semaforo = true;
    }
    enlaces.classList.toggle("menudos");
});