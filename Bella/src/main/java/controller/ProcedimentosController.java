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

import model.Procedimentos;
import model.ProcedimentosDao;
import model.Usuario;
import model.UsuarioDao;



@WebServlet({"/ProcedimentosController","/novopro", "/relpro", "/exibirpro", "/excluirpro"})

public class ProcedimentosController extends HttpServlet {
    private static final long serialVersionUID = 1L;      
   
    public ProcedimentosController() {
        super();
        // TODO Auto-generated constructor stub
    }
   
    Procedimentos pro = new Procedimentos();
    ProcedimentosDao prodao = new ProcedimentosDao();
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        //response.getWriter().append("Served at: ").append(request.getContextPath());
       
        String action = request.getServletPath();
       
        if(action.equals("/novopro")) {
            SalvarPro(request,response);
        }    
        if(action.equals("/relpro")) {
            Imprimir(request,response);
        }   
        
        if (action.equals("/exibirpro")) {
        	exibir(request,response);
        
        }
        /* if (action.equals("/excluirpro")) {
        	excluir(request,response);
        } */
   
    }
   

   

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
   
protected void SalvarPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
   
    
    pro.setLimpeza(request.getParameter("limpeza"));
    pro.setEnzimascap(request.getParameter("enzimascap"));
    pro.setPreenchimento(request.getParameter("preenchiemnto"));
    pro.setToxina(request.getParameter("toxina"));
    pro.setDrenagem(request.getParameter("drenagem"));
    pro.setDepilacao(request.getParameter("depilacao"));
    pro.setMicrovasos(request.getParameter("microvasos"));
    pro.setCriolipolise(request.getParameter("criolipolise"));
    pro.setEnzimascorpo(request.getParameter("enzimascorpo"));
     
    
    prodao.Salva(pro);
   
   
    PrintWriter pw=response.getWriter();
    pw.println("Usuario cadastrado com sucesso");
    response.sendRedirect("index.jsp");
   
}

protected void Imprimir (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	
	//chamar o dao
	
	ArrayList<Procedimentos> lista = prodao.listar();
	request.setAttribute("procedimentos", lista);
	
	RequestDispatcher rd= request.getRequestDispatcher("relpro.jsp");
	rd.forward(request, response);
	
	
}

protected void exibir (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	
	//chamar o dao
	
	
	
	prodao.exibir(pro);
	request.setAttribute("limpeza", pro.getLimpeza());
	request.setAttribute("enzimascap",pro.getEnzimascap());
	request.setAttribute("preenchimento",pro.getPreenchimento());
	request.setAttribute("toxina",pro.getToxina());
	request.setAttribute("drenagem", pro.getDrenagem());
	request.setAttribute("depilacao",pro.getDepilacao());
	
	
	RequestDispatcher rd= request.getRequestDispatcher("editapro.jsp");
	rd.forward(request, response);

}

/*

protected void editar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
   
	 	pro.setLimpeza(request.getParameter("limpeza"));
	    pro.setEnzimascap(request.getParameter("enzimascap"));
	    pro.setPreenchimento(request.getParameter("preenchiemnto"));
	    pro.setToxina(request.getParameter("toxina"));
	    pro.setDrenagem(request.getParameter("drenagem"));
	    pro.setDepilacao(request.getParameter("depilacao"));
	    pro.setMicrovasos(request.getParameter("microvasos"));
	    pro.setCriolipolise(request.getParameter("criolipolise"));
	    pro.setEnzimascorpo(request.getParameter("enzimascorpo"));
   
    
    pro.editar(pro);
    PrintWriter pw=response.getWriter();
    pw.println("Usuário alterado com sucesso");
    
    pro.editar(pro);
	Imprimir(request,response);
	response.sendRedirect("relusu.jsp");
}
   */

 /*protected void excluir(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
   
	pro.setIdusuario(Integer.parseInt(request.getParameter("idusuario")));
     
    prodao.excluir(pro);
    Imprimir(request,response);
    response.sendRedirect("relusu.jsp");
    
}
   

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }  */

}
