<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Professor</title>
    </head>
    <body>
        <div class="header">
            <div class="header-right">
                <a href="index.jsp">Inicio</a>
                <a class="active" href="novo_professor.jsp">Novo Professor</a>
                <a href="consultar_professor.jsp">Consultar Professor</a>
                <a href="nova_disciplina.jsp">Nova Disciplina</a>
                <a href="consultar_disciplina.jsp">Consultar Disciplinas</a>
            </div>
        </div>
        <div class="wrapper">
            <section>
                <form method="post" action="exe_inserirPro.jsp">
                    <h1 class="title">Novo Professor</h1>
                    <div>
                        <label for="nome_professor"><b>Nome</b></label><br>
                        <input type="text" name="nome_professor" required placeholder="Nome">
                    </div>
                    <div>
                        <label for="email_professor" ><b>Email</b></label><br>
                        <input type="email" name="email_professor" required placeholder="Email">
                    </div>
                    <div>
                        <label for="senha_professor" ><b>Senha</b></label><br>
                        <input type="password" name="senha_professor" required placeholder="Senha">
                    </div>
                    <div >
                        <input class="submit" type="submit" value="Cadastrar">
                    </div>
                </form>
            </section>
            
        </div>
    </body>
</html>

