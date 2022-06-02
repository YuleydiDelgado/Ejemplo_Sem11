package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Persona;
public class Recibir extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String dui = request.getParameter("txtDui");
        String apellidos = request.getParameter("txtApellidos");
        String nombres = request.getParameter("txtNombres");
        System.out.print(dui);
        System.out.print(apellidos);
        System.out.print(nombres);
          
        
        Persona person = new Persona(); //Al crear objetivo automaticamente se conecta a la BD
        person.setDui(dui);
        person.setApellidos(apellidos);
        person.setNombres(nombres);
        
        if(person.insertarDatos() == true){ //Recuerdar que era booleana
System.out.print("Si");
            request.getRequestDispatcher("exito.jsp").forward(request, response);
        }else{
           System.out.print("No");
           request.getRequestDispatcher("noexito.jsp").forward(request,response);
        }
        
       
        
        
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
