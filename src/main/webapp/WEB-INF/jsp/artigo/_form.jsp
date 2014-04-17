<div class="row">
	<div class="col-lg-12">
		<!-- formulario do artigo -->
		<div class="col-lg-6">
			<div class="row" >
				<div class="form-group col-lg-6" >
					<label>Titulo:</label>
					<input type="text" class="form-control input-sm" name="artigo.titulo" placeholder="Titulo" value="${artigo.titulo}" />
				</div>
			</div>

			<div class="row" >
				<div class="form-group col-lg-6" >
					<label>Resumo:</label>
					<input type="text" class="form-control input-sm" name="artigo.resumo" placeholder="Resumo" value="${artigo.resumo}" />
				</div>
			</div>

			<div class="row" >
				<div class="form-group col-lg-6" >
					<label>Área e sub-área do Conhecimento:</label>
					<input type="text" class="form-control input-sm" name="artigo.areaSubAreaDoConhecimento" placeholder="AreaSubAreaDoConhecimento" value="${artigo.areaSubAreaDoConhecimento}" />
				</div>	
			</div>
			
			<div class="row" >
				<div class="form-group col-lg-6" >
					<label>Palavras-chave:</label>
					<input type="text" class="form-control input-sm" name="artigo.keyWord" placeholder="KeyWord" value="${artigo.keyWord}" />
				</div>
			</div>
			
			<div class="row" >
				<div class="form-group col-lg-6" >
					<label>Geo-espacial:</label>
					<input type="text" class="form-control input-sm" name="artigo.geoEspacial" placeholder="GeoEspacial" value="${artigo.geoEspacial}" />
				</div>
			</div>
			
			<div class="row" >
				<div class="form-group col-lg-6" >
					<label>Cronológica ou histórica:</label>
					<input type="text" class="form-control input-sm" name="artigo.cronologicaOuHistorica" placeholder="CronologicaOuHistorica" value="${artigo.cronologicaOuHistorica}" />
				</div>
			</div>

			<div class="row" >
				<div class="form-group col-lg-6" >
					<label>Características da amostragem da pesquisa:</label>
					<input type="text" class="form-control input-sm" name="artigo.caracteristicasDaAmostragemDaPesquisa" placeholder="CaracteristicasDaAmostragemDaPesquisa" value="${artigo.caracteristicasDaAmostragemDaPesquisa}" />
				</div>
			</div>
			
			<div class="row" >
				<div class="form-group col-lg-6" >
					<label>Seção:</label>
					<input type="text" class="form-control input-sm" name="artigo.secao" placeholder="Secao" value="${artigo.secao}" />
				</div>
			</div>

			<div class="row" >
				<div class="form-group col-lg-6" >
					<label>Condições para Submissão:</label>
					<input type="text" class="form-control input-sm" name="artigo.condicoesParaSubmissao" placeholder="CondicoesParaSubmissao" value="${artigo.condicoesParaSubmissao}" />
				</div>
			</div>
			
			<div class="row" >
				<div class="form-group col-lg-6" >
					<label>Idioma:</label>
					<input type="text" class="form-control input-sm" name="artigo.idioma" placeholder="Idioma" value="${artigo.idioma}" />
				</div>
			</div>

			<div class="row" >
				<div class="form-group col-lg-6" >
					<label>Agências:</label>
					<input type="text" class="form-control input-sm" name="artigo.agencias" placeholder="Agencias" value="${artigo.agencias}" />
				</div>
			</div>
				
		</div>
		
		<!-- formulario do autor -->
		<div class="col-lg-6">
			<div class="row" >
				<div class="form-group col-lg-6" >
					<label>Prenome:</label>
					<input type="text" class="form-control input-sm" name="autor.preNome" placeholder="Pre Nome" value="${autor.preNome}" />
				</div>
			</div>
			
			<div class="row" >
				<div class="form-group col-lg-6" >
					<label>Nome do meio:</label>
					<input type="text" class="form-control input-sm" name="autor.nomeMeio" placeholder="Nome do Meio" value="${autor.nomeDoMeio}" />
				</div>
			</div>
			
			<div class="row" >
				<div class="form-group col-lg-6" >
					<label>Sobrenome:*</label>
					<input type="text" class="form-control input-sm" name="autor.sobreNome" placeholder="Sobrenome" value="${autor.sobreNome}" />
				</div>	
			</div>
			
			<div class="row" >
				<div class="form-group col-lg-6" >
					<label>E-mail:*</label>
					<input type="text" class="form-control input-sm" name="autor.email" placeholder="E-mail" value="${autor.email}" />
				</div>
			</div>
			
			<div class="row" >
				<div class="form-group col-lg-6" >
					<label>URL/Lattes:</label>
					<input type="text" class="form-control input-sm" name="autor.lattes" placeholder="URL" value="${autor.lattes}" />
				</div>
			</div>
			
			<div class="row" >
				<div class="form-group col-lg-6" >
					<label>Instituição/Afiliação:*</label>
					<input type="text" class="form-control input-sm" name="autor.instituicao" placeholder="Instituicao" value="${autor.instituicao}" />
				</div>
			</div>
			
			<div class="row" >
				<div class="form-group col-lg-6" >
					<label>Resumo da Biografia(Ex.: departamento e área):</label>
					<textarea class="form-control input-sm" name="autor.resumoBiografia" placeholder="Resumo da Biografia">${autor.resumoDaBiografia}</textarea>
				</div>
			</div>
						
		</div>
	</div>
</div>