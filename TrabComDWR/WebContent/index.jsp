<%@ page language="java" contentType="text/html"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Desenvolvendo com Ajax e DWR</title>
<script  src="/TrabComDWR/dwr/interface/AjaxFacade.js"></script>
<script  src="/TrabComDWR/dwr/engine.js"></script>
<script  src="/TrabComDWR/dwr/util.js"></script>
<script  src="/TrabComDWR/dwr/interface/JDate.js"></script>

<script  src="script/date.js"></script>
<script  src="script/script.js"></script>

<link href="css/estilos.css" rel="stylesheet" />
</head>
<body>
    <div id="dwr">
        <form id="dwrform" method="post" action="">
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
	            <input type="hidden" id="autorId" name="autorId" value="0" />
	            <input type="button" name="btEnviar" id="enviar" value="Enviar" onclick="salvar();" />
            </fieldset>
        </form>            
    </div>
   
    <table class="grid">
	<thead>
		<tr>
			<th colspan="5">Autores Cadastrados</th>
		</tr>
		<tr>
			<th>Nome</th>
			<th>E-mail</th>
			<th>Nascimento</th>
			<th>Atualizar</th>
			<th>Excluir</th>
		</tr>
	</thead>
	<tbody id="autoresBody">
	</tbody>
	<tfoot>
		<tr>
			<td>
				<img src="imagens/first.gif" 
					onclick="javascript:Paginacao.first();" 
					style="cursor:pointer" />
					
				<img src="imagens/previous.gif" 
					onclick="javascript:Paginacao.previous();" 
					style="cursor:pointer" />
					
				<img src="imagens/next.gif" 
					onclick="javascript:Paginacao.next();" 
					style="cursor:pointer" />
				<img src="imagens/last.gif" 
					onclick="javascript:Paginacao.last();" 
					style="cursor:pointer" />
					
				<span id="paginaAtual"></span>
			</td>
		</tr>
	</tfoot>
</table>
   
    
    
</body>
</html>