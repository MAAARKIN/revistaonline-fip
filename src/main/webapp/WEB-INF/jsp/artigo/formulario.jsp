<%-- <div>
	<form action="${linkTo[ArtigoController].salvar}" method="POST">
		<fieldset>
			<legend>Cadastrar Artigo</legend>
			<jsp:include page="_form.jsp"/>
			<button type="submit" class="btn btn-default">Salvar</button>
		</fieldset>
	</form>

</div> --%>
<!-- <div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Dashboard</h1>
	</div>
	/.col-lg-12
</div> -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Dados relacionados a submissão</div>

			<div class="panel-body">
				<form action="${linkTo[ArtigoController].salvar}" method="POST">
					<div id="rootwizard">
						<ul class="nav nav-tabs">
							<li><a href="#tab1" data-toggle="tab">Artigo</a></li>
							<li><a href="#tab2" data-toggle="tab">Autores</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane" id="tab1">
								<jsp:include page="_form.jsp" />
							</div>
							<div class="tab-pane" id="tab2">
								<jsp:include page="../autor/_includedArtigo.jsp" />
							</div>
							<ul class="pager wizard">
								<li class="previous first" style="display: none;"><a
									href="#">Início</a></li>
								<li class="previous"><a href="#">Anterior</a></li>
								<li class="next last" style="display: none;"><a href="#">Fim</a></li>
								<li class="next"><a href="#">Próximo</a></li>
							</ul>
						</div>
					</div>
				</form>

			</div>
		</div>
	</div>
</div>

<script>

	$(document).ready(function() {
		$('#rootwizard').bootstrapWizard({'tabClass' : 'nav nav-tabs'});
	});
</script>