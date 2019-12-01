DROP TABLE jumunProduct CASCADE CONSTRAINTS;
DROP TABLE productoption CASCADE CONSTRAINTS;
DROP TABLE jumun CASCADE CONSTRAINTS;
DROP TABLE Admin CASCADE CONSTRAINTS;
DROP TABLE QnA CASCADE CONSTRAINTS;
DROP TABLE reviewcomment CASCADE CONSTRAINTS;
DROP TABLE notice CASCADE CONSTRAINTS;
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE Cart CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE category CASCADE CONSTRAINTS;
DROP TABLE Member CASCADE CONSTRAINTS;

/**********************************/
/* Table Name: 회원 */
/**********************************/
CREATE TABLE Member(
		memberNo                      		NUMBER(10)		 NOT NULL,
		memberId                      		VARCHAR2(20)		 NOT NULL,
		memberPassword                		VARCHAR2(30)		 NOT NULL,
		memberName                    		VARCHAR2(20)		 NOT NULL,
		memberSex                     		CHAR(1)		 NOT NULL,
		memberPhone                   		VARCHAR2(20)		 NOT NULL,
		memberEmail                   		VARCHAR2(40)		 NOT NULL,
		memberAddress                 		VARCHAR2(60)		 NOT NULL,
		memberRank                    		VARCHAR2(20)		 DEFAULT 'Silver'		 NOT NULL,
		memberMileage                 		NUMBER(10)		 NOT NULL,
		memberDate                    		DATE		 NOT NULL
);

COMMENT ON TABLE Member is '회원';
COMMENT ON COLUMN Member.memberNo is '회원번호';
COMMENT ON COLUMN Member.memberId is '회원아이디';
COMMENT ON COLUMN Member.memberPassword is '회원비밀번호';
COMMENT ON COLUMN Member.memberName is '회원이름';
COMMENT ON COLUMN Member.memberSex is '회원성별';
COMMENT ON COLUMN Member.memberPhone is '회원전화번호';
COMMENT ON COLUMN Member.memberEmail is '회원이메일';
COMMENT ON COLUMN Member.memberAddress is '회원주소';
COMMENT ON COLUMN Member.memberRank is '회원등급';
COMMENT ON COLUMN Member.memberMileage is '회원마일리지';
COMMENT ON COLUMN Member.memberDate is '회원가입날짜';


/**********************************/
/* Table Name: 카테고리 */
/**********************************/
CREATE TABLE category(
		categoryNo                    		NUMBER(10)		 NOT NULL,
		categoryname                  		VARCHAR2(50)		 NOT NULL
);

COMMENT ON TABLE category is '카테고리';
COMMENT ON COLUMN category.categoryNo is '카테고리번호';
COMMENT ON COLUMN category.categoryname is '카테고리이름';


/**********************************/
/* Table Name: 상품 */
/**********************************/
CREATE TABLE product(
		productNo                     		NUMBER(15)		 NOT NULL,
		productName                   		VARCHAR2(25)		 NOT NULL,
		productPrice                  		NUMBER(12)		 NOT NULL,
		productQty                    		NUMBER(5)		 DEFAULT 1		 NOT NULL,
		productImg                    		VARCHAR2(300)		 NOT NULL,
		productSalesQty               		NUMBER(10)		 NOT NULL,
		categoryNo                    		NUMBER(10)		 NOT NULL
);

COMMENT ON TABLE product is '상품';
COMMENT ON COLUMN product.productNo is '상품번호';
COMMENT ON COLUMN product.productName is '상품이름';
COMMENT ON COLUMN product.productPrice is '상품가격';
COMMENT ON COLUMN product.productQty is '상품재고량';
COMMENT ON COLUMN product.productImg is '상품이미지';
COMMENT ON COLUMN product.productSalesQty is '상품판매량';
COMMENT ON COLUMN product.categoryNo is '카테고리번호';


/**********************************/
/* Table Name: 카트 */
/**********************************/
CREATE TABLE Cart(
		cartNo                        		NUMBER(10)		 NOT NULL,
		cartQty                       		NUMBER(10)		 NOT NULL,
		cartProductName               		NUMBER(25)		 NOT NULL,
		cartProductPrice              		NUMBER(10)		 NOT NULL,
		cartProductOpName             		VARCHAR2(50)		 NULL ,
		cartProductOpPrice            		NUMBER(10)		 NULL ,
		cartProductOpLastPrice        		NUMBER(10)		 NOT NULL,
		memberNo                      		NUMBER(10)		 NULL ,
		productNo                     		NUMBER(15)		 NULL 
);

