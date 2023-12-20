
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

import model.Usuario;
import model.UsuarioDao;


/**
 * Servlet implementation class AlunoController
 */
@WebServlet({"/UsuarioController","/novousu", "/relusuario", "/exibircontar", "/editar","/btexcluir"})

public class UsuarioController extends HttpServlet {
    private static final long serialVersionUID = 1L;      
   
    public UsuarioController() {
        super();
        // TODO Auto-generated constructor stub
    }
   
    Usuario usu = new Usuario();
    UsuarioDao dao = new UsuarioDao();
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        //response.getWriter().append("Served at: ").append(request.getContextPath());
       
        String action = request.getServletPath();
       
        if(action.equals("/novousu")) {
            Salvar(request,response);
        }    
        if(action.equals("/relusuario")) {
            Imprimir(request,response);
        }   
        
        if (action.equals("/exibirconta")) {
        	exibir(request,response);
        }
        
        if (action.equals("/editar")) {
        	editar(request,response);
        }
        if (action.equals("/btexcluir")) {
        	excluir(request,response);
        }
   
    }
   

   

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
   
protected void Salvar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
   
    
    usu.setNome(request.getParameter("nome"));
    usu.setUsuario(request.getParameter("Usuario"));
    usu.setEmail(request.getParameter("Email"));
    usu.setCelular(request.getParameter("celular"));
    usu.setSenha(request.getParameter("senha"));
    usu.setConfirmarsenha(request.getParameter("confirmarsenha"));
     
    
    dao.Salva(usu);
   
   
    PrintWriter pw=response.getWriter();
    pw.println("Usuario cadastrado com sucesso");
    response.sendRedirect("index.jsp");
   
}

protected void Imprimir (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	
	//chamar o dao
	
	ArrayList<Usuario> lista = dao.listar();
	request.setAttribute("usuarios", lista);
	
	RequestDispatcher rd= request.getRequestDispatcher("relusu.jsp");
	rd.forward(request, response);
	
	
}

protected void exibir (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	
	//chamar o dao
	
	
	usu.setIdusuario(Integer.parseInt(request.getParameter("idusuario")));
	dao.Consulta(usu);
	request.setAttribute("idusuario", usu.getIdusuario());
	request.setAttribute("nome",usu.getNome());
	request.setAttribute("Celular",usu.getCelular());
	request.setAttribute("email",usu.getEmail());
	request.setAttribute("Senha", usu.getSenha());
	request.setAttribute("Confirmarsenha",usu.getConfirmarsenha());
	
	
	RequestDispatcher rd= request.getRequestDispatcher("editausu.jsp");
	rd.forward(request, response);

}

protected void editar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
   
	usu.setIdusuario(Integer.parseInt(request.getParameter("idusuario")));
	usu.setNome(request.getParameter("nome"));
	usu.setCelular(request.getParameter("celular"));
	usu.setEmail(request.getParameter("email"));
	usu.setSenha(request.getParameter("senha"));
	usu.setConfirmarsenha(request.getParameter("confirmarsenha"));
   
    
    dao.editar(usu);
    PrintWriter pw=response.getWriter();
    pw.println("Usuário alterado com sucesso");
    
    dao.editar(usu);
	Imprimir(request,response);
	response.sendRedirect("relusu.jsp");
}
   

protected void excluir(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
   
	usu.setIdusuario(Integer.parseInt(request.getParameter("idusuario")));
     
    dao.excluir(usu);
    Imprimir(request,response);
    response.sendRedirect("relusu.jsp");
    
}
   

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
