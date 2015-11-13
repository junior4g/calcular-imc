<!DOCTYPE html>

<html>

<script type="text/javascript">
	$(document).ready(
			function() {
				$(document).mousemove(
						function(e) {
							TweenLite.to($('body'), .5, {
								css : {
									backgroundPosition : ""
											+ parseInt(event.pageX / 8) + "px "
											+ parseInt(event.pageY / '12')
											+ "px, "
											+ parseInt(event.pageX / '15')
											+ "px "
											+ parseInt(event.pageY / '15')
											+ "px, "
											+ parseInt(event.pageX / '30')
											+ "px "
											+ parseInt(event.pageY / '30')
											+ "px"
								}
							});
						});
			});
</script>

<img src="http://www.acessenoticias.com.br/upload/noticia170114083315.jpg" alt="SUS">

 <div class="row">
    <div class="col-md-4 col-md-offset-4">
      <form class="form-horizontal" role="form">
        <fieldset>

          <!-- Form Name -->
          <legend>Calculador de Indice de Massa Corporal</legend>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Peso</label>
            <div class="col-sm-10">
              <input type="text" placeholder="Digite seu peso" class="form-control" name="peso">
            </div>
          </div>
          
          <div class="form-group">
									<input class="form-control" placeholder="Altura" type="text"
										name="altura">

          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
              <br>
                <button type="submit" class="btn btn-default">Calcular</button>
              </div>
            </div>
          </div>
          
        <%
        
        String paramAltura = request.getParameter("altura");
    	paramAltura = paramAltura == null ? "0" : paramAltura;
    	float altura = Float.parseFloat(paramAltura);
    	
    	String paramPeso = request.getParameter("peso");
    	paramPeso = paramPeso == null ? "0" : paramPeso;
    	float peso = Float.parseFloat(paramPeso);
    	
    	float imc;
    	if(altura==0){
    		
    		imc =0;
    	}else {
    	imc = peso/(altura*altura);
    	}
    	
    	String result;
    	
    	if(imc >= 17 && imc<=18.49){
    		result = "Abaixo do peso";
    	}
    	else if(imc >= 18.5 && imc<=24.99){
    		result = "Peso Normal, Parabens";
    	}
    	else if(imc >= 25 && imc<=29.99){
    		result = "Acima do peso";
    	}else{
    		result= "Sem calculo";
    	}
        
        %>
          
	<br>
	<b>Indice de Massa Corporal:</b>
	<% out.print(imc);%>
	<br>
	<% out.print(result); %>

        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->

</body>
</html>