COMMENT ON TABLE Cart is '카트';
COMMENT ON COLUMN Cart.cartNo is '카트번호';
COMMENT ON COLUMN Cart.cartQty is '카트수량';
COMMENT ON COLUMN Cart.cartProductName is '카트상품이름';
COMMENT ON COLUMN Cart.cartProductPrice is '카트상품가격';
COMMENT ON COLUMN Cart.cartProductOpName is '카트옵션이름';
COMMENT ON COLUMN Cart.cartProductOpPrice is '카트옵션가격';
COMMENT ON COLUMN Cart.cartProductOpLastPrice is '카트총가격';
COMMENT ON COLUMN Cart.memberNo is '회원번호';
COMMENT ON COLUMN Cart.productNo is '상품번호';


/**********************************/
/* Table Name: 리뷰게시판 */
/**********************************/
CREATE TABLE review(
		reviewNo                      		NUMBER(10)		 NOT NULL,
		reviewWriter                  		VARCHAR2(20)		 NOT NULL,
		reviewTitle                   		VARCHAR2(100)		 NOT NULL,
		reviewContent                 		VARCHAR2(300)		 NOT NULL,
		reviewDate                    		DATE		 NOT NULL,
		reviewViewCount               		NUMBER(10)		 NOT NULL,
		reviewGrade                   		NUMBER(10)		 NOT NULL,
		productNo                     		NUMBER(15)		 NOT NULL,
		memberNo                      		NUMBER(10)		 NOT NULL
);

COMMENT ON TABLE review is '리뷰게시판';
COMMENT ON COLUMN review.reviewNo is '리뷰번호';
COMMENT ON COLUMN review.reviewWriter is '리뷰작성자';
COMMENT ON COLUMN review.reviewTitle is '리뷰제목';
COMMENT ON COLUMN review.reviewContent is '리뷰내용';
COMMENT ON COLUMN review.reviewDate is '리뷰날짜';
COMMENT ON COLUMN review.reviewViewCount is '리뷰조회수';
COMMENT ON COLUMN review.reviewGrade is '평점';
COMMENT ON COLUMN review.productNo is '상품번호';
COMMENT ON COLUMN review.memberNo is '회원번호';


/**********************************/
/* Table Name: 공지사항 */
/**********************************/
CREATE TABLE notice(
		noticeNo                      		NUMBER(10)		 NOT NULL,
		noticeWriter                  		VARCHAR2(20)		 NOT NULL,
		noticeTitle                   		VARCHAR2(50)		 NOT NULL,
		noticeContent                 		VARCHAR2(500)		 NOT NULL,
		noticeDate                    		DATE		 NOT NULL,
		noticeInquiry                 		NUMBER(10)		 NOT NULL,
		noticePageGroup               		NUMBER(10)		 NULL ,
		noticePageStep                		NUMBER(10)		 NULL ,
		noticePageDepth               		NUMBER(10)		 NULL 
);

COMMENT ON TABLE notice is '공지사항';
COMMENT ON COLUMN notice.noticeNo is '공지사항번호';
COMMENT ON COLUMN notice.noticeWriter is '공지사항작성자';
COMMENT ON COLUMN notice.noticeTitle is '공지사항제목';
COMMENT ON COLUMN notice.noticeContent is '공지사항내용';
COMMENT ON COLUMN notice.noticeDate is '공지사항날짜';
COMMENT ON COLUMN notice.noticeInquiry is '공지사항조회수';
COMMENT ON COLUMN notice.noticePageGroup is '페이지그룹';
COMMENT ON COLUMN notice.noticePageStep is '페이지스텝';
COMMENT ON COLUMN notice.noticePageDepth is '페이지깊이';


/**********************************/
/* Table Name: 리뷰댓글 */
/**********************************/
CREATE TABLE reviewcomment(
		replyCount                    		NUMBER(10)		 NOT NULL,
		replyContent                  		VARCHAR2(300)		 NOT NULL,
		replyDate                     		DATE		 NOT NULL,
		replyWriter                   		VARCHAR2(20)		 NOT NULL,
		memberNo                      		NUMBER(10)		 NOT NULL,
		reviewNo                      		NUMBER(10)		 NOT NULL
);

COMMENT ON TABLE reviewcomment is '리뷰댓글';
COMMENT ON COLUMN reviewcomment.replyCount is '댓글번호';
COMMENT ON COLUMN reviewcomment.replyContent is '댓글내용';
COMMENT ON COLUMN reviewcomment.replyDate is '댓글일자';
COMMENT ON COLUMN reviewcomment.replyWriter is '댓글작성자';
COMMENT ON COLUMN reviewcomment.memberNo is '회원번호';
COMMENT ON COLUMN reviewcomment.reviewNo is '리뷰번호';


