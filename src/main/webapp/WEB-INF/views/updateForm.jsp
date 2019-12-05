<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>





<br />
<br />
<br />
<!--================Contact Area =================-->
<section class="contact_area">
	<div class="container">

		<div class="row">

			<div class="col-lg-12">
				<form class="row contact_form" action="/board/update" method="post">
					<div class="col-md-12">
						<div class="form-group">
							<input type="hidden" name="id" value="${board.id}"/>
							<input type="text" class="form-control" id="title" name="title" value="${board.title}" placeholder="Title">
						</div>

					</div>
					<div class="col-md-12">
						<div class="form-group">
							<textarea class="form-control" name="content" id="summernote">${board.content}</textarea>
						</div>
					</div>
					<div class="col-md-12 text-right">
						<button type="submit" value="submit" class="btn submit_btn">수정하기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
<!--================Contact Area =================-->
<br />
<br />

<script>
      $('#summernote').summernote({
        placeholder: '내용을 입력하세요.',
        tabsize: 2,
        height: 300
      });
    </script>


