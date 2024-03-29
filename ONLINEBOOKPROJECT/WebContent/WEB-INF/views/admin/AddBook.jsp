<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style><%@include file="/WEB-INF/resources/css/templatemo_style.css"%></style>
</head>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
</style>
<body>

<form method="post" style="border:1px solid #ccc">
  <div class="container">
		
		<h1 align="center">Sign Up</h1>
		  <p>Please fill in this form to create an Account</p>
			<hr>
			<label for="bookName"><b>BookName</b></label>
			<input type="text" placeholder="Enter BookName" name="bookName" required>
			
			<label for="bookDescription"><b>BookDescription</b></label>
			<input type="text" placeholder="Enter BookDescription" name="bookDescription" required>
			
			<label for="bookPublication"><b>BookPublication</b></label>
    		<input type="text" placeholder="Enter BookPublication" name="bookPublication" required>
		
			<label for="bookCondition"><b>BookCondition</b></label>
    		<input type="text" placeholder="Enter BookCondition" name="bookCondition" required>	
			
			 <label for="bookCategory"><b>BookCategory</b></label>
   			 <input type="text" placeholder="Enter BookCategory" name="bookCategory" required>
			
			<label for="bookPrice"><b>BookPrice</b></label>
			<input type="text" placeholder="Enter BookPrice" name="bookPrice" required>
			
			<label for="bookInStock"><b>BookInStock</b></label>
			<input type="text" placeholder="Enter BookInStock" name="bookInStock" required>
			
			<div class="clearfix">
      		 	<button type="submit">Add Book</button>
    		</div>
		</div>
	</form>

</body>
</html>