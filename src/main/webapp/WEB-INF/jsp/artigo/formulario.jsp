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
				<form action="${linkTo[ArtigoController].salvar}" method="POST" enctype="multipart/form-data" >
					<div id="rootwizard">
						<ul class="nav nav-tabs">
							<li><a href="#tab1" data-toggle="tab">Revista</a></li>
							<li><a href="#tab2" data-toggle="tab">Artigo</a></li>
							<li><a href="#tab3" data-toggle="tab">Autores</a></li>
							<li><a href="#tab4" data-toggle="tab">Arquivo</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane" id="tab1">
								<div class="row" >
									<div class="form-group col-lg-6" >
										<label>Selecione a revista a qual deseja enviar o artigo.</label>
										<select class="form-control">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div>
								</div>
								
							</div>
							<div class="tab-pane" id="tab2">
								<jsp:include page="_form.jsp" />
							</div>
							<div class="tab-pane" id="tab3">
								<jsp:include page="../autor/_includedArtigo.jsp" />
							</div>
							<div class="tab-pane" id="tab4">
								<label>*Selecione o arquivo para o envio do artigo.</label>
								<div class="row">
									<div class="col-lg-6">
										<div class="form-group" >
											<input id="input-id" type="file" class="file" name="file" 
											data-show-upload="false" 
											data-show-preview="false"
											data-browse-label="Arquivo"/>
										</div>
									</div>
									<div class="col-lg-6">
										<button type="submit" class="btn btn-success pull-right">Salvar</button>								
									</div>
								</div>
							
								<hr/>
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