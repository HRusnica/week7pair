<%@ include file ="common/header.jspf" %>
    <section id="main-content">
    	
 <h1 class="noPad">Recipes</h1>
 <p class="noPad">click on image for more details</p>		
		<c:forEach items= "${recipes}" var="recipe">
		<div id="recipeTiles">
		<a  href="recipeDetails?recipeId=${recipe.recipeId }"> <img src="img/recipe${recipe.recipeId}.jpg" class="recipeTileImage"/></a>

		<p class="recipeName"><c:out value="${recipe.name}"/></p>
	
		<p class="ingredients"><c:out value="${recipe.ingredients.size()}" /> Ingredients </p>

		<fmt:formatNumber maxFractionDigits="0" value="${recipe.averageRating}" var="formattedRating"/>
		<img src="img/${formattedRating}-star.png" class ="stars"/>
		</div>
		</c:forEach>
		
		
		</section>
       <!-- Use the request attribute "recipes" (List<Recipe>) -->
</body>
</html>