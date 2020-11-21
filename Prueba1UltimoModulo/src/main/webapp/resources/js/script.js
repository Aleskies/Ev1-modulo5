function eliminarGet(rut) {
    
    if (window.confirm("¿Está seguro que desea eliminar al usuario?")) {
        window.location = "eliminar?rut=" + rut;
    }
}

function eliminarPost(rut) {
    
    if(window.confirm("¿Está seguro que desea eliminar al usuario?")){
        document.getElementById("del").submit()
    }
}