function Paginacao(){}

function limparCampos(){
			$('msg').innerHTML='';
			$('tituloForm').innerHTML='Cadastro de Autores';
			$('autorId').value='';
			$('nome').value='';
			$('email').value='';
			$('nascimento').value='';
}


function salvar(){
	if($('nome').value==''){
		alert('Preecha o Nome do Autor');
		$('nome').focus();
		return;
	}
	DWRUtil.setValue('msg', 'Enviando o cadastro...');
	$('msg').style.color = '#FF0000';
	var retorno = function(ret){
		if(ret=='sucesso'){
			DWRUtil.setValue('msg', 'Operação executada com sucesso!');
			$('msg').style.color = '#000';
			limparCampos();
			
			Paginacao.refresh();
		}else{
		DWRUtil.setValue('msg', ret);
		}	
	}

	AjaxFacade.salvar($('autorId').value, $('nome').value, $('email').value,parseDate($('nascimento').value) , retorno);
	

}


Paginacao.maximoLinhas = 3;
Paginacao.numero = 0;
Paginacao.dados = null;
Paginacao.atual = -1;
Paginacao.numeroPaginas = 0;

Paginacao.setDados = function(dt){
	this.dados = dt;
	this.numeroPaginas = Math.ceil(this.dados.length/this.maximoLinhas);
}

Paginacao.show = function(numero){
	var inicio = numero*this.maximoLinhas;
	var fim = inicio+this.maximoLinhas;
	
	if(fim>this.dados.length){
		fim = this.dados.length;
	}

	var pageData = new Array();

	for(var i=inicio, j=0;i<fim;i++, j++){
		pageData[j] = this.dados[i];
	}

	DWRUtil.removeAllRows('autoresBody');
	var funcoes = [
		function(reg) { return reg.nome; },
		function(reg) { return reg.email; },
		function(reg) { 
			var nascimento='00/00/0000';
			if(reg.nascimento!=null)	var nascimento = formatDate(reg.nascimento,'dd/MM/yyyy');
		return  nascimento;
		
		},
		function(reg) { return '<a href="#" title="Editar Autor" onclick="Paginacao.edit('+reg.autorId+');"><img src="imagens/edit.gif" border="0" /></a>'; },
		function(reg) { return '<a href="#" title="Excluir Autor" onclick="Paginacao.deleteRow('+reg.autorId+');"><img src="imagens/delete.gif" border="0" /></a>'; }
	];
	DWRUtil.addRows('autoresBody', pageData, funcoes);
	this.atual = numero;
	DWRUtil.setValue('paginaAtual', 'Página '+(this.atual+1)+' de '+this.numeroPaginas);
}

Paginacao.first = function(){
	this.show(0);
}
Paginacao.last = function(){
	this.show(this.numeroPaginas-1);
}
Paginacao.next = function(){
	var numero = this.atual+1;
	if(!(numero<this.numeroPaginas)){
		numero = this.numeroPaginas-1;
	}
	this.show(numero);
}
Paginacao.previous = function(){
	var numero = this.atual-1;
	if(numero<0){
		numero = 0;
	}
	this.show(numero);
}
Paginacao.deleteRow = function(id){
	if(confirm('Deseja excluir esse autor?')){
		var retorno = function(ret){
			if(ret=='sucesso'){
				Paginacao.refresh();	
				alert('Autor excluido com sucesso');
				limparCampos();	
			}
		}

		AjaxFacade.deleteAutor(id, retorno);
	}
}
Paginacao.refresh = function(){
	var callback = function(ret){
		Paginacao.setDados(ret);
		Paginacao.first();
	}
	AjaxFacade.listarAutores(callback);
}
Paginacao.view = function(){
	var fct = function(){
		Paginacao.refresh();
		DWREngine.setPostHook(function(){});
	}	
}

Paginacao.autor = { id:0, nome:null, email:null, nascimento:null };

Paginacao.fillForm = function(aautor) {
  this.autor =aautor;
  DWRUtil.setValues(this.autor);
  			if(this.autor.nascimento!=null){
				var bd = formatDate(this.autor.nascimento, 'dd/MM/yyyy');
				DWRUtil.setValue('nascimento', bd);
			}
}

Paginacao.edit = function(id){
	 $('tituloForm').innerHTML='Editar Autor';
	AjaxFacade.selecionarAutor(this.fillForm, id);
}

Paginacao.refresh();





