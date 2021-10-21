<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAODisciplina"%>
<!DOCTYPE html>
<html>  
<body>
<%
    
    try {
            DAODisciplina disd = new DAODisciplina();
            disd.excluirDisciplina(Integer.parseInt(request.getParameter("id_disciplina")));
            out.print("Disciplina Excluída com sucesso!");
            out.print("<meta http-equiv='refresh' content='1, url=consultar_disciplina.jsp'>");
   
        } catch (Exception e) {
            throw new RuntimeException("Erro ao apagar Disciplina: ",e);
        }
%>
</html>  
</body>