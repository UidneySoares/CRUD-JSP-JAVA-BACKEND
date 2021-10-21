<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>Alterar Professor</title>
    </head>
    <body>
        <div class="header">
            <div class="header-right">
                <a href="index.jsp">Inicio</a>
                <a href="novo_professor.jsp">Novo Professor</a>
                <a href="consultar_professor.jsp">Consultar Professor</a>
                <a href="nova_disciplina.jsp">Nova Disciplina</a>
                <a href="consultar_disciplina.jsp">Consultar Disciplinas</a>
            </div>
        </div>
        <section>
            <h1 class="title">Deseja realmente alterar?</h1>
                <form method="post" action="exe_alterarProf.jsp">
                    
                    <div>
                        <label for="id_professor"><b>ID</b></label><br>
                        <input type="text" name="id_professor" value="<%=request.getParameter("id_professor")%>" readonly>
                    </div>
                    <div>
                        <label for="nome_professor"><b>Nome</b></label><br>
                        <input type="text" name="nome_professor" value="<%=request.getParameter("nome_professor")%>" >
                    </div>
                    <div>
                        <label for="email_professor"><b>Email</b></label><br>
                        <input type="text" name="email_professor" value="<%=request.getParameter("email_professor")%>" >
                    </div>
                    <div>
                        <label for="senha_professor"><b>Senha</b></label><br>
                        <input type="text" name="senha_professor" value="<%=request.getParameter("senha_professor")%>" >
                    </div>
                    <div>
                        <input class="submit" type="submit" value="Alterar">
                    </div>
                </form>
            </section>
    </body>
</html>
