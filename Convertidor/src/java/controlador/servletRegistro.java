package controlador;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author ginna
 */
@WebServlet(name = "servletRegistro", urlPatterns = {"/servletRegistro"})
public class servletRegistro extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sistema = request.getParameter("sistema");
        String inputNumero = request.getParameter("numero");
        String respuesta = "";

        try {
            int numero = Integer.parseInt(inputNumero);

            if (sistema.equalsIgnoreCase("binario")) {
                respuesta = "El numero " + numero + " es " + Integer.toBinaryString(numero) + " en binario";
            } else if (sistema.equalsIgnoreCase("hexadecimal")) {
                respuesta = "El numero " + numero + " es " + Integer.toHexString(numero) + " en hexadecimal";
            } else if (sistema.equalsIgnoreCase("octal")) {
                respuesta = "El numero " + numero + " es " + Integer.toOctalString(numero) + " en octal";
            }

        } catch (NumberFormatException e) {
            respuesta = "Por favor, ingrese un número válido.";
        }

        request.getSession().setAttribute("numero", inputNumero);
        request.getSession().setAttribute("respuesta", respuesta);
        response.sendRedirect("salida.jsp");
    }
}
