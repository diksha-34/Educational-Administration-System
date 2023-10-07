
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>
     <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap" rel="stylesheet">
      
        
         <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800&amp;subset=latin-ext"
        rel="stylesheet">
   <link rel="stylesheet" href="assets/css/style-starter.css">
</head>
<body>
    <div class="profile-container">
        <center>
            <form class="login-form">
        <h1>Your Profile</h1>
        <br>
        <img src="assets/images/avtar.jpeg" alt="Profile Picture" class="profile-image" id="profile-image">
        <div class="upload-button">
            <label for="image-upload" class="update-button">Upload Image</label>
            <input class="profile-image" type="file" id="image-upload" accept="image/*">
        </div>
        </center>
        <div class="profile-details">
            <strong> <label for="name">Name:</label> </strong>
           
            <%
                                     if(session.getAttribute("name")!=null){
                         out.print(session.getAttribute("name").toString());
                         
                        }
                                     %>
                                     <br>
                                     <br>
                                     <strong>  <label for="email">Email:</label> </strong>
             <%
                                     if(session.getAttribute("name")!=null){
                         out.print(session.getAttribute("emailid").toString());
                         
                        }
                                     %>
                                     <br>
                                     <br>
          <strong>  <label for="name">School Name:</label> </strong>
            Edu School
            <br>
            <br>
           <strong> <label for="email">School Address:</label> </strong>
            Edu School, 10001, 5th Avenue, #06 lane street, NY - 62617.
           
        </div>
                                     <br>
                                     <center>                    
                                         <input class="update-button" type="submit" name="update" value="Update Profile"></input>
                                           <a class="update-button"  href="logout.jsp">Logout</a>
                                     </center>
                                     <% 
                                           if(request.getParameter("update")!=null){
                                               response.sendRedirect("welcome.jsp");
                                           }
                                           %>
                                          
             </form>
    </div>
    <%@include file="footer.jsp"%>
      <script>
       
        document.getElementById('image-upload').addEventListener('change', function () {
            const image = document.getElementById('profile-image');
            const file = this.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function (e) {
                    image.src = e.target.result;
                };
                reader.readAsDataURL(file);
            }
        });
        
    </script>
</body>
</html>
