<div class="row">
	<div class="col-lg-12">
		<div class="autores-container">
			<div class="alert alert-info alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				O Autor <strong>${usuarioLogado.usuarioInfo.nome}</strong> j� est� incluso.
			</div>
		</div>
		<!-- botao ADD -->
		<a class="addAutor btn btn-primary">Adicionar Autor</a>
		<button type="submit" class="btn btn-success pull-right">Salvar</button>
	</div>
</div>

<script>

$(document).on('change', '.email', function() {
	//capturar o self
	var self = $(this);
	var email = self.val();
	var url = '<c:url value="/consultaAutor/"/>'+email;
	
	$.ajax({ 
		url: url,
		type: 'POST',
		dataType:'json',
		success:function(data){
			var parentPreName = self.parents('div.autores');
			var preNome = parentPreName.children('div.row').children('div').children('.preNome');
			/* options.push('<td>'+data.limitePre+'</td>'); */
		    /* $(href).html(options.join('')); */
		},  
		error:function(){

		}  
	});
	//capturar os inputs
	//efetuar o ajax
	//povoar o objeto.
});

$(document).on('click', '.delAutor', function() {
	var self = $(this);
	var parent = self.parents('div.autores');
	if(parent != null) {
		parent.remove();
	}
});

$(document).on('click', '.addAutor', function() {
    var model =
    	'<div class="autores">' +
    		'<hr/>' +
    		'<a class="delAutor btn btn-danger pull-right">Remover Autor</a>' +
    		'<div class="row">' +
				'<div class="form-group col-lg-8">' +
					'<label>Prenome:</label> <input type="text" class="form-control preNome"' +
						'name="artigo.autores[].prenome" placeholder="Pre Nome" />' +
				'</div>' +
			'</div>' +
			
			'<div class="row">' +
				'<div class="form-group col-lg-8">' +
					'<label>Nome do meio:</label> <input type="text"' +
						'class="form-control" name="artigo.autores[].nome"' +
						'placeholder="Nome do Meio" />' +
				'</div>'+
			'</div>' +
			
			'<div class="row">' +
				'<div class="form-group col-lg-8">' +
					'<label>Sobrenome:*</label> <input type="text" class="form-control"' +
						'name="artigo.autores[].sobrenome" placeholder="Sobrenome" />' +
				'</div>' +
			'</div>' +
			
			'<div class="row">' +
			'<div class="form-group col-lg-8">' +
				'<label>E-mail:*</label> <input type="text" class="form-control email"' +
					'name="artigo.autores[].email" placeholder="E-mail" />' +
				'</div>' +
			'</div>' +
			
			'<div class="row">' +
				'<div class="form-group col-lg-8">' +
					'<label>URL/Lattes:</label> <input type="text" class="form-control"' +
						'name="artigo.autores[].lattes" placeholder="URL" />' +
				'</div>' +
			'</div>' +
			
			'<div class="row">' +
				'<div class="form-group col-lg-8">' +
					'<label>Institui��o/Afilia��o:*</label> <input type="text"' +
						'class="form-control" name="artigo.autores[].instituicao"' +
						'placeholder="Instituicao" />'+
				'</div>' +
			'</div>' +
			
			'<div class="row">' +
				'<div class="form-group col-lg-8">' +
					'<label>Resumo da Biografia(Ex.: departamento e �rea):</label>' +
					'<textarea class="form-control"' +
						'name="artigo.autores[].resumoBiografia"' +
						'placeholder="Resumo da Biografia"></textarea>' +
				'</div>' +
			'</div>' +
			
		'</div>';
		
    $('.autores-container').append(model);
    /* ordenar(); */
});

/* $(document).on('click', '.printar', function() {
	
}); */
</script>