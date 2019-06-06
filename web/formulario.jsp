<%-- 
    Document   : formularioVenta
    Created on : 02-06-2019, 13:15:43
    Author     : Nacho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (request.getParameter("valor") != null) {
        %>
        <script type="text/javascript">alert("Cliente Ingresado");</script>       
        <%
            }
        %>
        <script type="text/javascript">
            
            function cargarSelectcomuna(valor)
            {
                
                var arrayValores = new Array(
                        new Array(1, 1, "Santiago"),
                        new Array(1, 2, "San Miguel"),
                        new Array(1, 3, "Macul"),
                        new Array(2, 1, "Valparaiso"),
                        new Array(2, 2, "Viña del Mar"),                        
                        new Array(2, 3, "Concón"),
                        new Array(3, 1, "Rancagua"),
                        new Array(3, 2, "Rengo"),
                        new Array(3, 3, "Tilcoco"),
                        );
                if (valor == 0)
                {
                
                    document.getElementById("selectComuna").disabled = true;
                } else {
                    
                    document.getElementById("selectComuna").options.length = 0;

               
                    document.getElementById("selectComuna").options[0] = new Option("Selecciona una opcion", "0");
                    for (i = 0; i < arrayValores.length; i++)
                    {
                   
                        if (arrayValores[i][0] == valor)
                        {
                            document.getElementById("selectComuna").options[document.getElementById("selectComuna").options.length] = new Option(arrayValores[i][2], arrayValores[i][1]);
                        }
                    }

                    document.getElementById("selectComuna").disabled = false;
                }
            }

            
            function seleccinado_selectComuna(value)
            {
                var v1 = document.getElementById("selectRegion");
                var valor1 = v1.options[v1.selectedIndex].value;
                var text1 = v1.options[v1.selectedIndex].text;
                var v2 = document.getElementById("selectComuna");
                var valor2 = v2.options[v2.selectedIndex].value;
                var text2 = v2.options[v2.selectedIndex].text;
            }
        </script>
        <h1>Formulario Ingreso Cliente</h1><hr>
        <form action="servlet_cliente.do" method="POST">
            <table border="0">
                <tr>
                    <td>Nombre: </td>
                    <td><input type="text" name="txt_nombre" vale=""></td>
                </tr>
                <tr>
                    <td>Correo: </td>
                    <td><input type="text" name="txt_correo" vale=""></td>
                </tr>
                <tr>
                    <td>Región: </td>
                    <td>
                        <select id='selectRegion' name="opt_region" onchange='cargarSelectcomuna(this.value);'>
                            <option value='0'>Selecciona una opcion</option>
                            <option value='1'>Región Metropolitana</option>
                            <option value='2'>Región de Valpareiso</option>
                            <option value='3'>Región del Libertador General Bernardo O´higgins</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Comuna:</td>
                    <td>
                        <select id='selectComuna' name="opt_comuna" onchange='seleccinado_selectComuna();' disabled>
                            <option value='0'>Selecciona una opcion</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Dirección: </td>
                    <td><input type="text" name="txt_direccion"></td>
                </tr>
                <tr>
                    <td>Telefono: </td>
                    <td><input type="text" name="txt_telefono"></td>
                </tr>
                <tr>
                    <td>Clave: </td>
                    <td><input type="password" name="txt_clave"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="btn_enviar" value="Enviar"></td>
                </tr>
            </table>
        </form>
        <a href="index.html">Volver</a>
    </body>
</html>
