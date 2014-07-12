
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Dados relacionados a submissão</div>

			<div class="panel-body">
				<form action="${linkTo[ArtigoController].salvar}" method="POST" enctype="multipart/form-data" id="artigoForm" >
					<div id="rootwizard">
						<ul class="nav nav-tabs">
							<li><a href="#tab1" data-toggle="tab">Termos e Condições</a></li>
							<li><a href="#tab2" data-toggle="tab">Revista</a></li>
							<li><a href="#tab3" data-toggle="tab">Artigo</a></li>
							<li><a href="#tab4" data-toggle="tab">Autores</a></li>
							<li><a href="#tab5" data-toggle="tab">Arquivo</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane" id="tab1">
								<div class="alert alert-danger fade in" id="alertCondicoes" style="display:none;">
								    Você deve aceitar os termos de compromisso antes de continuar.
								</div>
								
								<div class="row" >
									<div class="form-group col-lg-8" >
										<label>Condições para submissão</label>
										<div class="checkbox">
									        <input type="checkbox" name="termoDeSubmissao" class="termo" required="required" /> Escrever aqui os termos de condições.
									   	</div>
									</div>
								</div>
								
								<div class="row" >
									<div class="form-group col-lg-8" >
										<label>Declaração de Direito Autorial </label>
										<div class="checkbox">
									        <input type="checkbox" name="direitoAutoral" class="autoral" required="required" /> Escrever aqui o texto de direito autoral.
									   	</div>
									</div>
								</div>
							</div>
							
							<div class="tab-pane" id="tab2">
								<div class="row" >
									<div class="form-group col-lg-6" >
										<label>Selecione a revista a qual deseja enviar o artigo.</label>
										<select class="form-control" name="artigo.revista.id">
											<c:forEach items="${revistaList}" var="revista">  
						                        <option value="${revista.id}">${revista.titulo}</option>  
						                    </c:forEach>
										</select>
									</div>
								</div>
								
							</div>
							<div class="tab-pane" id="tab3">
								<jsp:include page="_form.jsp" />
							</div>
							<div class="tab-pane" id="tab4">
								<jsp:include page="../autor/_includedArtigo.jsp" />
							</div>
							<div class="tab-pane" id="tab5">
								<label>*Selecione o arquivo para o envio do artigo.</label>
								<div class="row">
									<div class="col-lg-6">
										<div class="form-group" >
											<input id="input-id" type="file" class="file" name="file" 
											data-show-upload="false" 
											data-show-preview="false"
											data-browse-label="Arquivo" required="required"/>
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
		
		$('#rootwizard').bootstrapWizard(
				{
					'tabClass' : 'nav nav-tabs',
					onTabClick: function(tab, navigation, index) {
						return false;
					},
					'onNext': function(tab, navigation, index) {
						var condicoesForm = $('#tab1');
						var termo = condicoesForm.children('div.row').children('div').children('div').children('.termo').is(':checked');
						var direitoAutoral = condicoesForm.children('div.row').children('div').children('div').children('.autoral').is(':checked');
						if(termo == false || direitoAutoral == false) {
							$('#alertCondicoes').show();
							return false;
						}
						$('#alertCondicoes').hide();
			  		}
				});
	});
</script>