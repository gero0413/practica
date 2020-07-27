$('document').ready(iniciaContactos);

function iniciaContactos() {
    $('#form-agregar').on('submit', agregaContacto);
    $('#tablaContactos').on('click', '#eliminarContacto', eliminaContacto);
    $('#actualizaContacto').on('submit', editaContacto);
}

function agregaContacto(e) {
    e.preventDefault();
    $.ajax({
        url: "index.php",
        type: "post",
        data: $(this).serialize(),
        success: function(data) {
            window.location.href = 'index.php';
        }
    })
}

function editaContacto(e) {
    e.preventDefault();
    $.ajax({
        url: "index.php",
        type: "post",
        data: $(this).serialize(),
        success: function(data) {
            window.location.href = 'index.php';
        }
    })
}

function eliminaContacto() {
    let parametros = {
        'funcion': 'eliminaContacto',
        'id': $(this).data('id')
    }
    let confirma = confirm("Esta seguro de eliminar el contacto");
    if (confirma == true) {
        $.ajax({
            url: "index.php",
            type: "post",
            data: parametros,
            success: function(data) {
                window.location.href = 'index.php';
            }
        })
    }
}