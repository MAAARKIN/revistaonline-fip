<div>
	<form action="${linkTo[ArtigoController].salvar}" method="POST">
		<fieldset>
			<legend>Cadastrar Artigo</legend>
			<jsp:include page="_form.jsp"/>
			<button type="submit" class="btn btn-default">Salvar</button>
		</fieldset>
	</form>

</div>