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
            <div class="form-group row justify-content-center align-items-center minh-100">
                <h3>Listado de contactos</h3>
            </div>
            <div class="form-group">
                <table id="tablaContactos" class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Nombre </th>
                            <th scope="col">Celular </th>
                            <th scope="col">Email</th>
                            <th scope="col">Grupo</th>
                            <th scope="col">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>

                        {section name=tabla loop=$data_tabla}
                            <tr>
                                <td>{$data_tabla[tabla].nombre}</td>
                                <td>{$data_tabla[tabla].celular}</td>
                                <td>{$data_tabla[tabla].email}</td>
                                <td>{$data_tabla[tabla].grupo}</td>
                                <td>
                                    <a href="editar.php?id='{$data_tabla[tabla].id}'" class="btn btn-primary">Editar</a>
                                    <button id="eliminarContacto" class="btn btn-primary" data-id="{$data_tabla[tabla].id}">Eliminar</button>
                                </td>
                            </tr>
                        {/section}
                    </tbody>
                </table>
            </div>
            <div class="form-group row justify-content-center align-items-center minh-100">
                <a href="index.php?funcion=inserData" class="btn btn-primary">Agregar</a>
            </div>
        </div>

        <script src="src/libs/jquery/jquery-3.5.1.min.js"></script>
        <script src="src/js_propios/contactos.js"></script>
    </body>

</html>