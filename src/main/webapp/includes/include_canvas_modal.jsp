<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<button class="close" type="button" data-dismiss="modal">
	<i class="zmdi zmdi-close"></i>
</button>
<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-body">
			<div class="canvas-content">
				<div class="logo">
					<a href="main.do"><img src="images/icons/logo-black.png"
						alt="logo"></a>
				</div>
				<div class="insta">
					<div class="insta-inner">
						<div class="images">
							<a href="member_JoinForm.do" class="images-inner">
								<div class="overlay"></div> <img src="images/hp-1-canvas-1.jpg"
								alt="insta">
							</a>
						</div>
						<c:choose>
						<c:when test="${sMember == null}">
						<div class="images">
							<a href="memberLoginForm.do" class="images-inner">
								<div class="overlay"></div> <img src="images/hp-1-canvas-2.jpg"
								alt="insta">
							</a>
						</div>
						</c:when>
						<c:when test="${sMember != null}">
						<div class="images">
							<a href="memberLogout.do" class="images-inner">
								<div class="overlay"></div> <img src="images/hp-1-canvas-2-1.jpg"
								alt="insta">
							</a>
						</div>
						</c:when>
						</c:choose>
						<div class="images">
							<a href="memberMypage.do" class="images-inner">
								<div class="overlay"></div> <img src="images/hp-1-canvas-3.jpg"
								alt="insta">
							</a>
						</div>
					</div>
					<div class="insta-inner">
						<div class="images">
							<a href="./boardNoticeList.do?" class="images-inner">
								<div class="overlay"></div> <img src="images/hp-1-canvas-4.jpg"
								alt="insta">
							</a>
						</div>
						<div class="images">
							<a href="./boardQnalist.do?" class="images-inner">
								<div class="overlay"></div> <img src="images/hp-1-canvas-5.jpg"
								alt="insta">
							</a>
						</div>
						<div class="images">
							<a href="./board_review_list.do?pageno=1" class="images-inner">
								<div class="overlay"></div> <img src="images/hp-1-canvas-6.jpg"
								alt="insta">
							</a>
						</div>
					</div>
				</div>
				<div class="contact">
					<h4>Contact</h4>
					<div class="contact-inner">
						<i class="zmdi zmdi-map"></i>
						<div class="contact-info">
							<span>서울특별시 강남구 테헤란로 123</span>
						</div>
					</div>
					<div class="contact-inner">
						<i class="zmdi zmdi-phone"></i>
						<div class="contact-info">
							<span>010-7244-7201</a></span>
						</div>
					</div>
					<div class="contact-inner">
						<i class="zmdi zmdi-email"></i>
						<div class="contact-info">
							<span>leeunghee57@gmail.com</span>
						</div>
					</div>
					<div class="contact-inner">
						<i class="zmdi zmdi-globe"></i>
						<div class="contact-info">
							<span>www.leeLeung.com</span>
						</div>
					</div>
				</div>
				<div class="email">
					<div class="send">
						<i class="zmdi zmdi-mail-send"></i>
					</div>
					<input type="email" required="" pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}"
						name="email" placeholder="이메일을 입력하세요.">
				</div>
			</div>
		</div>
	</div>
</div>
