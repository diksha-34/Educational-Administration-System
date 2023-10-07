<%@page import="java.util.Date" %>
<!doctype html>

<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edu School - Education Category Bootstrap Responsive Website Template - Home : W3Layouts</title>
    <!-- Google fonts -->
    <link href="//fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap" rel="stylesheet">
    <!-- Template CSS Style link -->
    <link rel="stylesheet" href="assets/css/style-starter.css">
    <%@page import="java.sql.*" %>
    <%@ include file="vars.jsp" %>
</head>

<body>
    <%@include file="adminheader.jsp" %>   
       <!-- inner banner -->
    <section class="inner-banner py-5">
        <div class="w3l-breadcrumb py-lg-5">
            <div class="container pt-4 pb-sm-4">
                <h4 class="inner-text-title pt-5">Fees Detail</h4>
                <ul class="breadcrumbs-custom-path">
                    <li><a href="index.html">Home</a></li>
                    <li class="active"><i class="fas fa-angle-right"></i>Fees Due</li>
                </ul>
            </div>
        </div>
    </section>
    <!-- //inner banner -->

    <!-- contact block -->
    <section class="w3l-contact py-5" id="contact">
        <div class="container py-md-5 py-4">
            <div class="title-main text-center mx-auto mb-md-5 mb-4" style="max-width:500px;">
                <p class="text-uppercase"></p>
                <h3 class="title-style"> Add Fees Dues</h3>
            </div>
              <%
        if(request.getParameter("sub")!=null)
        {
         
             
        
              
         
              try
              {
                                  Class.forName("com.mysql.cj.jdbc.Driver");
    Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

                  try
                  {
                  
                    PreparedStatement mystatement =myConnection.prepareStatement("INSERT INTO `feesdew`(`studentid`, `Remaining_amount`, `Paid`, `pending`, `Date_Time`,`installment`) VALUES (?,?,?,?,?,?)");
                  mystatement.setString(1,request.getParameter("studentid"));
                 
                   mystatement.setString(2,request.getParameter("Remianing_amount"));
                  mystatement.setString(3,request.getParameter("paid"));
                  mystatement.setString(4,request.getParameter("Remaining_fees"));
                   mystatement.setString(5,request.getParameter("date"));
                   mystatement.setString(6,request.getParameter("installment"));
           
                      
                      
                  if(mystatement.executeUpdate()>0)
                    {
                    out.print("Add Sucessfull");
                     }
                 
                   }
                   catch(Exception e)
                   {
                    out.print("Error in Query"+e.getMessage());
                    }
              }
             
             catch(Exception e)
             {
                out.print("Error in connection"+e.getMessage());
                }
            }
          
              
               
    
    
        
        %>
        <%
        if(request.getParameter("sub")!=null)
        {
              try
              {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

                  try
                  {
                  
                    PreparedStatement mystatement =myConnection.prepareStatement("Update fees set Remaining_amount=? where studentid=?");
                
                 
                   mystatement.setString(1,request.getParameter("Remaining_fees"));
                    mystatement.setString(2,request.getParameter("studentid"));
                      
                      
                  if(mystatement.executeUpdate()>0)
                    {
                    out.print("");
                     }
                 
                   }
                   catch(Exception e)
                   {
                    out.print("Error in Query"+e.getMessage());
                    }
              }
             
             catch(Exception e)
             {
                out.print("Error in connection"+e.getMessage());
                }
            }
          
              
               
    
    
        
        %>
        
        
       
            <div class="row contact-block">
                <div class="col-md-7 contact-right">
                    <form  method="post" class="signin-form">
                        <div class="input-grids">
                            <div class="row">
                               
                        
                                 <input type="number" name="studentid" id="studentid" placeholder="Enter Studentid"
                                        class="contact-input" required="" />
                                   
                                    <input type="number" name="Remianing_amount" id="resultTable" placeholder="Remaining Amount"
                                           class="contact-input" required="" />
                                   
                             <input type="number" name="paid" id="paid" placeholder="Paid fees"
                                class="contact-input" required="" />
                                
                                  <input type="number" name="Remaining_fees" id="Remaining_fees" placeholder="Pending Fees"
                                class="contact-input" required="" readonly />
                                  <%
                                  Date date=new Date();
                                  %>
                                  <input type="text" name="date" value="<%=date.toString()%>" id="Remaining_fees" placeholder="Remaining fees"
                                         class="contact-input" required="" readonly />
                                
                                   
                                  <select name="installment">
                                      <option>Choose Installment</option>
                                      <option>1st Installment</option><!-- comment -->
                                       <option>2nd Installment</option>
                                        <option>3rd Installment</option>
                                         <option>4th Installment</option>
                                  </select>
                    
                                   
                        <div class="text-start">
                            <button  name="sub" class="btn btn-style btn-style-3"> Submit</button>
                        </div>
                    </form>
                </div>

                            </div>
                        </div>
                    </div>
                </div>
            
        
    </section>
    
    <!-- //contact block -->

  
   <%@include file="footer.jsp" %>   
    <script type="text/javascript">
   $(document).ready(function(){
       
      $("#studentid").blur(function(e){
 
    var studentid1=$("#studentid").val();
            $.ajax({
          method: "POST",
          url:"Ajax-fee_dew.jsp",
          data: {stuid: studentid1}
        })
          .done(function(msg ) {
          
        $("#resultTable").val($.trim(msg));
          });
              
    
    })   ;
    
    
      $("#paid").blur(function(e){
 
    var Total=$("#resultTable").val();
       var paid=$("#paid").val();
                var ans=Total-paid;
                $("#Remaining_fees").val(ans);
    
    });   
        
    
});
   
   </script>           
</body>
</html>