
<%
    if(session.getAttribute("name")==null)
    {
    response.sendRedirect("login.jsp");
}

%>

<!-- header -->
    <header id="site-header" class="fixed-top">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light">
                <a class="navbar-brand" href="index.html"><i class="fas fa-graduation-cap"></i>Edu School
                </a>
                <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
                    <span class="navbar-toggler-icon fa icon-close fa-times"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarScroll">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0 navbar-nav-scroll">
                       
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="welcome.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="calander.jsp">Calender</a>
                        </li>
                        <% if(session.getAttribute("name")==null){%>
                            <li class="nav-item">
                                <a class="nav-link" href="login.jsp">Login</a>
                            </li>
                             <li class="nav-item">
                                <a class="nav-link" href="register.jsp">Register</a>
                            </li>
                        <% }
                        else{%>
                          
                        <%}
                        %>
                        <li class="nav-item">
                            <a class="nav-link" href="profile.jsp"><span   class="fa fa-user-circle" aria-hidden="true"></span></a>
                        </li>
                        
                    </ul>

       

                    <!-- search-right -->
                    <div class="header-search position-relative">
                        <div class="search-right mx-lg-2">
                            <a href="#search" class="btn search-btn p-0" title="search">
                                <span class="fas fa-search"></span></a>
                            <!-- search popup -->
                            
                           
                            <div id="search" class="pop-overlay">
                                <div class="popup">
                                    <form action="#search" method="GET" class="search-box">
                                        <input type="search" placeholder="Enter Keyword..." name="search"
                                            required="required" autofocus="">
                                        <button type="submit" class="btn"><span class="fas fa-search"
                                                aria-hidden="true"></span></button>
                                        
                                    </form>
                                     
                                </div>
                                <a class="close" href="#close">?</a>
                            </div>
                            <!-- //search popup -->
                        </div>
                    </div>
                    <!--//search-right-->
                </div>
                <!-- toggle switch for light and dark theme -->
                <div class="cont-ser-position">
                    <nav class="navigation">
                        <div class="theme-switch-wrapper">
                            <label class="theme-switch" for="checkbox">
                                <input type="checkbox" id="checkbox">
                                <div class="mode-container">
                                    <i class="gg-sun"></i>
                                    <i class="gg-moon"></i>
                                </div>
                            </label>
                        </div>
                    </nav>
                </div>
                <!-- //toggle switch for light and dark theme -->
            </nav>
        </div>
    </header>
                       
</script>
    <!-- //header -->