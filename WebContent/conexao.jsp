<%@ page language="java" import="java.sql.*"%>
<%
try{
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String user = "admin";
	String senha = "oracle";
	
	Class.forName(driver);
	out.println("Driver carregado");
	
	Connection con = DriverManager.getConnection(url,user,senha);
	out.println("conectado com sucesso");
}catch(ClassNotFoundException e){
	out.println("Erro ao carregar Driver" + e);
}catch(Exception e){
	out.println("Não foi possivel conectar");
}
%>