package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


    
String PATH = "jdbc:mysql://localhost/";
String PLACE = "schooldb1";
String USERNAME = "root";
String PASSWORD = "";

String SALT = "#%$##%$%##%#";
    
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/vars.jsp");
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <title>Edu School - register</title>\n");
      out.write("    <!-- Google fonts -->\n");
      out.write("    <link href=\"//fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <!-- Template CSS Style link -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/style-starter.css\">\n");
      out.write("    \n");
      out.write("    ");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    ");
      out.write('\n');
 
    String cookieName = "uname1";
    String cookieName2 = "adminname";
    
    Cookie cookies[]=request.getCookies();
    Cookie myCookie = null;
    boolean user = false, admin=false;
    
    if(cookies!=null){
    for(int i=0; i< cookies.length;i++)
    {
        
           if (cookies [i].getName().equals (cookieName))
        {
            myCookie = cookies[i];
            session.setAttribute("name", myCookie.getValue());
            user=true;
        }
        else if(cookies[i].getName().equals("emailid"))
        {
         session.setAttribute("emailid", cookies[i].getValue());
                user=true;
                
    }
    else if(cookies [i].getName().equals(cookieName2))
    {
    myCookie = cookies[i];
            session.setAttribute("adminname", myCookie.getValue());
            admin=true;
    }
    }
    }
        if(user==true)
   {
    response.sendRedirect("welcome.jsp");
    }
    else if(admin==true)
    {
        response.sendRedirect("adminpanel.jsp");
    }

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- header -->\n");
      out.write("    <header id=\"site-header\" class=\"fixed-top\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-light\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"index.html\"><i class=\"fas fa-graduation-cap\"></i>Edu School\n");
      out.write("                </a>\n");
      out.write("                <button class=\"navbar-toggler collapsed\" type=\"button\" data-bs-toggle=\"collapse\"\n");
      out.write("                    data-bs-target=\"#navbarScroll\" aria-controls=\"navbarScroll\" aria-expanded=\"false\"\n");
      out.write("                    aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"navbar-toggler-icon fa icon-expand fa-bars\"></span>\n");
      out.write("                    <span class=\"navbar-toggler-icon fa icon-close fa-times\"></span>\n");
      out.write("                </button>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarScroll\">\n");
      out.write("                    <ul class=\"navbar-nav ms-auto my-2 my-lg-0 navbar-nav-scroll\">\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link active\" aria-current=\"page\" href=\"index.jsp\">Home</a>\n");
      out.write("                        </li>\n");
      out.write("                        ");

                        if(session.getAttribute("Name")== null)
                        {
                        
      out.write("\n");
      out.write("                        \n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"register.jsp\">Register</a>\n");
      out.write("                        </li> \n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"login.jsp\">Login</a>\n");
      out.write("                        </li>\n");
      out.write("                        ");

                            }
