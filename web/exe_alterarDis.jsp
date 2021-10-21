<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAODisciplina"%>
<%@page import="MODEL.Disciplina"%>
<!DOCTYPE html>
<html>  
<body>
<%
    try {
            Disciplina dis = new Disciplina();
            DAODisciplina disd = new DAODisciplina();
            dis.setId_disciplina(Integer.parseInt(request.getParameter("id_disciplina")));
            dis.setNome_disciplina(request.getParameter("nome_disciplina"));
            dis.setCargahoraria_disciplina(Integer.parseInt(request.getParameter("cargahoraria_disciplina")));
            disd.atualizarDisciplina(dis);
            out.print("Disciplina alterada com sucesso!");
            out.print("<meta http-equiv='refresh' content='1, url=consultar_disciplina.jsp'>");
        } catch (Exception e) {
            throw new RuntimeException("erro ao executar o alterar Disciplinas: ", e);
        }
%>
</body>
</html>