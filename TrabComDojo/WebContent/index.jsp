<%@ page language="java" contentType="text/html"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Usando Ajax com Dojo Toolkit</title>
<script type="text/javascript" src="script/dojo.js"></script>
<script type="text/javascript">
dojo.require("dojo.io.*");


//djConfig.isDebug=1;
function doPost() {
	x = new dojo.io.FormBind({
		formNode: "dojoform",
		load: function(type, data, e) {
			//dojo.byId("lista").innerHTML = dojo.string.escapeXml(data);
			dojo.byId("msg").innerHTML = data;

			//zera o id para cadastrar o proximo
			form = dojo.byId("dojoform");
			form.autorId.value="";
			form.nome.value="";
			form.email.value="";
			form.nascimento.value="";
		}
	});
	// Opcional: vc pode implementar o onSubmit
	// Útil quando vc precisa validar o formulário
	x.onSubmit = function(form) {
		//Exemplo simples de validação, retorna false para não enviar
		if(form.nome.value == '' ){
			alert('Digite o nome do autor');
			form.nome.focus();
			return false;
		}

		//dojo.byId("lista").innerHTML = "Carregando...";
		return true;
	}
}

//Informa ao dojo que a função "doPost" será utilizada para enviar o form
dojo.addOnLoad(doPost);
</script>

<link href="css/estilos.css" rel="stylesheet" />
</head>
<body>
    <div id="dojo">
        <form id="dojoform" method="post" action="ServletAjax">
            <fieldset>
	            <legend id="tituloForm">Cadastro de Autores</legend> 
    	        <label for="nome">Nome:</label>
    	        <input type="text" name="nome" id="nome" class="campo" size="20" />
	            <br />
    	        <label for="email">E-mail:</label>
    	        <input type="text" name="email" id="email" class="campo" size="20" />
	            <br />
	            <label for="nascimento">Data de Nasc.:</label>
	            <input type="text" name="nascimento" id="nascimento" class="campo" size="10" />
	            <br />
	            <span id="msg"></span>
	            <br />
	            <br />
	            <input type="hidden" id="autorId" name="autorId" />
	            <input type="submit" name="btEnviar" id="enviar" value="Enviar" />
            </fieldset>
        </form>            
    </div>


    
</body>
</html>