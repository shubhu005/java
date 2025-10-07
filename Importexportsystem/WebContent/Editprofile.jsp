<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Edit Profile</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container mt-5">
		<h3 class="mb-4">Edit Profile</h3>

		<%-- Display success/error messages --%>
		<%
			if (request.getAttribute("successMessage") != null) {
		%>
		<div class="alert alert-success"><%=request.getAttribute("successMessage")%></div>
		<%
			}
		%>
		<%
			if (request.getAttribute("errorMessage") != null) {
		%>
		<div class="alert alert-danger"><%=request.getAttribute("errorMessage")%></div>
		<%
			}
		%>


		<form action="ProfileUpdateController" method="post">
			<%-- Form submits to the controller --%>
			<div class="mb-3">
				<label for="name" class="form-label">Full Name</label> <input
					type="text" class="form-control" id="name" name="name"
					placeholder="Enter your full name">
				<%-- Add 'name' attribute --%>
			</div>

			<div class="mb-3">
				<label for="email" class="form-label">Email</label> <input
					type="email" class="form-control" id="email" name="email"
					placeholder="Enter your email">
				<%-- Add 'name' attribute --%>
			</div>

			<div class="mb-3">
				<label for="phone" class="form-label">Phone Number</label> <input
					type="tel" class="form-control" id="phone" name="phone"
					placeholder="Enter your phone number">
				<%-- Add 'name' attribute --%>
			</div>

			<div class="mb-3">
				<label for="address" class="form-label">Address</label>
				<textarea class="form-control" id="address" name="address" rows="3"
					placeholder="Enter your address"></textarea>
				<%-- Add 'name' attribute --%>
			</div>

			<div class="mb-3">
				<label for="profilePic" class="form-label">Profile Picture</label> <input
					type="file" class="form-control" id="profilePic" name="profilePic">
				<%-- Add 'name' attribute --%>
			</div>

			<div class="mb-3">
				<label for="oldPassword" class="form-label">Old Password
					(Leave blank to keep current password)</label> <input type="password"
					class="form-control" id="oldPassword" name="oldPassword">
			</div>

			<div class="mb-3">
				<label for="newPassword" class="form-label">New Password</label> <input
					type="password" class="form-control" id="newPassword"
					name="newPassword">
			</div>

			<div class="mb-3">
				<label for="confirmPassword" class="form-label">Confirm New
					Password</label> <input type="password" class="form-control"
					id="confirmPassword" name="confirmPassword">
			</div>


			<button type="submit" class="btn btn-primary">Save Changes</button>
		</form>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>