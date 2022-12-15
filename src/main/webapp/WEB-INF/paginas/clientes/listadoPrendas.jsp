<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="es_EC"></fmt:setLocale><!-- comment -->
 <div class="container mt-2">
            <div class="row">
        <c:forEach var="prendas" items="${prendas}">
                    <div class="col-sm-4">
                    <div class="card">
                        
                        <div class="card-header">
                            <label style="font-weight: bold;"><i>${prendas.getDescripcion()}</i></label>
                        </div>
                        
                        <div class="card-body" style="text-align: center"> 
                            <img src="ServletControladorIMG?id=${prendas.getIdPrenda()}" width="200" height="180"><br>
                            <label style="font-weight: bold;">Talla: </label>
                          <i>${prendas.getTalla()}</i>
                        </div>
                        
                        <div class="card-footer text-center" style="background-color: #00659B; color: white">
                            <label style="font-weight: bold;">Precio: $</label>
                            <label>${prendas.getPrecio()}</label>
                            <div>
                                <a href="ServletControlador?accion=agregarCarrito&id=${prendas.getIdPrenda()}" class="btn btn-outline-info bg-light">Agregar carrito</a>
                               
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
            </div>
        </div>
 
 