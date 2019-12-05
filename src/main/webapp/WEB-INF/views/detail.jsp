<%@ include file="include/nav.jsp" %>

    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="page-header flex justify-content-center align-items-center" style="background-image: url('/images/blog-bg.jpg')">
                    <h1>The Story</h1>
                </div><!-- .page-header -->
            </div><!-- .col -->
        </div><!-- .row -->
n
        <div class="container">
            <div class="row">
                <div class="offset-lg-9 col-lg-3">
                    <a href="/user/profileForm">
                        <div class="yt-subscribe">
                            <img src="${sessionScope.user.userProfile}" style="width: 250px; height: 250px; border-radius:50% " alt="Youtube Subscribe">
                            <h3>Subscribe</h3>
                            <p>To my Youtube Channel</p>
                             <a href="/board/updateForm/${board.id}"><button class="btn btn-primary">Update</button></a>
                        	 <a href="/board/delete/${board.id}"><button class="btn btn-primary">Delete</button></a>
                            
                        </div><!-- .yt-subscribe -->
                    </a>
                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container -->
    </div><!-- .hero-section -->

    <div class="container single-page blog-page">
        <div class="row">
            <div class="col-12">
            
            
                <div class="content-wrap">
                    <header class="entry-header">
                        <div class="posted-date">
                            ${board.createDate}
                        </div><!-- .posted-date -->

                        <h2 class="entry-title">${board.title}</h2>
                       
                    </header><!-- .entry-header -->

                    <figure class="featured-image">
                        <img src="" alt="">
                    </figure><!-- .featured-image -->

                    <div class="entry-content">
                        ${board.content}
                    </div><!-- .entry-content -->
                </div><!-- .content-wrap -->
			

            </div><!-- .col -->
        </div><!-- .row -->
    </div><!-- .container -->
</div><!-- .outer-container -->


<%@ include file="include/footer.jsp" %>
<script type='text/javascript' src='js/jquery.js'></script>
<script type='text/javascript' src='js/swiper.min.js'></script>
<script type='text/javascript' src='js/custom.js'></script>

</body>
</html>