<%-- 
    Document   : index
    Created on : 17/08/2023, 10:53:00 a. m.
    Author     : ginna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de conversion </title>
            <link href="styles.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="convertidor">
            <h1>Sistema de conversion </h1>
            <label for="opcion"><h4>Seleccion una opción o sistema al cual convertir el numero decimal:</h4></label>
            <select id="opcion" onchange="mostrarFormulario()">
                <option value="">Selecciona una opción</option>
                <option value="opcion1">Binario</option>
                <option value="opcion2">Octal</option>
                <option value="opcion3">Hexadecimal</option>
            </select>
            <div id="formulario1" style="display:none;">
                <h2>Binario</h2>
                <form action="servletRegistro" method="post">
                    <input type="hidden" id="id" name="sistema" value="binario">
                    <label for="numero">Numero decimal que desea pasar a binario</label>
                    <input type="text" name="numero" id="numero"><br>

                    <button type="submit">Enviar</button>
                    <br>
                </form>
            </div>
            <div id="formulario2" style="display:none;">
                <h2>Octal</h2>
                <form action="servletRegistro" method="post">
                    <input type="hidden" id="id" name="sistema" value="octal">
                    <label for="numero" >Numero decimal que desea pasar a octal</label>
                    <input type="text" name="numero" id="numero"><br>


                    <button type="submit">Enviar</button>
                    <br>
                </form>
            </div>
            <br>
            <div id="formulario3" style="display:none;">
                <h2>Hexadecimal</h2>
                <form action="servletRegistro" method="post">
                    <input type="hidden" id="id" name="sistema" value="hexadecimal">

                    <label for="numero" >Numero decimal que desea pasar a hexadecimal</label>
                    <input type="text" name="numero" id="numero"><br>

                    <button type="submit">Enviar</button>

                </form>

            </div>
        </div>
        <script>
            function mostrarFormulario() {
                var opcion = document.getElementById("opcion").value;
                if (opcion === "opcion1") {
                    document.getElementById("formulario1").style.display = "block";
                    document.getElementById("formulario2").style.display = "none";
                    document.getElementById("formulario3").style.display = "none";
                } else if (opcion === "opcion2") {
                    document.getElementById("formulario1").style.display = "none";
                    document.getElementById("formulario2").style.display = "block";
                    document.getElementById("formulario3").style.display = "none";
                } else if (opcion === "opcion3") {
                    document.getElementById("formulario1").style.display = "none";
                    document.getElementById("formulario2").style.display = "none";
                    document.getElementById("formulario3").style.display = "block";
                } else {
                    document.getElementById("formulario1").style.display = "none";
                    document.getElementById("formulario2").style.display = "none";
                    document.getElementById("formulario3").style.display = "none";
                }
            }

        </script>

    </body>
</html>
