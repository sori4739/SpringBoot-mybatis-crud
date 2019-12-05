<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="include/nav.jsp"%>
<body>
	    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="page-header flex justify-content-center align-items-center" style="background-image: url('/images/contact-bg.jpg')">
                    <h1>Login</h1>
                    
                </div><!-- .page-header -->
            </div><!-- .col -->
        </div><!-- .row -->

        
    </div><!-- .hero-section -->
	<br/><br/><br/><br/><br/><br/>
      <div id="colorlib-contact">
         <div class="container">
            <div class="row">
               
               <div class="col-md-10 col-md-offset-1 animate-box">
                  <h2>Login</h2>
                  <br/><br/>
                  <form action="/user/login" method="POST">
                     <div class="row form-group">
                        <div class="col-md-12">
                        	
                           <label for="fname">Name</label> <input type="text"
                              id="fname" name="username" class="form-control" placeholder="Your name">
                        </div>
                     
                     </div>
                     <div class="row form-group">
                        <div class="col-md-12">
                           <label for="password">Password</label> <input type="password"
                              id="password" name="password" class="form-control"
                              placeholder="Your Password">
                        </div>
                     </div>

                     <div class="form-group text-right">
                        <input type="submit" value="Login" style="width: 120px; height: 60px"
                           class="btn btn-primary">
                     </div>
                     <br/><br/><br/>

                  </form>
               </div>
            </div>
         </div>
      </div>

<%@ include file="include/footer.jsp"%>
</html>
