<%@ include file ="common/header.jspf" %>
    <section id="main-content">
    <h1 class ="noPad">Recipes</h1>
    <p class="noPad">click on image for more details</p>
    <table id="recipeTable">
    <tr>
		<th>&nbsp;</th>
		<c:forEach items= "${recipes}" var="recipe">
            <td><a href="recipeDetails?recipeId=${recipe.recipeId }"><img src="img/recipe${recipe.recipeId}.jpg" class="recipeImage"/></a></td>
		</c:forEach>
		</tr>
		<tr class="greyed">
    <th>Name</th>
    <c:forEach items="${recipes}" var="recipe" >
		<td><c:out value="${recipe.name}" /></td>
		</c:forEach>
		</tr>
		<tr>
		<th>Type</th>
	  <c:forEach items="${recipes}" var="recipe" >
		<td><c:out value="${recipe.recipeType}" /></td>
		</c:forEach>
		</tr>
		<tr class="greyed">
		<th>Cook Time</th>
		<c:forEach items="${recipes}" var="recipe" >
		<td><c:out value="${recipe.cookTimeInMinutes}" />min</td>
		</c:forEach>
		</tr>
		<tr>
		<th>Ingredients</th>
		<c:forEach items="${recipes}" var="recipe" >
		<td><c:out value="${recipe.ingredients.size()}" /> Ingredients </td>
		</c:forEach>
		</tr>
		<tr class="greyed">
    <th>Rating</th>
    <c:forEach items="${recipes}" var="recipe" >
		<td><fmt:formatNumber maxFractionDigits="0" value="${recipe.averageRating}" var="formattedRating"/>
		<img src="img/${formattedRating}-star.png" class ="rating"/>
		</td>
		</c:forEach>
		</tr>
		
		
		</table>

		
       <!-- Use the request attribute "recipes" (List<Recipe>) -->
		
    </section>
</body>
</html>