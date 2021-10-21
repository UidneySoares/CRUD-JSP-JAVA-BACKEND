<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nova Disciplina</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="header">
            <div class="header-right">
                <a href="index.jsp">Inicio</a>
                <a href="novo_professor.jsp">Novo Professor</a>
                <a href="consultar_professor.jsp">Consultar Professor</a>
                <a class="active" href="nova_disciplina.jsp">Nova Disciplina</a>
                <a href="consultar_disciplina.jsp">Consultar Disciplinas</a>
            </div>
        </div>
        <div class="wrapper">
            <section class="form_container">
                <form method="post" action="exe_inserirDis.jsp">
                    <h1 class="title">Nova Disciplina</h1>
                    <div>
                        <label for="nome_disciplina" ><b>Nome</b></label><br>
                        <input type="text" name="nome_disciplina" required placeholder="Nome">
                    </div>
                    <div>
                        <label for="cargahoraria_disciplina"><b>Carga Horária</b></label><br>
                        <input type="text" name="cargahoraria_disciplina" required placeholder="Carga horária">
                    </div>
                    <div>
                        <input class="submit" type="submit" value="Cadastrar">
                    </div> 
                </form>
            </section>

        </div>
    </body>
</html>