/**********************************/
/* Table Name: 문의게시판 */
/**********************************/
CREATE TABLE QnA(
		qnaNo                         		NUMBER(10)		 NOT NULL,
		writer                        		VARCHAR2(20)		 NOT NULL,
		qnaTitle                      		VARCHAR2(50)		 NOT NULL,
		qnaContent                    		VARCHAR2(500)		 NOT NULL,
		qnaDate                       		DATE		 NOT NULL,
		qnaPageGroup                  		NUMBER(10)		 NULL ,
		qnaPage                       		NUMBER(10)		 NULL ,
		qnaPageDepth                  		NUMBER(10)		 NULL ,
		memberNo                      		NUMBER(10)		 NULL ,
		productNo                     		NUMBER(15)		 NOT NULL
);

COMMENT ON TABLE QnA is '문의게시판';
COMMENT ON COLUMN QnA.qnaNo is '문의번호';
COMMENT ON COLUMN QnA.writer is '문의작성자';
COMMENT ON COLUMN QnA.qnaTitle is '문의제목';
COMMENT ON COLUMN QnA.qnaContent is '문의내용';
COMMENT ON COLUMN QnA.qnaDate is '문의날짜';
COMMENT ON COLUMN QnA.qnaPageGroup is '페이지그룹';
COMMENT ON COLUMN QnA.qnaPage is '페이지스텝';
COMMENT ON COLUMN QnA.qnaPageDepth is '페이지깊이';
COMMENT ON COLUMN QnA.memberNo is '회원번호';
COMMENT ON COLUMN QnA.productNo is '상품번호';


/**********************************/
/* Table Name: 관리자 */
/**********************************/
CREATE TABLE Admin(
		adminId                       		VARCHAR2(20)		 NOT NULL
);

COMMENT ON TABLE Admin is '관리자';
COMMENT ON COLUMN Admin.adminId is '관리자아이디';


/**********************************/
/* Table Name: 주문 */
/**********************************/
CREATE TABLE jumun(
		jumunNo                       		NUMBER(10)		 NOT NULL,
		productRec                    		VARCHAR2(20)		 NOT NULL,
		productRecPhone               		NUMBER(20)		 NOT NULL,
		jumunRankDisCount             		NUMBER(10)		 NOT NULL,
		jumunPrice                    		NUMBER(10)		 NOT NULL,
		jumunPay                      		VARCHAR2(30)		 NOT NULL,
		jumunAddress                  		VARCHAR2(100)		 NOT NULL,
		jumunDate                     		DATE		 NOT NULL,
		memberNo                      		NUMBER(10)		 NULL 
);

COMMENT ON TABLE jumun is '주문';
COMMENT ON COLUMN jumun.jumunNo is '주문번호';
COMMENT ON COLUMN jumun.productRec is '수취인';
COMMENT ON COLUMN jumun.productRecPhone is '수취인번호';
COMMENT ON COLUMN jumun.jumunRankDisCount is '등급할인';
COMMENT ON COLUMN jumun.jumunPrice is '주문금액';
COMMENT ON COLUMN jumun.jumunPay is '결제수단';
COMMENT ON COLUMN jumun.jumunAddress is '배송주소';
COMMENT ON COLUMN jumun.jumunDate is '주문날짜';
COMMENT ON COLUMN jumun.memberNo is '회원번호';


/**********************************/
/* Table Name: 옵션추가 */
/**********************************/
CREATE TABLE productoption(
		optionNo                      		NUMBER(10)		 NOT NULL,
		optionName                    		VARCHAR2(50)		 NOT NULL,
		optionPrice                   		NUMBER(10)		 NOT NULL,
		productNo                     		NUMBER(15)		 NULL 
);

COMMENT ON TABLE productoption is '옵션추가';
COMMENT ON COLUMN productoption.optionNo is '옵션번호';
COMMENT ON COLUMN productoption.optionName is '옵션이름';
COMMENT ON COLUMN productoption.optionPrice is '옵션가격';
COMMENT ON COLUMN productoption.productNo is '상품번호';


/**********************************/
/* Table Name: 주문상품 */
/**********************************/
CREATE TABLE jumunProduct(
		jumunProductNo                		NUMBER(10)		 NULL ,
		jumunProductName              		VARCHAR2(20)		 NOT NULL,
		jumunProductPrice             		NUMBER(10)		 NOT NULL,
		jumunProductOpName            		VARCHAR2(10)		 NOT NULL,
		jumunProductOpPrice           		NUMBER(10)		 NOT NULL,
		jumunProductQty               		NUMBER(10)		 NOT NULL,
		jumunProductLastPrice         		NUMBER(10)		 NOT NULL,
		jumunNo                       		NUMBER(10)		 NULL ,
		productNo                     		NUMBER(15)		 NULL 
);

