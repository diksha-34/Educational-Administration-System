<!doctype html>
<html lang="en">

<head>
    <title>Edu School - Calendar</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content="My School Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

    <!-- //Meta tag Keywords -->

    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap" rel="stylesheet">
    <!-- Template CSS Style link -->
    <link rel="stylesheet" href="assets/css/style-starter.css">

    <!-- Web-Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800&amp;subset=latin-ext"
        rel="stylesheet">
    <!-- //Web-Fonts -->
</head>

<body>
    <%@include file="headeruser.jsp" %>
    <section class="inner-banner py-5">
        <div class="w3l-breadcrumb py-lg-5">
            <div class="container pt-4 pb-sm-4">
                <h4 class="inner-text-title pt-5">Holiday Calendar</h4>
                <ul class="breadcrumbs-custom-path">
                    <li><a href="index.jsp">Home</a></li>
                    <li class="active"><i class="fas fa-angle-right"></i>calendar</li>
                </ul>
            </div>
        </div>
    </section>

    <div class="calendar">
        <h1>Academic Calendar</h1>
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>Date</th>
                        <th>Event</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Government Holidays -->
                    <tr>
                        <td>January 1, 2023</td>
                        <td>New Year's Day</td>
                    </tr>
                    <tr>
                        <td>January 26, 2023</td>
                        <td>Republic Day</td>
                    </tr>
                   
                    <tr>
                        <td>August 15, 2023</td>
                        <td>Independence day</td>
                    </tr>
                    <tr>
                    <td>September 5, 2023</td>
                        <td>Teacher Day</td>
                    </tr>
                   <tr>
                    <td>November 11, 2023</td>
                       <td>Veterans Day</td>
                      </tr> 
                    <tr>
                        <td>December 20, 2023</td>
                        <td>Winter Break Begins</td>
                    </tr>
                    <tr>
                    <td>December 25, 2023</td>
                      <td>Christmas Day</td>
                     </tr>
                    
                </tbody>
            </table>
        </div>
    </div>

    
</body>

</html>
