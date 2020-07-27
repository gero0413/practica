<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="src/libs/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="src/libs/bootstrap/js/bootstrap.min.js">

        <title>Practica</title>
    </head>

    <body>
        <div class="container">
            <h1>Editar contacto</h1>
            <form id="actualizaContacto" autocomplete="off">

                <div class="form-group">
                    <label>Nombre</label>
                    <input type="hidden" name="id" class="form-control" value="{$data_editar.id}">
                    <input type="hidden" name="funcion" class="form-control" value="actualizaContacto">
                    <input type="text" name="nombre" class="form-control" value="{$data_editar.nombre}">
                </div>
                <div class="form-group">
                    <label>Celular</label>
                    <input type="number" name="celular" class="form-control" value="{$data_editar.celular}">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Email</label>
                    <input type="email" name="email" class="form-control" id="exampleInputEmail1" value="{$data_editar.email}">
                </div>
                <div class="form-group">
                    <label>Grupo</label>
                    <select class="form-control" name="grupo" id="grupo">
                        <option value="{$data_editar.grupo}" selected>{$data_editar.grupo}</option>
                        <option>Trabajo</option>
                        <option>Familia</option>
                        <option>Amigos</option>
                        <option>Estudio</option>
                    </select>
                </div>

                <button type="submit" class="btn btn-primary">Actualizar</button>
                <a href="index.php"class="btn btn-primary">Cancelar</a>
            </form>
        </div>
        
        <script src="src/libs/jquery/jquery-3.5.1.min.js"></script>
        <script src="src/js_propios/contactos.js"></script>
    </body>

</html>