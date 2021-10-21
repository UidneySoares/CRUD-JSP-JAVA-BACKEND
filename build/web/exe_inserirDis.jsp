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
        String nome = request.getParameter("nome_disciplina");
        int cargahoraria = Integer.parseInt(request.getParameter("cargahoraria_disciplina"));
        if(nome.equals(null) || cargahoraria <= 0 ){
            response.sendRedirect("index.jsp");
        }else{
            dis.setNome_disciplina(nome);
            dis.setCargahoraria_disciplina(cargahoraria);
            disd.inserirDisciplina(dis);
            out.print("Disciplina cadastrada com sucesso!");
            out.print("<meta http-equiv='refresh' content='1, url=index.jsp'>");
        }
        } catch (Exception e) {
            throw new RuntimeException ("Erro ao executar a inserção: " ,e);
        }
%> 
</html>  
</body>