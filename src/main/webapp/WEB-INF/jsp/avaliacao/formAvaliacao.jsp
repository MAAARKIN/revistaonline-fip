<div>
		<form action="${linkTo[AvaliacaoController].salvar[avaliacao]}" method="POST"> 
		<fieldset>
			
			<input type="hidden" name="avaliacao.id" value="${avaliacao.id}" />
			<legend>Avalia��o</legend>
			Crit�rio 1) Relev�ncia para a Chamada de Trabalhos da revista(O tema do artigo �
			relevante para a �rea, em especial levando-se em conta a trilha/revista do
			artigo? O problema e os resultados obtidos s�o relevantes para a �rea?):
			<br>
			 <INPUT TYPE="radio" NAME="criterio1" VALUE="1">
			 Irrelevante
			 <br>
			 <INPUT TYPE="radio" NAME="criterio1" VALUE="2">
			 Moderadamente relevante
			 <br>
			 <INPUT TYPE="radio" NAME="criterio1" VALUE="3">
			 Relevante
			 <br>
			 <INPUT TYPE="radio" NAME="criterio1" VALUE="4">
			 Muito Relevante
			 <br>              
            Crit�rio 2) Fundamenta��o te�rica/metodol�gica (O artigo apresenta
			fundamenta��o te�rica adequada ao tema que aborda? Os resultados
			apresentados s�o comparados com resultados de trabalhos anteriores na
			�rea?:
			<br>
			 <INPUT TYPE="radio" NAME="criterio2" VALUE="1">
			 Inadequada ou ausente
			 <br>
			 <INPUT TYPE="radio" NAME="criterio2" VALUE="2">
			 Fraca
			 <br>
			 <INPUT TYPE="radio" NAME="criterio2" VALUE="3">
			 Boa
			 <br>
			 <INPUT TYPE="radio" NAME="criterio2" VALUE="4">
			 Muito Boa
			 <br>
			 
			Crit�rio 3) Qualidade t�cnica (O artigo tem m�rito t�cnico? O problema abordado
			no artigo est� caracterizado? O objetivo do artigo est� caracterizado? A
			metodologia empregada � coerente com o problema e objetivo da pesquisa?
			Os dados s�o analisados e os resultados discutidos?): 
			<br>
			 <INPUT TYPE="radio" NAME="criterio3" VALUE="1">
			 Insuficiente
			 <br>
			 <INPUT TYPE="radio" NAME="criterio3" VALUE="2">
			 Baixa
			 <br>
			 <INPUT TYPE="radio" NAME="criterio3" VALUE="3">
			 Moderada
			 <br>
			 <INPUT TYPE="radio" NAME="criterio3" VALUE="4">
			 Alta
			 <br>
			 
			 Crit�rio 4)  Qualidade da apresenta��o (O artigo est� bem escrito e organizado? �
			 f�cil de ler? As contribui��es est�o claras? O template fornecido pela
			 organiza��o foi rigorosamente seguido (incluindo tamanho de fontes,
			 espa�amentos e formato de cita��es bibliogr�ficas)? 
			 <br>
			 <INPUT TYPE="radio" NAME="criterio4" VALUE="1">
			 Insuficiente
			 <br>
			 <INPUT TYPE="radio" NAME="criterio4" VALUE="2">
			 Baixa
			 <br>
			 <INPUT TYPE="radio" NAME="criterio4" VALUE="3">
			 Moderada
			 <br>
			 <INPUT TYPE="radio" NAME="criterio4" VALUE="4">
			 Alta
			 <br>
			 
			 Crit�rio 5) Familiaridade do Revisor (Qual a sua familiaridade com o assunto do
			 artigo?): 
			<br>
			 <INPUT TYPE="radio" NAME="criterio5" VALUE="1">
			 Pouco Familiar
			 <br>
			 <INPUT TYPE="radio" NAME="criterio5" VALUE="2">
			 Moderadamente Familiar
			 <br>
			 <INPUT TYPE="radio" NAME="criterio5" VALUE="3">
			 Bom Conhecimento
			 <br>
			 <INPUT TYPE="radio" NAME="criterio5" VALUE="4">
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