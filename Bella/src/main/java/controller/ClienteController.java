
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Cliente;
import model.ClienteDao;


/**
 * Servlet implementation class AlunoController
 */
@WebServlet({"/ClienteController","/novocli", "/relcli", "/Editar","/exibirdados"})

public class ClienteController extends HttpServlet {
    private static final long serialVersionUID = 1L;      
   
    public ClienteController() {
        super();
        // TODO Auto-generated constructor stub
    }
   
    Cliente cli = new Cliente();
    ClienteDao clidao = new ClienteDao();
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        //response.getWriter().append("Served at: ").append(request.getContextPath());
       
        String action = request.getServletPath();
       
        if(action.equals("/novocli")) {
            Salvar(request,response);
        }    
        if(action.equals("/relcliente")) {
            Imprimir(request,response);
        }   
        
        if (action.equals("/exibirdados")) {
        	Exibir(request,response);
        }
        
        if (action.equals("/Editar")) {
        	Editar(request,response);
        }
       
    }
   

   

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
   
protected void Salvar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
   
    
    cli.setNome(request.getParameter("nome"));
    cli.setEmail(request.getParameter("Email"));
    cli.setTelefone(request.getParameter("celular"));
    
     
    
    clidao.Salvar(cli);
   
    PrintWriter pw=response.getWriter();
    pw.println("Cliente cadastrado com sucesso");
    response.sendRedirect("index.jsp");
   
}

protected void Imprimir (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	
	//chamar o dao
	
	ArrayList<Cliente> lista = clidao.listar();
	request.setAttribute("clientes", lista);
	
	RequestDispatcher rd= request.getRequestDispatcher("relcli.jsp");
	rd.forward(request, response);
	
	
}

protected void Exibir (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	
	//chamar o dao
	
	
	cli.setIdcliente(Integer.parseInt(request.getParameter("idcliente")));
	clidao.Consulta(cli);
	request.setAttribute("idcliente", cli.getIdcliente());
	request.setAttribute("nome",cli.getNome());
	request.setAttribute("Telefone",cli.getTelefone());
	request.setAttribute("email",cli.getEmail());
	
	
	
	RequestDispatcher rd= request.getRequestDispatcher("editacli.jsp");
	rd.forward(request, response);

}

protected void Editar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
   
	cli.setIdcliente(Integer.parseInt(request.getParameter("idcliente")));
	cli.setNome(request.getParameter("nome"));
	cli.setEmail(request.getParameter("email"));
	cli.setTelefone(request.getParameter("Telefone"));
	
   
    
    clidao.Editar(cli);
    PrintWriter pw=response.getWriter();
    pw.println("relcli.jsp");
}
   

}
