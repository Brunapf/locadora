<%@page import="javax.swing.JOptionPane"%>
<%@page import="br.com.locadora.domain.*,java.util.*" %>
<jsp:useBean id="Cliente" class="br.com.locadora.domain.Cliente"/>
<jsp:useBean id="fachada" class="br.com.locadora.domain.Fachada"/>
<% fachada= new Fachada();
Cliente = new Cliente();
int codCliente= Integer.parseInt(request.getParameter("codCliente"));
String nome=request.getParameter("nome");
Cliente.setCodCliente(codCliente);
ClienteBD clbd=new ClienteBD();
clbd.setCliente("D".charAt(0), Cliente);
out.println("alert('O usuario "+ nome +" foi excluído do sistema.Pressione F5 para atualizar.');");				  
response.sendRedirect("relfuncionario.jsp");
%>

