<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOProfessor"%>
<%@page import="MODEL.Professor"%>
<!DOCTYPE html>
<html>  
<body>
<%
    
    try {
            Professor prof = new Professor();
            DAOProfessor profd = new DAOProfessor();
            prof.setId_professor(Integer.parseInt(request.getParameter("id_professor")));
            prof.setNome_professor(request.getParameter("nome_professor"));
            prof.setEmail_professor(request.getParameter("email_professor"));
            prof.setSenha_professor(request.getParameter("senha_professor"));
            profd.atualizarProfessor(prof);
            out.print("Professor alterado com sucesso!");
            out.print("<meta http-equiv='refresh' content='1, url=consultar_professor.jsp'>");
   
        } catch (Exception e) {
        }
%>
</html>  
</body>