<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOProfessor"%>
<!DOCTYPE html>
<html>  
<body>
<%
    
    try {
            DAOProfessor profd = new DAOProfessor();
            profd.excluirProfessor(Integer.parseInt(request.getParameter("id_professor")));
            out.print("Professor Excluído com sucesso!");
            out.print("<meta http-equiv='refresh' content='1, url=consultar_professor.jsp'>");
   
        } catch (Exception e) {
            throw new RuntimeException("Erro ao apagar professor: ",e);
        }

%>
</html>  
</body>