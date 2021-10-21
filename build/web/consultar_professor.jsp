<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOProfessor"%>
<%@page import="MODEL.Professor"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Professor</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <style>
            #tabelaCor {
                font-family: Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 80%;
                margin: auto;
            }

            #tabelaCor td, #tabelaCor th {
                border: 1px solid #C0C0C0;
                padding: 10px;

            }

            #tabelaCor tr:hover {background-color: #ddd;}

            #tabelaCor th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #333;
                color: #fff;
            }
        </style>
    </head>
    <body>
        <div class="header">
            <div class="header-right">
                <a href="index.jsp">Inicio</a>
                <a href="novo_professor.jsp">Novo Professor</a>
                <a class="active" href="consultar_professor.jsp">Consultar Professor</a>
                <a href="nova_disciplina.jsp">Nova Disciplina</a>
                <a href="consultar_disciplina.jsp">Consultar Disciplinas</a>
            </div>
        </div>
        <div class="wrapper">
            
            <form class="form_busca" action="consultar_professor.jsp" method="post">
                <input class="searchP" type="search" name="nome_professor" placeholder="Busca.."/>
                <input class="submitP" type="submit" value="Pequisar"/>
            </form>

            <%
                out.print("<table id='tabelaCor'>");
                out.print("<tr>");
                out.print("<th>ID</th>");
                out.print("<th>NOME</th>");
                out.print("<th>EMAIL</th>");
                out.print("<th>SENHA</th>");
                out.print("<th>ALTERAR</th>");
                out.print("<th>EXCLUIR</th>");
                out.print("</tr>");
                DAOProfessor prof = new DAOProfessor();
                if (request.getParameter("nome_professor") == "" || request.getParameter("nome_professor") == null) {
                    ArrayList<Professor> lista_professor = prof.exibirProfessor();
                    for (int i = 0; i < lista_professor.size(); i++) {
                        out.print("<tr>");
                        out.print("<td>" + lista_professor.get(i).getId_professor() + "</td>");
                        out.print("<td>" + lista_professor.get(i).getNome_professor() + "</td>");
                        out.print("<td>" + lista_professor.get(i).getEmail_professor() + "</td>");
                        out.print("<td>" + lista_professor.get(i).getSenha_professor() + "</td>");

                        out.print("<td><a href='alt_prof.jsp?id_professor="
                                + lista_professor.get(i).getId_professor()
                                + "&nome_professor=" + lista_professor.get(i).getNome_professor()
                                + "&email_professor=" + lista_professor.get(i).getEmail_professor()
                                + "&senha_professor=" + lista_professor.get(i).getSenha_professor()
                                + "'><img src='IMG/editaricon.png' width='20' heigth='20'></a></td>");
                        out.print("<td><a href='apag_prof.jsp?id_professor="
                                + lista_professor.get(i).getId_professor()
                                + "&nome_professor=" + lista_professor.get(i).getNome_professor()
                                + "&email_professor=" + lista_professor.get(i).getEmail_professor()
                                + "&senha_professor=" + lista_professor.get(i).getSenha_professor()
                                + "'><img src='IMG/apagaricon.png' width='20' heigth='20'></a></td>");
                        out.print("</tr>");
                    }
                } else {
                    ArrayList<Professor> lista_professor = prof.buscaNomeProfessor(request.getParameter("nome_professor"));
                    for (int i = 0; i < lista_professor.size(); i++) {
                        out.print("<tr>");
                        out.print("<td>" + lista_professor.get(i).getId_professor() + "</td>");
                        out.print("<td>" + lista_professor.get(i).getNome_professor() + "</td>");
                        out.print("<td>" + lista_professor.get(i).getEmail_professor() + "</td>");
                        out.print("<td>" + lista_professor.get(i).getSenha_professor() + "</td>");

                        out.print("<td><a href='alt_prof.jsp?id_professor="
                                + lista_professor.get(i).getId_professor()
                                + "&nome_professor=" + lista_professor.get(i).getNome_professor()
                                + "&email_professor=" + lista_professor.get(i).getEmail_professor()
                                + "&senha_professor=" + lista_professor.get(i).getSenha_professor()
                                + "'><img src='IMG/editaricon.png' width='20' heigth='20'></a></td>");
                        out.print("<td><a href='apag_prof.jsp?id_professor="
                                + lista_professor.get(i).getId_professor()
                                + "&nome_professor=" + lista_professor.get(i).getNome_professor()
                                + "&email_professor=" + lista_professor.get(i).getEmail_professor()
                                + "&senha_professor=" + lista_professor.get(i).getSenha_professor()
                                + "'><img src='IMG/apagaricon.png' width='20' heigth='20'></a></td>");
                        out.print("</tr>");
                    }
                }
                out.print("</table>");
            %>
        </div>
    </body>
</html>
