   
   
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@ include file="vars.jsp" %>



<%
                                         
        if(request.getParameter("stuid")!=null)           
        {
        String studid=request.getParameter("stuid");
           
           
              try
              {
                   
                             Class.forName("com.mysql.cj.jdbc.Driver");
    Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);
                  try
                     {
                  
                         PreparedStatement mystatement =myConnection.prepareStatement("select * from fees where studentid=?");
                mystatement.setString(1, studid);
                             
                
                             ResultSet myresult=mystatement.executeQuery();
                    
                    
                              if(myresult.next())
                                 {
                                   out.print(myresult.getString("Remaining_amount"));
                                  
                                   }
                              else
                              {
                              out.print("Studentid not found");                                                                    
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
