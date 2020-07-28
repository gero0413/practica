<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="src/libs/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="src/libs/bootstrap/js/bootstrap.min.js">
        <title>Práctica</title>
    </head>

    <body>
        <div class="container">
            <div class="form-group">
                <h3 class="text-center">Agregar contacto</h3>
            </div>
            <form id="form-agregar" autocomplete="off">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="font-weight-bold">Nombre</label>
                            <input type="hidden" name="funcion" value="insertContacto">
                            <input type="text" name="nombre" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label class="font-weight-bold">Celular</label>
                            <input type="number" name="celular" class="form-control" maxlength="10" required>
                        </div>
                        <div class="form-group">
                            <label class="font-weight-bold">Email</label>
                            <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="font-weight-bold">Fecha de nacimiento</label>
                            <input type="date" name="fecha_nacimiento" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label class="font-weight-bold">Grupo</label>
                            <select class="form-control" name="grupo" id="grupo" required>
                                <option value="">Seleccione..</option>
                                {section name=grupo loop=$grupo}
                                    <option value="{$grupo[grupo].id}">{$grupo[grupo].nombre}</option>
                                {/section}
                            </select>
                        </div>
                    </div>
                    <div class="mx-auto" style="width: 200px;">
                        <button type="submit" class="btn btn-primary">Agregar</button>
                        <a href="index.php" class="btn btn-primary">Cancelar</a>
                    </div>
                </div>
            </form>
        </div>

        <script src="src/libs/jquery/jquery-3.5.1.min.js"></script>
        <script src="src/js_propios/contactos.js"></script>
    </body>

</html>