COMMENT ON TABLE jumunProduct is '주문상품';
COMMENT ON COLUMN jumunProduct.jumunProductNo is '주문상품번호';
COMMENT ON COLUMN jumunProduct.jumunProductName is '주문상품이름';
COMMENT ON COLUMN jumunProduct.jumunProductPrice is '주문상품가격';
COMMENT ON COLUMN jumunProduct.jumunProductOpName is '주문상품옵션이름';
COMMENT ON COLUMN jumunProduct.jumunProductOpPrice is '주문상품옵션가격';
COMMENT ON COLUMN jumunProduct.jumunProductQty is '주문상품수량';
COMMENT ON COLUMN jumunProduct.jumunProductLastPrice is '주문상품총가격';
COMMENT ON COLUMN jumunProduct.jumunNo is '주문번호';
COMMENT ON COLUMN jumunProduct.productNo is '상품번호';



ALTER TABLE Member ADD CONSTRAINT IDX_Member_PK PRIMARY KEY (memberNo);

ALTER TABLE category ADD CONSTRAINT IDX_category_PK PRIMARY KEY (categoryNo);

ALTER TABLE product ADD CONSTRAINT IDX_product_PK PRIMARY KEY (productNo);
ALTER TABLE product ADD CONSTRAINT IDX_product_FK0 FOREIGN KEY (categoryNo) REFERENCES category (categoryNo);

ALTER TABLE Cart ADD CONSTRAINT IDX_Cart_PK PRIMARY KEY (cartNo);
ALTER TABLE Cart ADD CONSTRAINT IDX_Cart_FK0 FOREIGN KEY (memberNo) REFERENCES Member (memberNo);
ALTER TABLE Cart ADD CONSTRAINT IDX_Cart_FK1 FOREIGN KEY (productNo) REFERENCES product (productNo);

ALTER TABLE review ADD CONSTRAINT IDX_review_PK PRIMARY KEY (reviewNo);
ALTER TABLE review ADD CONSTRAINT IDX_review_FK0 FOREIGN KEY (productNo) REFERENCES product (productNo);
ALTER TABLE review ADD CONSTRAINT IDX_review_FK1 FOREIGN KEY (memberNo) REFERENCES Member (memberNo);

ALTER TABLE notice ADD CONSTRAINT IDX_notice_PK PRIMARY KEY (noticeNo);

ALTER TABLE reviewcomment ADD CONSTRAINT IDX_reviewcomment_PK PRIMARY KEY (replyCount);
ALTER TABLE reviewcomment ADD CONSTRAINT IDX_reviewcomment_FK0 FOREIGN KEY (reviewNo) REFERENCES review (reviewNo);
ALTER TABLE reviewcomment ADD CONSTRAINT IDX_reviewcomment_FK1 FOREIGN KEY (memberNo) REFERENCES Member (memberNo);

ALTER TABLE QnA ADD CONSTRAINT IDX_QnA_PK PRIMARY KEY (qnaNo);
ALTER TABLE QnA ADD CONSTRAINT IDX_QnA_FK0 FOREIGN KEY (productNo) REFERENCES product (productNo);
ALTER TABLE QnA ADD CONSTRAINT IDX_QnA_FK1 FOREIGN KEY (memberNo) REFERENCES Member (memberNo);

ALTER TABLE Admin ADD CONSTRAINT IDX_Admin_PK PRIMARY KEY (adminId);

ALTER TABLE jumun ADD CONSTRAINT IDX_jumun_PK PRIMARY KEY (jumunNo);
ALTER TABLE jumun ADD CONSTRAINT IDX_jumun_FK0 FOREIGN KEY (memberNo) REFERENCES Member (memberNo);

ALTER TABLE productoption ADD CONSTRAINT IDX_productoption_PK PRIMARY KEY (optionNo);
ALTER TABLE productoption ADD CONSTRAINT IDX_productoption_FK0 FOREIGN KEY (productNo) REFERENCES product (productNo);

ALTER TABLE jumunProduct ADD CONSTRAINT IDX_jumunProduct_PK PRIMARY KEY (jumunProductNo);
ALTER TABLE jumunProduct ADD CONSTRAINT IDX_jumunProduct_FK0 FOREIGN KEY (jumunNo) REFERENCES jumun (jumunNo);
ALTER TABLE jumunProduct ADD CONSTRAINT IDX_jumunProduct_FK1 FOREIGN KEY (productNo) REFERENCES product (productNo);

