package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class calender_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Student Panel Calendar</title>\n");
      out.write("    <style>\n");
      out.write("        body {\n");
      out.write("    font-family: Arial, sans-serif;\n");
      out.write("    margin: 0;\n");
      out.write("    padding: 0;\n");
      out.write("    background-color: #f0f0f0;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".calendar {\n");
      out.write("    max-width: 800px;\n");
      out.write("    margin: 0 auto;\n");
      out.write("    background-color: #fff;\n");
      out.write("    padding: 20px;\n");
      out.write("    border-radius: 10px;\n");
      out.write("    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n");
      out.write("}\n");
      out.write("\n");
      out.write("h1 {\n");
      out.write("    text-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write("table {\n");
      out.write("    width: 100%;\n");
      out.write("    border-collapse: collapse;\n");
      out.write("    margin-top: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("th, td {\n");
      out.write("    border: 1px solid #ccc;\n");
      out.write("    padding: 10px;\n");
      out.write("    text-align: left;\n");
      out.write("}\n");
      out.write("\n");
      out.write("thead {\n");
      out.write("    background-color: #f2f2f2;\n");
      out.write("}\n");
      out.write("\n");
      out.write("tbody tr:nth-child(even) {\n");
      out.write("    background-color: #f9f9f9;\n");
      out.write("}\n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("</head>\n");
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
      out.write("    <div class=\"calendar\">\n");
      out.write("        <h1>Academic Calendar</h1>\n");
      out.write("        <table>\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th>Date</th>\n");
      out.write("                    <th>Event</th>\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>January 1, 2023</td>\n");
      out.write("                    <td>New Year's Day</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>15 August, 2023</td>\n");
      out.write("                    <td>Independence Day</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>August 30, 2023</td>\n");
      out.write("                    <td>First Day of School</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>December 20, 2023</td>\n");
      out.write("                    <td>Winter Break Begins</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("    </div>\n");
      out.write("    ");
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
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
