<%-- 
    Document   : cadastrarlivros
    Created on : 01/01/2016, 10:54:55
    Author     : ederson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function duplicarCampos() {
                var clone = document.getElementById('origem').cloneNode(true);
                var destino = document.getElementById('destino');
                destino.appendChild(clone);
                var camposClonados = clone.getElementsByTagName('input');
                for (i = 0; i < camposClonados.length; i++) {
                    camposClonados[i].value = '';
                }
            }
            function removerCampos(id) {
                var node1 = document.getElementById('destino');
                node1.removeChild(node1.childNodes[0]);
            }
        </script>
    </head>
    <body style="background: red;">
        <header></header>
        <nav>
            <div style="float: left;"><ul style="display: inline;"><li><a href="cadastrarlivros.jsp">Adicionar Livros</a></li></ul></div>
            <div style="float: right;"><ul><li style="display: inline;"><a href="index.jsp">Sair</a></li></ul></div>
        </nav>
        <section style="align-items: center;border: blue; background-color: yellow; position: relative; clear: both; width: 30%;">
            <center><label>Cadastro de livros</label></center>
            <form name="FormAddLivros" action="exibir.jsp" method="POST">
                <img src="" width="20" height="20" alt="-" onclick="removerCampos();"/>
                <img src="" width="20" height="20" alt="+" onclick="duplicarCampos();"/>
                <div id="origem"> Titulo: <input type="text" name="titulo[]" value="" />

                </div>

                <div id="destino">

                </div>
                Série: <input type="text" name="serie" value="" /><br>
                Autor: <input type="text" name="autor" value="" /><br>
                Editora: <input type="text" name="editora" value="" /><br>
                <center>
                    <input type="submit" value="salvar" name="btn"/>
                    <input type="reset" value="limpar" />
                    <input type="submit" value="cancelar" name="btn" />
                </center>
            </form>
        </section>
    </body>
</html>
