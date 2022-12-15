<div class="modal fade" id="facturaModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-primary text-black" >
                <h5 class="modal-tittle" >Factura</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-lable="Close"></button>
            </div>

            <form action="${pageContext.request.contextPath}/ServletControlador?accion=listar" method="POST" class="was-validated">
                <div class="modal-body">

                    <div class="form-group">
                        <label for="nombre">Nombre:</Label>
                        <input type="text" required class="form-control" name="nombre"/>
                    </div>

                    <div class="form-group">
                        <label for="categoria">Categoría:</Label>
                        <input type="text" required class="form-control" name="categoria"/>
                    </div>

                    <div class="form-group">
                        <label for="categoria">Total:</Label>
                        <input type="number" required class="form-control" name="total"/>
                    </div>
                    <div class="form-group">
                        <label for="categoria">Codigo:</Label>
                        <input type="text" required class="form-control" name="codigo"/>
                    </div>

                    <div class="modal-footer">
                        <button class="btn btn-success" type="submit">Pagar</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