else{

      out.write("\n");
      out.write("<li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"logout.jsp\">Logout</a>\n");
      out.write("                        </li>\n");
      out.write("                        ");

                            }

      out.write("\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"courses.jsp\">Courses</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"contact.jsp\">Contact</a>\n");
      out.write("                        </li>\n");
      out.write("                        \n");
      out.write("                         \n");
      out.write("                    </ul>\n");
      out.write("                    <!-- search-right -->\n");
      out.write("                    <div class=\"header-search position-relative\">\n");
      out.write("                        <div class=\"search-right mx-lg-2\">\n");
      out.write("                            <a href=\"#search\" class=\"btn search-btn p-0\" title=\"search\">\n");
      out.write("                                <i class=\"fas fa-search\"></i></a>\n");
      out.write("                            <!-- search popup -->\n");
      out.write("                            <div id=\"search\" class=\"pop-overlay\">\n");
      out.write("                                <div class=\"popup\">\n");
      out.write("                                    <form action=\"#search\" method=\"GET\" class=\"search-box\">\n");
      out.write("                                        <input type=\"search\" placeholder=\"Enter Keyword...\" name=\"search\"\n");
      out.write("                                            required=\"required\" autofocus=\"\">\n");
      out.write("                                        <button type=\"submit\" class=\"btn\"><span class=\"fas fa-search\"\n");
      out.write("                                                aria-hidden=\"true\"></span></button>\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("                                <a class=\"close\" href=\"#close\">?</a>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- //search popup -->\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!--//search-right-->\n");
      out.write("                </div>\n");
      out.write("                <!-- toggle switch for light and dark theme -->\n");
      out.write("                <div class=\"cont-ser-position\">\n");
      out.write("                    <nav class=\"navigation\">\n");
      out.write("                        <div class=\"theme-switch-wrapper\">\n");
      out.write("                            <label class=\"theme-switch\" for=\"checkbox\">\n");
      out.write("                                <input type=\"checkbox\" id=\"checkbox\">\n");
      out.write("                                <div class=\"mode-container\">\n");
      out.write("                                    <i class=\"gg-sun\"></i>\n");
      out.write("                                    <i class=\"gg-moon\"></i>\n");
      out.write("                                </div>\n");
      out.write("                            </label>\n");
      out.write("                        </div>\n");
      out.write("                    </nav>\n");
      out.write("                </div>\n");
      out.write("                <!-- //toggle switch for light and dark theme -->\n");
      out.write("            </nav>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("    <!-- //header -->");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- inner banner -->\n");
      out.write("    <section class=\"inner-banner py-5\">\n");
      out.write("        <div class=\"w3l-breadcrumb py-lg-5\">\n");
      out.write("            <div class=\"container pt-4 pb-sm-4\">\n");
      out.write("                <h4 class=\"inner-text-title pt-5\">Register</h4>\n");
      out.write("                <ul class=\"breadcrumbs-custom-path\">\n");
      out.write("                    <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                    <li class=\"active\"><i class=\"fas fa-angle-right\"></i>Register</li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("    <!-- //inner banner -->\n");
      out.write("\n");
      out.write("    <!-- contact block -->\n");
      out.write("    <section class=\"w3l-contact py-5\" id=\"contact\">\n");
      out.write("        <div class=\"container py-md-5 py-4\">\n");
      out.write("            <div class=\"title-main text-center mx-auto mb-md-5 mb-4\" style=\"max-width:500px;\">\n");
      out.write("                <p class=\"text-uppercase\">Become Member</p>\n");
      out.write("                <h3 class=\"title-style\">Register</h3>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row contact-block\">\n");
      out.write("                <div class=\"col-md-7 contact-right\">\n");
      out.write("                    <form action=\"\" method=\"post\" class=\"signin-form\">\n");
      out.write("                        <div class=\"input-grids\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                               \n");
      out.write("                                 ");

            if(request.getParameter("submitbtn")!=null){
                String name1, email1, gender1, password1, password2,usertype;
                name1=request.getParameter("name");
                email1=request.getParameter("email");
                gender1=request.getParameter("gender");
                password1=request.getParameter("password1");
                password2=request.getParameter("password2");
               
                
                
                if(password1.equals(password2)){
                    try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection=DriverManager.getConnection(PATH+PLACE,USERNAME, PASSWORD);
                        
                        try{
                            PreparedStatement mystatement = myConnection.prepareStatement("insert into usertable values(?, ?, ?, SHA(?),?)");
                            mystatement.setString(1, name1);
                            mystatement.setString(2, email1);
                            mystatement.setString(3, gender1);
                            mystatement.setString(4, password1 + SALT);
                            
                             mystatement.setString(5, "user");
                            
                            if(mystatement.executeUpdate()>0){
                                out.print("<label class='col-form-label'>Registerd Succesfully. Now you can login</label>");
                            }
                            
                        }catch(Exception e){
                            out.print("<label class='col-form-label'>"+"Error in query due to"+e.getMessage()+"</label>");
                        }
                    }catch(Exception e){
                        out.print("<label class='col-form-label'>"+"Error in Connection due to  "+e.getMessage()+"</label>");
                    }   

                }
                else {
                    out.print("<label class='col-form-label'>Password does not match. Please try again</label>");
                }
            }
        
      out.write("\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-form-label\">Name</label>\n");
      out.write("                         <input type=\"text\" name=\"name\" id=\"w3lName\" placeholder=\"Your name\"\n");
      out.write("                                        class=\"contact-input\" required=\"\" />\n");
      out.write("                                \n");
      out.write("                    </div>\n");
      out.write("                        \n");
      out.write("        <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-form-label\">Email</label>\n");
      out.write("                        <input type=\"email\" name=\"email\" id=\"email\" placeholder=\"asdf@gmail.com\"\n");
      out.write("                                        class=\"contact-input\" required=\"\" />\n");
      out.write("                    </div>\n");
      out.write("                                   \n");
      out.write("        <br><!-- comment -->\n");
      out.write("        <div id=\"answerbox\"></div>\n");
      out.write("        <br>\n");
      out.write("                       \n");
      out.write("        <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-form-label\">Gender</label>\n");
      out.write("                        <select name=\"gender\" class=\"form-control\" >\n");
      out.write("                            <option value=\"\">Choose Gender</option>\n");
      out.write("                            <option value=\"male\">Male</option>\n");
      out.write("                            <option value=\"female\">Female</option>\n");
      out.write("                        </select>\n");
      out.write("                    </div>\n");
      out.write("                                    \n");
      out.write("                       <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-form-label\">Password</label>\n");
      out.write("                        <input type=\"password\" name=\"password1\" id=\"pass1\" placeholder=\"****\"\n");
      out.write("                                        class=\"contact-input\" required=\"\" />\n");
      out.write("                    </div>             \n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-form-label\">Confirm Password</label>\n");
      out.write("                       <input type=\"password\" name=\"password2\" id=\"pass2\" placeholder=\"****\"\n");
      out.write("                                        class=\"contact-input\" required=\"\" />\n");
      out.write("                                \n");
      out.write("                    </div>                 \n");
      out.write("\n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("                           \n");
      out.write("                        \n");
      out.write("                        <div class=\"text-start\">\n");
      out.write("                            <button class=\"btn btn-style btn-style-3\" name=\"submitbtn\">Register</button>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                            </section>\n");
      out.write("    \n");
      out.write("              ");
      out.write("<!-- footer block -->\n");
      out.write("    <footer class=\"w3l-footer-29-main\">\n");
      out.write("        <div class=\"footer-29 pt-5 pb-4\">\n");
      out.write("            <div class=\"container pt-md-4\">\n");
      out.write("                <div class=\"row footer-top-29\">\n");
      out.write("                    <div class=\"col-lg-4 col-md-6 footer-list-29\">\n");
      out.write("                        <h6 class=\"footer-title-29\">Contact Info </h6>\n");
      out.write("                        <p class=\"mb-2 pe-xl-5\">Address : Edu School, 10001, 5th Avenue, #06 lane street, NY - 62617.\n");
      out.write("                        </p>\n");
      out.write("                        <p class=\"mb-2\">Phone Number : <a href=\"tel:+1(21) 234 4567\">+1(21) 234 4567</a></p>\n");
      out.write("                        <p class=\"mb-2\">Email : <a href=\"mailto:info@example.com\">info@example.com</a></p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-2 col-md-3 col-6 footer-list-29 mt-md-0 mt-4\">\n");
      out.write("                        <ul>\n");
      out.write("                            <h6 class=\"footer-title-29\">Quick Links</h6>\n");
      out.write("                            <li><a href=\"about.html\">About Us</a></li>\n");
      out.write("                            <li><a href=\"courses.html\">Courses</a></li>\n");
      out.write("                            <li><a href=\"#become-teacher\">Become a Teacher</a></li>\n");
      out.write("                            <li><a href=\"contact.html\">Contact Us</a></li>\n");
      out.write("                            <li><a href=\"#career\">Career</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-2 col-md-3 col-6 ps-lg-5 ps-lg-4 footer-list-29 mt-md-0 mt-4\">\n");
      out.write("                        <ul>\n");
      out.write("                            <h6 class=\"footer-title-29\">Explore</h6>\n");
      out.write("                            <li><a href=\"#blog\">Blog Posts</a></li>\n");
      out.write("                            <li><a href=\"#privacy\">Privacy policy</a></li>\n");
      out.write("                            <li><a href=\"contact.html\">Contact Us</a></li>\n");
      out.write("                            <li><a href=\"#license\">License & uses</a></li>\n");
      out.write("                            <li><a href=\"#tutorials\">Tutorials</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-4 col-md-6 col-sm-8 footer-list-29 mt-lg-0 mt-4 ps-lg-5\">\n");
      out.write("                        <h6 class=\"footer-title-29\">Subscribe</h6>\n");
      out.write("                        <form action=\"#\" class=\"subscribe d-flex\" method=\"post\">\n");
      out.write("                            <input type=\"email\" name=\"email\" placeholder=\"Email Address\" required=\"\">\n");
      out.write("                            <button class=\"button-style\"><span class=\"fa fa-paper-plane\"\n");
      out.write("                                    aria-hidden=\"true\"></span></button>\n");
      out.write("                        </form>\n");
      out.write("                        <p class=\"mt-3\">Subscribe to our mailing list and get updates to your email inbox.</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </footer>\n");
      out.write("    <!-- //footer block -->\n");
      out.write("\n");
      out.write("    <!-- Js scripts -->\n");
      out.write("    <!-- move top -->\n");
      out.write("    <button onclick=\"topFunction()\" id=\"movetop\" title=\"Go to top\">\n");
      out.write("        <span class=\"fas fa-level-up-alt\" aria-hidden=\"true\"></span>\n");
      out.write("    </button>\n");
      out.write("    <script>\n");
      out.write("        // When the user scrolls down 20px from the top of the document, show the button\n");
      out.write("        window.onscroll = function () {\n");
      out.write("            scrollFunction()\n");
      out.write("        };\n");
      out.write("\n");
      out.write("        function scrollFunction() {\n");
      out.write("            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {\n");
      out.write("                document.getElementById(\"movetop\").style.display = \"block\";\n");
      out.write("            } else {\n");
      out.write("                document.getElementById(\"movetop\").style.display = \"none\";\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        // When the user clicks on the button, scroll to the top of the document\n");
      out.write("        function topFunction() {\n");
      out.write("            document.body.scrollTop = 0;\n");
      out.write("            document.documentElement.scrollTop = 0;\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("    <!-- //move top -->\n");
      out.write("\n");
      out.write("    <!-- common jquery plugin -->\n");
      out.write("    <script src=\"assets/js/jquery-3.7.0.min.js\"></script>\n");
      out.write("    <!-- //common jquery plugin -->\n");
      out.write("\n");
      out.write("    <!-- /counter-->\n");
      out.write("    <script src=\"assets/js/counter.js\"></script>\n");
      out.write("    <!-- //counter-->\n");
      out.write("\n");
      out.write("    <!-- theme switch js (light and dark)-->\n");
      out.write("    <script src=\"assets/js/theme-change.js\"></script>\n");
      out.write("    <!-- //theme switch js (light and dark)-->\n");
      out.write("\n");
      out.write("    <!-- MENU-JS -->\n");
      out.write("    <script>\n");
      out.write("        $(window).on(\"scroll\", function () {\n");
      out.write("            var scroll = $(window).scrollTop();\n");
      out.write("\n");
      out.write("            if (scroll >= 80) {\n");
      out.write("                $(\"#site-header\").addClass(\"nav-fixed\");\n");
      out.write("            } else {\n");
      out.write("                $(\"#site-header\").removeClass(\"nav-fixed\");\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("\n");
      out.write("        //Main navigation Active Class Add Remove\n");
      out.write("        $(\".navbar-toggler\").on(\"click\", function () {\n");
      out.write("            $(\"header\").toggleClass(\"active\");\n");
      out.write("        });\n");
      out.write("        $(document).on(\"ready\", function () {\n");
      out.write("            if ($(window).width() > 991) {\n");
      out.write("                $(\"header\").removeClass(\"active\");\n");
      out.write("            }\n");
      out.write("            $(window).on(\"resize\", function () {\n");
      out.write("                if ($(window).width() > 991) {\n");
      out.write("                    $(\"header\").removeClass(\"active\");\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("        });\n");
      out.write("    </script>\n");
      out.write("    <!-- //MENU-JS -->\n");
      out.write("\n");
      out.write("    <!-- disable body scroll which navbar is in active -->\n");
      out.write("    <script>\n");
      out.write("        $(function () {\n");
      out.write("            $('.navbar-toggler').click(function () {\n");
      out.write("                $('body').toggleClass('noscroll');\n");
      out.write("            })\n");
      out.write("        });\n");
      out.write("    </script>\n");
      out.write("    <!-- //disable body scroll which navbar is in active -->\n");
      out.write("    \n");
      out.write("    <script>\n");
      out.write("        addEventListener(\"load\", function () {\n");
      out.write("\t\t\tsetTimeout(hideURLbar, 0);\n");
      out.write("\t\t}, false);\n");
      out.write("\n");
      out.write("\t\tfunction hideURLbar() {\n");
      out.write("\t\t\twindow.scrollTo(0, 1);\n");
      out.write("\t\t}\n");
      out.write("    </script>\n");
      out.write("    \n");
      out.write("\n");
      out.write("    <!-- bootstrap -->\n");
      out.write("    <script src=\"assets/js/bootstrap.min.js\"></script>\n");
      out.write("    <!-- //bootstrap -->\n");
      out.write("    <!-- //Js scripts -->\n");
      out.write("    ");
      out.write("  \n");
      out.write("              \n");
      out.write("              <script>\n");
      out.write("        $(document).ready(function(){\n");
      out.write("            $(\"#email\").blur(function(){\n");
      out.write("                var email1 = $(\"#email\").val();\n");
      out.write("                $.ajax({\n");
      out.write("                    method: \"POST\",\n");
      out.write("                    url: \"myajax.jsp\",\n");
      out.write("                    data: { email: email1 }\n");
      out.write("                })\n");
      out.write("                .done(function(msg){\n");
      out.write("                    $(\"#answerbox\").html(msg);\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        });\n");
      out.write("    </script>\n");
      out.write("              \n");
      out.write("              \n");
      out.write("              \n");
      out.write("              \n");
      out.write("   \n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
