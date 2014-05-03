<div>
		<form action="${linkTo[AvaliacaoController].salvar[avaliacao]}" method="POST"> 
		<fieldset>
			
			<input type="hidden" name="avaliacao.id" value="${avaliacao.id}" />
			<legend>Avalia��o</legend>
			Crit�rio 1) Relev�ncia para a Chamada de Trabalhos da revista(O tema do artigo �
			relevante para a �rea, em especial levando-se em conta a trilha/revista do
			artigo? O problema e os resultados obtidos s�o relevantes para a �rea?):
			<br>
			 <INPUT TYPE="radio" NAME="criterio1" VALUE="irrelevante">
			 Irrelevante
			 <br>
			 <INPUT TYPE="radio" NAME="criterio1" VALUE="moderadamente">
			 Moderadamente relevante
			 <br>
			 <INPUT TYPE="radio" NAME="criterio1" VALUE="relevante">
			 Relevante
			 <br>
			 <INPUT TYPE="radio" NAME="criterio1" VALUE="muito relevante">
			 Muito Relevante
			 <br>              
            Crit�rio 2) Fundamenta��o te�rica/metodol�gica (O artigo apresenta
			fundamenta��o te�rica adequada ao tema que aborda? Os resultados
			apresentados s�o comparados com resultados de trabalhos anteriores na
			�rea?:
			<br>
			 <INPUT TYPE="radio" NAME="criterio2" VALUE="inadequada ou ausente">
			 Inadequada ou ausente
			 <br>
			 <INPUT TYPE="radio" NAME="criterio2" VALUE="fraca">
			 Fraca
			 <br>
			 <INPUT TYPE="radio" NAME="criterio2" VALUE="boa">
			 Boa
			 <br>
			 <INPUT TYPE="radio" NAME="criterio2" VALUE="muito boa">
			 Muito Boa
			 <br>
			 
			Crit�rio 3) Qualidade t�cnica (O artigo tem m�rito t�cnico? O problema abordado
			no artigo est� caracterizado? O objetivo do artigo est� caracterizado? A
			metodologia empregada � coerente com o problema e objetivo da pesquisa?
			Os dados s�o analisados e os resultados discutidos?): 
			<br>
			 <INPUT TYPE="radio" NAME="criterio3" VALUE="insuficiente">
			 Insuficiente
			 <br>
			 <INPUT TYPE="radio" NAME="criterio3" VALUE="baixa">
			 Baixa
			 <br>
			 <INPUT TYPE="radio" NAME="criterio3" VALUE="moderada">
			 Moderada
			 <br>
			 <INPUT TYPE="radio" NAME="criterio3" VALUE="alta">
			 Alta
			 <br>
			 
			 Crit�rio 4)  Qualidade da apresenta��o (O artigo est� bem escrito e organizado? �
			 f�cil de ler? As contribui��es est�o claras? O template fornecido pela
			 organiza��o foi rigorosamente seguido (incluindo tamanho de fontes,
			 espa�amentos e formato de cita��es bibliogr�ficas)? 
			 <br>
			 <INPUT TYPE="radio" NAME="criterio4" VALUE="insuficiente">
			 Insuficiente
			 <br>
			 <INPUT TYPE="radio" NAME="criterio4" VALUE="baixa">
			 Baixa
			 <br>
			 <INPUT TYPE="radio" NAME="criterio4" VALUE="moderada">
			 Moderada
			 <br>
			 <INPUT TYPE="radio" NAME="criterio4" VALUE="alta">
			 Alta
			 <br>
			 
			 Crit�rio 5) Familiaridade do Revisor (Qual a sua familiaridade com o assunto do
			 artigo?): 
			<br>
			 <INPUT TYPE="radio" NAME="criterio5" VALUE="pouco familiar">
			 Pouco Familiar
			 <br>
			 <INPUT TYPE="radio" NAME="criterio5" VALUE="moderadamente familiar">
			 Moderadamente Familiar
			 <br>
			 <INPUT TYPE="radio" NAME="criterio5" VALUE="bom conhecimento">
			 Bom Conhecimento
			 <br>
			 <INPUT TYPE="radio" NAME="criterio5" VALUE="muito familiar">
			 Muito Familiar
			 <br>
			 Coment�rios: 
			 <br>
			 <textarea name="comentarios" rows="3" cols="40"></textarea>
			 <br>
              <INPUT TYPE="submit" VALUE="Enviar">
		</fieldset>
	 </form>

</div>