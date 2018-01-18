


	<h3>Customer Information</h3>

	<form action="saveCustomer" method="POST" class="ui form">
		<fieldset>
			<legend>Customer Information</legend>
				<label>Last Name</label><br>
				<input type="text" name="lastName" /><br>
				<label> First Name</label><br>
				<input type="text" name="firstName" /><br>
				<label>A.F.M.</label><br>
				<input type="number" name="afm" /><br>
		</fieldset>
		<fieldset>
			<legend>Vehicle Information</legend>
				<label>License Plate</label><br>
				<input type="text" name="plate"/><br>
				<label>Release Year</label>
				<input type="number" name="releaseYear"/>
				<label>Vehicle Condition</label><br>
				<select name="condition">
					<option value="bad">Bad</option>
					<option value="medium">Medium</option>
					<option value="good">Good</option>
				</select><br>
				<label>Location</label><br>
				<input type="text" name="location"/><br>
		</fieldset>
		<input class="ui button" type="submit" value="Submit">
	</form>
	<a href="${pageContext.request.contextPath}/"><button type="button" class="ui button">Back</button></a>

