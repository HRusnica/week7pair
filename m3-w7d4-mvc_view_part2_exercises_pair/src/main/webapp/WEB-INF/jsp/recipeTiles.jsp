<%@ include file ="common/header.jspf" %>
    <section id="main-content">
    	
 <h1>Recipes</h1>
		
		<c:forEach items= "${recipes}" var="recipe">
		<div class="recipeTiles">
		<a  href="recipeDetails?recipeId=${recipe.recipeId }"> <img src="img/recipe${recipe.recipeId}.jpg" class="recipeTileImage"/></a>

		<h1 class="recipeName"><c:out value="${recipe.name}"/></h1>
	
		<h5 class="ingredients"><c:out value="${recipe.ingredients.size()}" /> Ingredients </h5>

		<fmt:formatNumber maxFractionDigits="0" value="${recipe.averageRating}" var="formattedRating"/>
		<img src="img/${formattedRating}-star.png" class ="stars"/>
		</div>
		</c:forEach>
		
		
		</section>
       <!-- Use the request attribute "recipes" (List<Recipe>) -->
</body>
</html>