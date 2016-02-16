<%-- 
    Document   : list_customers
    Created on : Feb 16, 2016, 8:22:24 PM
    Author     : nuzly
--%>

<%@page import="entity.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

        <title>Inventory Control System</title>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!-- Bootstrap core CSS -->
        <link href="assets/css/bootstrap.css" rel="stylesheet">
        <!--external css-->
        <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

        <!-- Custom styles for this template -->
        <link href="assets/css/style.css" rel="stylesheet">
        <link href="assets/css/style-responsive.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>

        <section id="container" >
            <!-- **********************************************************************************************************************************************************
            TOP BAR CONTENT & NOTIFICATIONS
            *********************************************************************************************************************************************************** -->
            <!--header start-->
            <header class="header black-bg">
                <div class="sidebar-toggle-box">
                    <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
                </div>
                <!--logo start-->
                <a href="index.html" class="logo"><b>Inventory Control System</b></a>
                <!--logo end-->
                
                <div class="top-menu">
                    <ul class="nav pull-right top-menu">
                         <li><a class="logout" href="${pageContext.request.contextPath}/logout">Logout</a></li>
                    </ul>
                </div>
            </header>
            <!--header end-->

            <!-- **********************************************************************************************************************************************************
            MAIN SIDEBAR MENU
            *********************************************************************************************************************************************************** -->
            <!--sidebar start-->
             <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="profile.html"><img src="assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
              	  <h5 class="centered"><%= session.getAttribute("logFname") %> </h5>
              	  	
                

                  <li class="sub-menu">
                      <a class="active" href="javascript:;" >
                          <i class="fa fa-desktop"></i>
                          <span>Admin Function</span>
                      </a>
                      <ul class="sub">
                          <li> <a href="${pageContext.request.contextPath}/admin">Approval Requests</a></li>
                           
                          <li><a href="${pageContext.request.contextPath}/AddCategoryServlet">Categories</a></li>
                          
                           <li><a href="${pageContext.request.contextPath}/CreateSupplierServlet">Suppliers</a></li>
                          
                           
                         
                      </ul>
                  </li>
                  
                   <li class="sub-menu">
                      <a class="active" href="javascript:;" >
                          <i class="fa fa-desktop"></i>
                          <span>Items</span>
                      </a>
                      <ul class="sub">
                          
                           <li><a href="${pageContext.request.contextPath}/listitem">View Items</a></li>
                         
                      </ul>
                  </li>
                  
                   <li class="sub-menu">
                      <a class="active" href="javascript:;" >
                          <i class="fa fa-desktop"></i>
                          <span>Customers</span>
                      </a>
                      <ul class="sub">
                          
                           <li><a href="create_customer.jsp">Create Customers</a></li>
                         
                      </ul>
                  </li>

          
               
            

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
         
            <!--sidebar end-->

            <!-- **********************************************************************************************************************************************************
            MAIN CONTENT
            *********************************************************************************************************************************************************** -->
            <!--main content start-->
            <section id="main-content">
                <section class="wrapper">
                    <h3><i class="fa fa-angle-right"></i> Categories</h3>
                    <div class="row">

                             



                        <div class="row mt">
                            <div class="col-md-12">
                                <div class="content-panel">
                                    <ul class="sub">
                                <li><a  href="create_customer.jsp">Add Customer</a></li>
                                
                            </ul>
                                    <table class="table table-striped table-advance table-hover">
                                        
                                        <hr>
                                        <thead>
                                            <tr>
                                                <th><i class="fa fa-bullhorn"></i>First Name</th>
                                                <th><i class="fa fa-bookmark"></i> Last Name</th>
                                                <th><i class="fa fa-bookmark"></i> Address</th>
                                                <th><i class="fa fa-bookmark"></i> Phone</th>
                                                <th><i class="fa fa-bookmark"></i> Email</th>

                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <form action="EditCategoryServlet" method="get" > 
                                            <input type="hidden" value="EDIT" name="fromList">
                                            <c:forEach var="cust" items="${customerList}">
                                                <tr>
                                                    <td><a href="basic_table.html#"><c:out value="${cust.firstName}" /></a></td>
                                                    <td class="hidden-phone"><c:out value="${cust.lastName}" /></td>
                                                     <td class="hidden-phone"><c:out value="${cust.address}" /></td>
                                                      <td class="hidden-phone"><c:out value="${cust.phoneNo}" /></td>
                                                       <td class="hidden-phone"><c:out value="${cust.email}" /></td>
                                                   

                                                    <td>
                                                        
                                                        <button name="editCust"  class="btn btn-primary btn-xs" value="${cust.id}"><i class="fa fa-pencil" ></i></button>
                                                       
                                                   </td>
                                                </tr>
                                            </c:forEach>
                                        </form>
                                        </tbody>
                                    </table>
                                </div><!-- /content-panel -->
                            </div><!-- /col-md-12 -->
                        </div><!-- /row -->

                </section><! --/wrapper -->
            </section><!-- /MAIN CONTENT -->

            <!--main content end-->
            <!--footer start-->
            <footer class="site-footer">
                <div class="text-center">
                    2014 - Alvarez.is
                    <a href="basic_table.html#" class="go-top">
                        <i class="fa fa-angle-up"></i>
                    </a>
                </div>
            </footer>
            <!--footer end-->
        </section>

        <!-- js placed at the end of the document so the pages load faster -->
        <script src="assets/js/jquery.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>
        <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


        <!--common script for all pages-->
        <script src="assets/js/common-scripts.js"></script>

        <!--script for this page-->

        <script>
            //custom select box

            $(function () {
                $('select.styled').customSelect();
            });

        </script>

    </body>
</html>


