<div class="row">
	<div class="col-lg-12">
		<div class="autores-container">
			<div class="autores">
				<div class="row">
					<div class="form-group col-lg-8">
						<label>Prenome:</label> <input type="text" class="form-control"
							name="artigo.autores[].prenome" placeholder="Pre Nome" />
					</div>
				</div>

				<div class="row">
					<div class="form-group col-lg-8">
						<label>Nome do meio:</label> <input type="text"
							class="form-control" name="artigo.autores[].nome"
							placeholder="Nome do Meio" />
					</div>
				</div>

				<div class="row">
					<div class="form-group col-lg-8">
						<label>Sobrenome:*</label> <input type="text" class="form-control"
							name="artigo.autores[].sobrenome" placeholder="Sobrenome" />
					</div>
				</div>

				<div class="row">
					<div class="form-group col-lg-8">
						<label>E-mail:*</label> <input type="text" class="form-control"
							name="artigo.autores[].email" placeholder="E-mail" />
					</div>
				</div>

				<div class="row">
					<div class="form-group col-lg-8">
						<label>URL/Lattes:</label> <input type="text" class="form-control"
							name="artigo.autores[].lattes" placeholder="URL" />
					</div>
				</div>

				<div class="row">
					<div class="form-group col-lg-8">
						<label>Instituição/Afiliação:*</label> <input type="text"
							class="form-control" name="artigo.autores[].instituicao"
							placeholder="Instituicao" />
					</div>
				</div>

				<div class="row">
					<div class="form-group col-lg-8">
						<label>Resumo da Biografia(Ex.: departamento e área):</label>
						<textarea class="form-control"
							name="artigo.autores[].resumoBiografia"
							placeholder="Resumo da Biografia"></textarea>
					</div>
				</div>
				<hr />
				<!-- NOVO AUTOR VAI APARECER AQUI -->
			</div>
		</div>
		<!-- botao ADD -->
		<a class="addAutor btn btn-default">Adicionar Autor</a>
		<button type="submit" class="btn btn-default">Salvar</button>
	</div>
</div>

<script>

$(document).on('click', '.addAutor', function() {
    var model =
    	'<div class="autores">' +
    		'<div class="row">' +
				'<div class="form-group col-lg-8">' +
					'<label>Prenome:</label> <input type="text" class="form-control"' +
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
				'<label>E-mail:*</label> <input type="text" class="form-control"' +
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
					'<label>Instituição/Afiliação:*</label> <input type="text"' +
						'class="form-control" name="artigo.autores[].instituicao"' +
						'placeholder="Instituicao" />'+
				'</div>' +
			'</div>' +
			
			'<div class="row">' +
				'<div class="form-group col-lg-8">' +
					'<label>Resumo da Biografia(Ex.: departamento e área):</label>' +
					'<textarea class="form-control"' +
						'name="artigo.autores[].resumoBiografia"' +
						'placeholder="Resumo da Biografia"></textarea>' +
				'</div>' +
			'</div>' +
			
		'<hr/>' +
		'</div>';
		
    $('.autores-container').append(model);
    /* ordenar(); */
});

/* $(document).on('click', '.printar', function() {
	
}); */
</script>