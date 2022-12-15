

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--Título-->
        <title>Soshelina</title>
        <!--Estilos-->
        <link href="estilos/estilosSoshelina.css" rel="stylesheet" type="text/css"/>
        <!--Fuentes-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Leckerli+One&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@1,300&family=Playfair+Display&display=swap" rel="stylesheet">        
        <link href="https://fonts.googleapis.com/css2?family=Satisfy&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Acme&display=swap" rel="stylesheet">
        <!--AOS Animaciones-->
        <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/d826e2fbf6.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <!--Inicio Header-->
        <jsp:include page="WEB-INF/paginas/comunes/header.jsp"/>



        <!--Fin del Header-->

        <!--Inicio Main -->
        <section class="main">
            <!--Sección Quienes Somos-->
            <section class="contenedor1 quienes-somos" id="quienes-somos">
                <img src="img/logo2.png" data-aos="zoom-in-up"><!--Imagen-->
                <div class="textos">
                    <h3>¿Quiénes somos? <i class="fa fa-solid fa-hand-holding-heart"></i></h3><!--Título-->
                    <p>Búscanos y notarás que <i><b>"Soshelina"</b></i> ofrece una nueva versión de 
                        moda juvenil a todo tipo de mujeres que buscan un estilismo elegante y
                        diferenciador para el día a día y los momentos más especiales. 
                        <br>Tenemos ofertas y todo está al alcance de el cliente.</p>
                </div>
            </section><!-- FIN Sección Quienes Somos -->

            <!--Sección Promociones-->
            <section class="contenedor1 promociones" id="promociones">
                <h3 class="titulo">Promociones <i class="fa fa-solid fa-tags"></i></h3><!--Título-->
                <p>Nos volvimos locos y botamos la casa por la ventana, ven este <b>2 de Septiembre</b> a nuestro <b>Día de Mega Rebajas</b>, 
                    toda la mercadería al 50% de descuento. </p>
                <p>Recuerda: <span> La vida es demasiado corta para llevar ropa aburrida.</span></p>
                <img src="img/descuentos.png" data-aos="zoom-in"/><!--Imagen-->
            </section><!-- FIN Sección Promociones -->

            <jsp:include page="WEB-INF/paginas/clientes/listadoPrendas.jsp"/>

            <!-- Sección Contáctanos -->
            <section class="contenedor1 contactanos" id="contactanos">
                <h3 class="titulo">Contáctanos <i class="fa fa-solid fa-comment-dots"></i></h3><!--Título-->
                <!--Link de Whatsapp-->
                <div class="mensaje">
                    <p>Envíanos un mensaje y estaremos gustosos de atender tus dudas. 👉 
                        <a href="https://api.whatsapp.com/send?phone=+593999883472&text=Quiero%20m%C3%A1s%20informaci%C3%B3n%20acerca%20de:%20">
                            <i class="fab fa-whatsapp"></i>
                        </a>
                        <br>
                        <br>
                        <iframe class="mapa" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.777144250138!2d-78.54124148255615!3d-0.26030589999998727!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x91d598e1407480ef%3A0x5f6d81a21eb8500d!2sAv.%20Ajav%C3%AD%20%26%20Oceano%20Pac%C3%ADfico%2C%20Quito%20170148!5e0!3m2!1ses!2sec!4v1647195040593!5m2!1ses!2sec" width="450" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>                        
                    </p>    
                </div>
                <!--Dirección-->
                <div class="partes direccion">
                    <h4>Dirección: </h4>
                    <p><i>Calle Pacícifo s16-40 y Av. Ajavi.</i></p>
                    <p><b>Sector Solanda</b></p>
                </div>
                <!--Redes sociales-->
                <div class="social-media partes">
                    <h4>Redes Sociales: </h4>
                    <i class="fab fa-facebook"></i>
                    <i class="fab fa-instagram"></i>
                </div>
            </section><!-- FIN Sección Contáctanos -->
        </section><!-- Fin Main -->

        <footer><!--Inicio del Footer-->
            <div class="contenedor">
                <div class="copyrigiht">
                    <p>Copyright @Erick Taco, Edgar Cachumba, Mishell Villavicencio</p>
                </div> 
            </div>
        </footer><!--Fin del Footer-->

        <!--Script AOS animaciones-->
        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
        <!--JQuery-3.6.0-->
        <script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
        <!--Efectos js-->
        <script src="js/efectos-aos.js" type="text/javascript"></script>
        <!--Kit íconos-->
        <script src="https://kit.fontawesome.com/7fd9076969.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
    </body>
</html>
