<fieldset >
	<input type="hidden" name="revista.id" value="${revista.id}" />

	<div class="row">
		<div class="form-group col-lg-4">
			<label>T�tulo:</label> <input type="text" class="form-control"
				name="revista.titulo" placeholder="Revista de Tecnologia"
				value="${revista.titulo}" />
		</div>
	</div>

	<div class="row">
		<div class="form-group col-lg-4">
			<label><fmt:message key="revista.issn" />:</label> <input type="text"
				class="form-control" name="revista.issn"
				placeholder='<fmt:message key="revista.issn"/>'
				value="${revista.issn}" />
		</div>
	</div>

	<div class="row">
		<div class="form-group col-lg-4">
			<label>Descri��o:</label>
			<textarea rows="4" cols="50" class="form-control"
				name="revista.descricao" placeholder="Descri��o">${revista.descricao}</textarea>
		</div>
	</div>

</fieldset>

