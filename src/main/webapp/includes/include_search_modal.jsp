<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<button class="close" type="button" data-dismiss="modal">
	<i class="zmdi zmdi-close"></i>
</button>
<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-body">
			<form id="searchModal__form" method="POST">
				<button id="searchModal__submit" type="submit">
					<i class="zmdi zmdi-search"></i>
				</button>
				<input id="searchModal__input" type="text" name="search"
					placeholder="찾으시는 상품을 검색하세요." />
			</form>
		</div>
	</div>
</div>