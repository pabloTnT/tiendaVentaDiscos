<%-- 
    Document   : login
    Created on : 06-06-2019, 1:16:07
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
        <h2>Disquera Rockstar</h2>
        <form method="POST" action="servlet_proceso.do">
            <table align="center" border="0">
                <tbody>
                    <tr>
                        <td>Usuario: </td>
                        <td><input type="text" name="txt_usuario" value=""></td>
                    </tr>
                    <tr>
                        <td>Contraseña: </td>
                        <td><input type="password" name="txt_clave" value="" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" align="center" name="btn_acceder" value="Acceder"></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
