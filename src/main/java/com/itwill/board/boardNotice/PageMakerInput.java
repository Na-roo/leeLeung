package com.itwill.board.boardNotice;

public class PageMakerInput {
	private int rowCountPerPage;   // 테이블(리스트)당 출력 행수	1페이지에 20개 10개
	private int pageCountPerPage;  // 한페이지에 보여지는 페이지 수	1~5페이지 6~10페이지
	private String selectPage;     // 선택한 현재 페이지 번호
	
	public PageMakerInput() {

	}
	
	
	public PageMakerInput(int rowCountPerPage, int pageCountPerPage, String selectPage) {
		
		this.rowCountPerPage = rowCountPerPage;
		this.pageCountPerPage = pageCountPerPage;
		this.selectPage = selectPage;
	}






	public int getRowCountPerPage() {
		return rowCountPerPage;
	}

	public void setRowCountPerPage(int rowCountPerPage) {
		this.rowCountPerPage = rowCountPerPage;
	}

	public int getPageCountPerPage() {
		return pageCountPerPage;
	}

	public void setPageCountPerPage(int pageCountPerPage) {
		this.pageCountPerPage = pageCountPerPage;
	}

	public String getSelectPage() {
		return selectPage;
	}

	public void setSelectPage(String selectPage) {
		this.selectPage = selectPage;
	}

	@Override
	public String toString() {
		return "PageMakerInput [rowCountPerPage=" + rowCountPerPage + ", pageCountPerPage=" + pageCountPerPage
				+ ", selectPage=" + selectPage + "]";
	}


	
	
}
