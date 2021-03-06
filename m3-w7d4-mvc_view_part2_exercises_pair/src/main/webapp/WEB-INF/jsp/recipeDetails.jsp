<%@ include file ="common/header.jspf" %>
    <section id="main-content">
    	
		
		<div id="recipeCard">
		<img src="img/recipe${recipe.recipeId}.jpg" class="recipeCardImage"/>
		<div id="recipeCardInfo">
		<h1 class="recipeCardName"><c:out value="${recipe.name}"/></h1>
		<p class="recipeCardType"><c:out value="${recipe.recipeType}"/></p>
		<p class="recipeCardCookTimeInMinutes"><strong>Cook Time </strong><c:out value="${recipe.cookTimeInMinutes}"/> minutes</p>
		<p class="recipeCardDescription"><c:out value="${recipe.description}"/></p>
		</div>
		<div class="recipeCardIngredients">
		<h3><strong>Ingredients</strong></h3>
		<ul>
		<c:forEach items="${recipe.ingredients }" var="ingredient">
		<li><c:out value="${ingredient.quantity }" /><c:out value="${ingredient.name}" /></li>
		</c:forEach>
		<br>______________________________________________________________________________________________________________________
		
		</ul>
		</div>
		<div class="recipeCardPreparationSteps">
		<h3><strong>Preparation</strong></h3>
		<ol>
		<c:forEach items="${recipe.preparationSteps }" var="step">
		<li><c:out value="${ step}" /></li>
		</c:forEach>
		</ol>
		</div>
		
		</div>
		
		</section>
       <!-- Use the request attribute "recipes" (List<Recipe>) -->
</body>
</html>