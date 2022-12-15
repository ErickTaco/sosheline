<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito de compras</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/d826e2fbf6.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #00659B">
            <a class="navbar-brand" href="#">Soshelina</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="pagina.jsp"><i class="fas fa-cart-plus"></i> Seguir en la Compra <span class="sr-only">(current)</span></a>
                    </li>

                </ul>
            </div>
        </nav>
        <section id="id-productos">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <div class="card">
                            <div class="card-header">
                                <h4>Listado Productos</h4>
                            </div>
                        </div>
                        <table class="table table-striped">
                            <thead class="table-dark">
                                <tr>
                                    <td>ID PRENDA</td>
                                    <td>DESCRIPCION</td>
                                    <td>TALLA</td>
                                    <td>PRECIO</td>

                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="listarCarrito" items="${listarCarrito}"> 
                                    <tr>
                                        <td>
                                            ${listarCarrito.item}
                                        <td>
                                            ${listarCarrito.descripcion} 
                                        </td>
                                        <td>
                                            ${listarCarrito.talla}
                                        </td>
                                        <td>
                                            ${listarCarrito.precio}  
                                        </td>


                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </section>


        <div class="container mt-2">
            <div class="row">

                <div class="col-sm-4">
                    <div class="card">

                        <div class="card-header">
                            <h3>Comprar</h3>
                        </div>

                        <div class="card-body"> 
                            <label>Total  Pagar</label>
                            <input type="text" readonly="" class="form-control" value="${total}" >

                        </div>

                        <button class="btn btn-success" data-toggle="modal" data-target="#agregarProductoModal" >
                           <i class="fa-solid fa-dollar-sign"></i>Pagar Pedido
                        </button>
                    </div>
                </div>

            </div>
        </div>




        <div class="modal fade" id="agregarProductoModal">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header text-black" style="background-color: #00659B;">
                        <h5 class="modal-tittle" style="color: white">Factura</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-lable="Close"></button>
                    </div>

                    <form action="finCompra.jsp" method="POST" class="was-validated">
                        <div class="modal-body">


                            <div class="form-group">
                                <label for="nombre">Nombres Completos:</Label>
                                <input type="text" required class="form-control" name="nombres"/>
                            </div>


                            <div class="form-group">
                                <label for="categoria">Cedula</Label>
                                <input type="text" required class="form-control" name="cedula"/>
                            </div>


                            <div class="form-group">
                                <label for="categoria">Descripcion</Label>


                                <input type="text" required class="form-control"name="descripcion"
                                       value="<c:forEach var="listarCarrito" items="${listarCarrito}">${listarCarrito.descripcion} </c:forEach> "/>
                                </div>


                                <div class="form-group">
                                    <label for="categoria">Total:</Label>
                                    <input type="number" required class="form-control" name="total"value="${total}" />
                            </div>
                            <div class="form-group">
                                <label for="categoria">Tarjeta</Label>
                                <input type="text" required class="form-control" name="tarjeta"/>
                            </div>

                            <div class="modal-footer">
                                <button class="btn btn-success" type="submit">Guardar</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
    </body>
</html>
