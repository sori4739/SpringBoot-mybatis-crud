<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="include/nav.jsp" %>

    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="swiper-container hero-slider">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="hero-content flex justify-content-center align-items-center flex-column" style="width: 1761px; height: 800px">
                                <img src="/images/iu3.jpg" alt="">
                            </div><!-- .hero-content -->
                        </div><!-- .swiper-slide -->

                        <div class="swiper-slide">
                            <div class="hero-content flex justify-content-center align-items-center flex-column" style="width: 1761px; height: 800px">
                                <img src="/images/iu2.jpg" alt="">
                            </div><!-- .hero-content -->
                        </div><!-- .swiper-slide -->

                        <div class="swiper-slide">
                            <div class="hero-content flex justify-content-center align-items-center flex-column" style="width: 1761px; height: 800px">
                                <img src="/images/iu7.jpg" alt="">
                            </div><!-- .hero-content -->
                        </div><!-- .swiper-slide -->
                    </div><!-- .swiper-wrapper -->

                    <!-- Add Pagination -->
                    <div class="swiper-pagination"></div>

                    <!-- Add Arrows -->
                    <div class="swiper-button-next flex justify-content-center align-items-center">
                        <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 27 44"><path d="M27,22L27,22L5,44l-2.1-2.1L22.8,22L2.9,2.1L5,0L27,22L27,22z"></path></svg></span>
                    </div>
                    <div class="swiper-button-prev flex justify-content-center align-items-center">
                        <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 27 44"><path d="M0,22L22,0l2.1,2.1L4.2,22l19.9,19.9L22,44L0,22L0,22L0,22z"></path></svg></span>
                    </div>
                </div><!-- .swiper-container -->
            </div><!-- .col -->
        </div><!-- .row -->

        <div class="container">
            <div class="row">
                <div class="offset-lg-9 col-12 col-lg-3">
                    <a href="/user/profileForm">
                        <div class="yt-subscribe">
                            <img src="${sessionScope.user.userProfile}" style="width: 250px; height: 250px; border-radius:50% "  alt="Youtube Subscribe">
                            <h3>Subscribe</h3>
                            <p>To my Youtube Channel</p>
                        </div><!-- .yt-subscribe -->
                    </a>
                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container -->
    </div><!-- .hero-section -->

    <div class="container single-page">
        <div class="row">
            <div class="col-12 col-lg-9">
            
            
            <!-- 게시글 리스트 시작 -->
            
            <c:forEach var = "board" items = "${boards}">
                <div class="content-wrap">
                    <header class="entry-header">
                        <div class="posted-date">
                            ${board.createDate}
                        </div><!-- .posted-date -->

                        <h2 class="entry-title">${board.title}</h2>

                    </header><!-- .entry-header -->

                    <figure class="featured-image">
                        <img src="/images/iu8.jpg" alt="">
                    </figure><!-- .featured-image -->

                  

                    <footer class="entry-footer flex flex-column flex-lg-row justify-content-between align-content-start align-lg-items-center">
                     
                        <a class="read-more order-2" href="/board/detail/${board.id}">Read more</a>

                        <div class="comments-count order-1 order-lg-3">
                            
                        </div><!-- .comments-count -->
                    </footer><!-- .entry-footer -->
                </div><!-- .content-wrap -->
                </c:forEach>
                <!-- 게시글 리스트 끝 -->

                

               

                <div class="pagination">
                    <ul class="flex align-items-center">
                        <li class="active"><a href="#">01.</a></li>
                        <li><a href="#">02.</a></li>
                        <li><a href="#">03.</a></li>
                    </ul>
                </div>
            </div><!-- .col -->

            
               
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