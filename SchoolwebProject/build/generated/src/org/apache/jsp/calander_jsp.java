package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class calander_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/headeruser.jsp");
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
      out.write("    <title>Edu School - Calendar</title>\n");
      out.write("    <!-- Meta tag Keywords -->\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <meta charset=\"UTF-8\" />\n");
      out.write("    <meta name=\"keywords\" content=\"My School Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\n");
      out.write("\n");
      out.write("    <!-- //Meta tag Keywords -->\n");
      out.write("\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <!-- Template CSS Style link -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/style-starter.css\">\n");
      out.write("\n");
      out.write("    <!-- Web-Fonts -->\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese\"\n");
      out.write("        rel=\"stylesheet\">\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800&amp;subset=latin-ext\"\n");
      out.write("        rel=\"stylesheet\">\n");
      out.write("    <!-- //Web-Fonts -->\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    ");
      out.write('\n');

    if(session.getAttribute("name")==null)
    {
    response.sendRedirect("login.jsp");
}


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
      out.write("                       \n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link active\" aria-current=\"page\" href=\"welcome.jsp\">Home</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"calander.jsp\">Calender</a>\n");
      out.write("                        </li>\n");
      out.write("                        ");
 if(session.getAttribute("name")==null){
      out.write("\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link\" href=\"login.jsp\">Login</a>\n");
      out.write("                            </li>\n");
      out.write("                             <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link\" href=\"register.jsp\">Register</a>\n");
      out.write("                            </li>\n");
      out.write("                        ");
 }
                        else{
      out.write("\n");
      out.write("                             <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link\" href=\"logout.jsp\">Logout</a>\n");
      out.write("                            </li>\n");
      out.write("                        ");
}
                        
      out.write("\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"contact.jsp\"><span class=\"fa fa-user-circle\" aria-hidden=\"true\"></span></a>\n");
      out.write("                        </li>\n");
      out.write("                        \n");
      out.write("                    </ul>\n");
      out.write("\n");
      out.write("       \n");
      out.write("\n");
      out.write("                    <!-- search-right -->\n");
      out.write("                    <div class=\"header-search position-relative\">\n");
      out.write("                        <div class=\"search-right mx-lg-2\">\n");
      out.write("                            <a href=\"#search\" class=\"btn search-btn p-0\" title=\"search\">\n");
      out.write("                                <span class=\"fas fa-search\"></span></a>\n");
      out.write("                            <!-- search popup -->\n");
      out.write("                            \n");
      out.write("                           \n");
      out.write("                            <div id=\"search\" class=\"pop-overlay\">\n");
      out.write("                                <div class=\"popup\">\n");
      out.write("                                    <form action=\"#search\" method=\"GET\" class=\"search-box\">\n");
      out.write("                                        <input type=\"search\" placeholder=\"Enter Keyword...\" name=\"search\"\n");
      out.write("                                            required=\"required\" autofocus=\"\">\n");
      out.write("                                        <button type=\"submit\" class=\"btn\"><span class=\"fas fa-search\"\n");
      out.write("                                                aria-hidden=\"true\"></span></button>\n");
      out.write("                                        \n");
      out.write("                                    </form>\n");
      out.write("                                     \n");
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
      out.write("    <section class=\"inner-banner py-5\">\n");
      out.write("        <div class=\"w3l-breadcrumb py-lg-5\">\n");
      out.write("            <div class=\"container pt-4 pb-sm-4\">\n");
      out.write("                <h4 class=\"inner-text-title pt-5\">Holiday Calendar</h4>\n");
      out.write("                <ul class=\"breadcrumbs-custom-path\">\n");
      out.write("                    <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                    <li class=\"active\"><i class=\"fas fa-angle-right\"></i>calendar</li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("    <div class=\"calendar\">\n");
      out.write("        <h1>Academic Calendar</h1>\n");
      out.write("        <div class=\"table-container\">\n");
      out.write("            <table>\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Date</th>\n");
      out.write("                        <th>Event</th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                <tbody>\n");
      out.write("                    <!-- Government Holidays -->\n");
      out.write("                    <tr>\n");
      out.write("                        <td>January 1, 2023</td>\n");
      out.write("                        <td>New Year's Day</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>January 26, 2023</td>\n");
      out.write("                        <td>Republic Day</td>\n");
      out.write("                    </tr>\n");
      out.write("                   \n");
      out.write("                    <tr>\n");
      out.write("                        <td>August 15, 2023</td>\n");
      out.write("                        <td>Independence day</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                    <td>September 5, 2023</td>\n");
      out.write("                        <td>Teacher Day</td>\n");
      out.write("                    </tr>\n");
      out.write("                   <tr>\n");
      out.write("                    <td>November 11, 2023</td>\n");
      out.write("                       <td>Veterans Day</td>\n");
      out.write("                      </tr> \n");
      out.write("                    <tr>\n");
      out.write("                        <td>December 20, 2023</td>\n");
      out.write("                        <td>Winter Break Begins</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                    <td>December 25, 2023</td>\n");
      out.write("                      <td>Christmas Day</td>\n");
      out.write("                     </tr>\n");
      out.write("                    \n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    \n");
      out.write("</body>\n");
      out.write("\n");
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
