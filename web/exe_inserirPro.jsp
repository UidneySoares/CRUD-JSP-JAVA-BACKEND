<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Professor"%>
<%@page import="DAO.DAOProfessor"%>
<!DOCTYPE html>
<html>  
<body>
<%
  try {
          Professor prof = new Professor();
          DAOProfessor profd = new DAOProfessor();
          String nome = request.getParameter("nome_professor");
          String email = request.getParameter("email_professor");
          String senha = request.getParameter("senha_professor");
          
          if(nome.equals(null) || email.equals(null) || senha.equals(null)){
              
          }else {
              prof.setNome_professor(nome);
              prof.setEmail_professor(email);
              prof.setSenha_professor(senha);
              profd.inserirProfessor(prof);
              out.print("Professor cadastrado com sucesso!");
              out.print("<meta http-equiv='refresh' content='1 url=index.jsp'>");
          }
          
      } catch (Exception e) {
          throw new RuntimeException ("Erro ao inserir professor: ", e);
      }      
%> 
</html>  
</body>