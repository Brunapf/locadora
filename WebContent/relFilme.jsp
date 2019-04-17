<%@page import="java.util.Vector"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="br.com.locadora.domain.*" errorPage="erro.jsp"%>
<jsp:useBean id="Filme" class="br.com.locadora.domain.Filme"/>
<jsp:useBean id="fachada" class="br.com.locadora.domain.Fachada"/>

<%
//Nada ser� gravado no cache do cliente
    response.setDateHeader("Expires", 0);
    response.setHeader("Pragma", "no-cache");
    if (request.getProtocol().equals("HTTP/1.1")) {
        response.setHeader("Cache-Control", "no-cache");
    }

    
    String pesquisa = request.getParameter("Nome");
    String cor = "";//Ser� utilizado para manipular as cores das celulas
    int contador = 0;
    Vector vetFilme = new Vector();
    vetFilme = fachada.getFilmePorNome(pesquisa);

%>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <link rel="stylesheet" href="css/estilo.css" type="text/css" />

        <title>Cadastro de Filme</title>



        <script language="JavaScript">
            function exclui(codigo) {
                if (confirm("Deseja realmente excluir o Filme ?" + nome)) {
                    document.location.href = "rsexcluiuFilme.jsp?codigo=" + codigo;
                }
                else {
                }
            }
        </script>



    </head>

    <body id="container">

        <!-- Div Cental -->
        <div id="geral">


            <!-- Cabeçalho -->
            <div id="topo">
                <div class="logo"><a href="index.jsp"><img src="img/title.png" width="150" height="90" /></a></div>

                <!-- menu -->
                <%@include file="menu.jsp" %>
                <!-- Fim menu -->

                <!-- Meio-->
                <div>

                    <div id="meio">
                        <form action="relFilme.jsp" method="post" name="frmCadastro" target="_self" id="frmCadastro">
                            Filttrar Pesquisa 
                            <label for="nome">nome</label>
                            <input type="text" name="nome" id="nome" />
                            <input type="submit" value="Pesquisar" />
                        </form>
                        <blockquote> 
                            <blockquote>
                                <h1><strong>.<span class="style1">: Filmes Cadastrados :.</span></strong></h1>
                            </blockquote>
                        </blockquote>
                        <table width="100%" border="0" align="center">
                            <tr bgcolor="#669999"> 
                                <td width="6%"><span class="style1"><strong>Codigo do Filme</strong></span></td>
                                <td width="40%"><span class="style1"><strong>Titulo</strong></span></td>
                                <td width="15%"><span class="style1"><strong>Codigo Categoria</strong></span></td>
                                <td width="15%"><span class="style1"><strong>Diretor</strong></span></td>
                                <td width="40%"><span class="style1"><strong>Valor Locacao</strong></span></td>
                                <td width="10%"><span class="style1"><strong>Reservada</strong></span></td>
                                <td colspan="2">
                                    <div align="center" class="style1"><strong>Manuten&ccedil;&atilde;o</strong></div></td>
                            </tr>
                            <%
                                for (int i = 0; i < vetFilme.size(); i++) {
                                    Filme = (Filme) vetFilme.elementAt(i);
                                    contador++;
                                    if (contador % 2 == 0) {
                                        cor = "#FFFFCC";
                                    } else {
                                        cor = "";
                                    }
                            %>
                            <tr bgcolor="<%=cor%>"> 
                                <td><%=Filme.getCodfilme()%></td>
                                <td><%=Filme.getTitulo()%></td>
                                <td><%=Filme.getCodcategoria()%></td>
                                <td><%=Filme.getDiretor()%></td>
                                <td><%=Filme.getValorlocacao()%></td>
                                <td><%=Filme.getReservada()%></td>
                                
                                <td width="6%"> 
                                    <div align="center"><a href="editFilme.jsp.jsp?cod_filme=<%=Filme.getCodfilme()%>"><img src="img/editar.png" title="Editar" width="32" height="32" border="0"></a></div></td>
                                <td width="10%"> 
                                    <div align="center"><a href="rsexcluiFilme.jsp?cod_filme=<%=Filme.getCodfilme()%>"><img src="img/apagar.png" title="Excluir" width="32" height="32" border="0" onclick="exclui(cod_filme)"></a>

                                    </div></td>
                            </tr>
                            <%
                                }

                            %> 

                        </table>
                        <%--  <%
                        }
         
                    else {
%> 
                    <script>
alert('Nenhum Registro Encontado')
                    </script>
                    <%}
                    %>--%>
                        <blockquote> 
                            <blockquote>
                                <p><a class="cad" href="cadastrofilme.jsp" target="_self" class="style1">Adicionar Novo Filme</a> </br>

                                </p>
                            </blockquote>
                        </blockquote>


                    </div>
                </div>

                <!-- Fim Meio-->

                <!-- Baixo -->
                <div>
                    <%@include file="rodape.jsp" %>
                </div>
                <!-- Fim Baixo -->
            </div>
        </div>
    </body>
</html>
