<div class="row">
	<div class="col-lg-12">
		<div class="autores-container">
			<div class="alert alert-info alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				O Autor <strong>${usuarioLogado.usuarioInfo.nome}</strong> já está incluso.
			</div>
			
			<c:if test="${not empty artigo.autores}">
			<c:forEach items="${artigo.autores}" var="autor">
				<div class="autores">
					<hr/>
		    		<a class="delAutor btn btn-danger pull-right">Remover Autor</a>
		    		<div class="row">
						<div class="form-group col-lg-8">
							<label>Prenome:</label> <input type="text" class="form-control preNome"
								name="artigo.autores[].prenome" placeholder="Pre Nome"
								value="${autor.prenome}" />
						</div>
					</div>
					
					<div class="row">
						<div class="form-group col-lg-8">
							<label>Nome do meio:</label> <input type="text"
								class="form-control nome" name="artigo.autores[].nome"
								placeholder="Nome do Meio" value="${autor.nome}" />
						</div>
					</div>
				
					<div class="row">
						<div class="form-group col-lg-8">
							<label>Sobrenome:*</label> <input type="text" class="form-control sobreNome"
								name="artigo.autores[].sobrenome" placeholder="Sobrenome" value="${autor.sobrenome}" />
						</div>
					</div>
					
					<div class="row">
						<div class="form-group col-lg-8">
							<label>E-mail:*</label> <input type="text" class="form-control email"
								name="artigo.autores[].email" placeholder="E-mail" value="${autor.email}" />
						</div>
					</div>
					
					<div class="row">
						<div class="form-group col-lg-8">
							<label>URL/Lattes:</label> <input type="text" class="form-control lattes"
								name="artigo.autores[].lattes" placeholder="URL" value="${autor.lattes}" />
						</div>
					</div>
					
					<div class="row">
						<div class="form-group col-lg-8">
							<label>Instituição/Afiliação:*</label> 
								<input type="text"
									class="form-control instituicao" name="artigo.autores[].instituicao"
									placeholder="Instituicao"
									value="${autor.instituicao}" />
						</div>
					</div>
					
					<div class="row">
						<div class="form-group col-lg-8">
							<label>Resumo da Biografia(Ex.: departamento e área):</label>
							<textarea class="form-control resumo"
								name="artigo.autores[].resumoBiografia"
								placeholder="Resumo da Biografia">${autor.resumoBiografia}</textarea>
						</div>
					</div>
					<div class="row hide">
						<div class="form-group col-lg-8">
						<input type="hidden"
							class="form-control autorId" name="artigo.autores[].id" value="${autor.id}" />	
						</div>
					</div>
				</div>
				</c:forEach>
			</c:if>
		</div>
		<!-- botao ADD -->
		<a class="addAutor btn btn-primary">Adicionar Autor</a>
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
		success:function(data) {
			var parentAutores = self.parents('div.autores');
			var id = parentAutores.children('div.row').children('div').children('.autorId');
			var preNome = parentAutores.children('div.row').children('div').children('.preNome');
			var nome = parentAutores.children('div.row').children('div').children('.nome');
			var sobreNome = parentAutores.children('div.row').children('div').children('.sobreNome');
			var lattes = parentAutores.children('div.row').children('div').children('.lattes');
			var instituicao = parentAutores.children('div.row').children('div').children('.instituicao');
			var resumo = parentAutores.children('div.row').children('div').children('.resumo');
			id.val(data.id);
			preNome.val(data.prenome);
			nome.val(data.nome);
			sobreNome.val(data.sobrenome);
			lattes.val(data.lattes);
			instituicao.val(data.instituicao);
			resumo.val(data.resumoBiografia);
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
						'class="form-control nome" name="artigo.autores[].nome"' +
						'placeholder="Nome do Meio" />' +
				'</div>'+
			'</div>' +
			
			'<div class="row">' +
				'<div class="form-group col-lg-8">' +
					'<label>Sobrenome:*</label> <input type="text" class="form-control sobreNome"' +
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
					'<label>URL/Lattes:</label> <input type="text" class="form-control lattes"' +
						'name="artigo.autores[].lattes" placeholder="URL" />' +
				'</div>' +
			'</div>' +
			
			'<div class="row">' +
				'<div class="form-group col-lg-8">' +
					'<label>Instituição/Afiliação:*</label> <input type="text"' +
						'class="form-control instituicao" name="artigo.autores[].instituicao"' +
						'placeholder="Instituicao" />'+
				'</div>' +
			'</div>' +
			
			'<div class="row">' +
				'<div class="form-group col-lg-8">' +
					'<label>Resumo da Biografia(Ex.: departamento e área):</label>' +
					'<textarea class="form-control resumo"' +
						'name="artigo.autores[].resumoBiografia"' +
						'placeholder="Resumo da Biografia"></textarea>' +
				'</div>' +
			'</div>' +
			'<div class="row hide">' +
				'<div class="form-group col-lg-8">' +
				'<input type="hidden"' +
					'class="form-control autorId" name="artigo.autores[].id" />'+	
				'</div>' +
			'</div>' +
			
		'</div>';
		
    $('.autores-container').append(model);
    /* ordenar(); */
});

/* $(document).on('click', '.printar', function() {
	
}); */
</script>