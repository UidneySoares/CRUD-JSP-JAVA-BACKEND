<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="MODEL.Disciplina"%>
<%@page import="DAO.DAODisciplina"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Disciplina</title>
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
                <a href="consultar_professor.jsp">Consultar Professor</a>
                <a href="nova_disciplina.jsp">Nova Disciplina</a>
                <a class="active" href="consultar_disciplina.jsp">Consultar Disciplina</a>
            </div>
        </div>
        <form class="form_busca" action="consultar_disciplina.jsp" method="post">
            <input class="searchP" type="search" name="nome_disciplina" placeholder="Busca.."/>
            <input class="submitP" type="submit" value="Pequisar"/>
        </form>
        <div class="wrapper">

            <%
                out.print("<table id='tabelaCor'>");
                out.print("<tr>");
                out.print("<th>ID</th>");
                out.print("<th>NOME</th>");
                out.print("<th>CARGA HORARIA</th>");
                out.print("<th>ALTERAR</th>");
                out.print("<th>EXCLUIR</th>");

                out.print("</tr>");
                DAODisciplina dis = new DAODisciplina();

                if (request.getParameter("nome_disciplina") == "" || request.getParameter("nome_disciplina") == null) {
                    ArrayList<Disciplina> lista_disciplina = dis.exibirDisciplina();
                    for (int i = 0; i < lista_disciplina.size(); i++) {
                        out.print("<tr>");
                        out.print("<td>" + lista_disciplina.get(i).getId_disciplina() + "</td>");
                        out.print("<td>" + lista_disciplina.get(i).getNome_disciplina() + "</td>");
                        out.print("<td>" + lista_disciplina.get(i).getCargahoraria_disciplina() + "</td>");

                        out.print("<td><a href='alt_dis.jsp?id_disciplina="
                                + lista_disciplina.get(i).getId_disciplina()
                                + "&nome_disciplina=" + lista_disciplina.get(i).getNome_disciplina()
                                + "&cargahoraria_disciplina=" + lista_disciplina.get(i).getCargahoraria_disciplina()
                                + "'><img class='posIcon' src='IMG/editaricon.png' width='20' heigth='20'></a></td>");
                        out.print("<td><a href='apag_dis.jsp?id_disciplina="
                                + lista_disciplina.get(i).getId_disciplina()
                                + "&nome_disciplina=" + lista_disciplina.get(i).getNome_disciplina()
                                + "&cargahoraria_disciplina=" + lista_disciplina.get(i).getCargahoraria_disciplina()
                                + "'><img class='posIcon' src='IMG/apagaricon.png' width='20' heigth='20'></a></td>");
                        out.print("</tr>");

                    }
                } else {
                    ArrayList<Disciplina> lista_disciplina = dis.buscaNomeDisciplina(request.getParameter("nome_disciplina"));
                    for (int i = 0; i < lista_disciplina.size(); i++) {
                        out.print("<tr>");
                        out.print("<td>" + lista_disciplina.get(i).getId_disciplina() + "</td>");
                        out.print("<td>" + lista_disciplina.get(i).getNome_disciplina() + "</td>");
                        out.print("<td>" + lista_disciplina.get(i).getCargahoraria_disciplina() + "</td>");

                        out.print("<td><a href='alt_dis.jsp?id_disciplina="
                                + lista_disciplina.get(i).getId_disciplina()
                                + "&nome_disciplina=" + lista_disciplina.get(i).getNome_disciplina()
                                + "&cargahoraria_disciplina=" + lista_disciplina.get(i).getCargahoraria_disciplina()
                                + "'><img src='IMG/editaricon.png' width='20' heigth='20'></a></td>");
                        out.print("<td><a href='apag_dis.jsp?id_disciplina="
                                + lista_disciplina.get(i).getId_disciplina()
                                + "&nome_disciplina=" + lista_disciplina.get(i).getNome_disciplina()
                                + "&cargahoraria_disciplina=" + lista_disciplina.get(i).getCargahoraria_disciplina()
                                + "'><img src='IMG/apagaricon.png' width='20' heigth='20'></a></td>");
                        out.print("</tr>");
                    }
                }
                out.print("</table>");

            %>

        </div>
    </body>
</html>
