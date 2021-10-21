<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>Apagar Disciplina</title>
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
            <h1 class="title" >Deseja realmente apagar?</h1>
                <form method="post" action="exe_apagarDis.jsp">
                    
                    <div>
                        <label for="id_disciplina"><b>ID</b></label><br>
                        <input type="text" name="id_disciplina" value="<%=request.getParameter("id_disciplina")%>" readonly>
                    </div>
                    <div>
                        <label for="nome_disciplina"><b>Nome</b></label><br>
                        <input type="text" name="nome_disciplina" value="<%=request.getParameter("nome_disciplina")%>" readonly>
                    </div>
                    <div>
                        <label for="cargahoraria_disciplina"><b>Carga horária</b></label><br>
                        <input type="text" name="cargahoraria_disciplina" value="<%=request.getParameter("cargahoraria_disciplina")%>" readonly>
                    </div>
                    <div>
                        <input class="submit" type="submit" value="Apagar">
                    </div>
                </form>
            </section>
    </body>
</html>
