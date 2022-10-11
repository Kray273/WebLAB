select * from tab;

purge recyclebin;

drop table shoppingbasket purge

ALTER TABLE community
	DROP
		CONSTRAINT FK_userMember_TO_community
		CASCADE;

ALTER TABLE reply
	DROP
		CONSTRAINT FK_community_TO_reply
		CASCADE;

ALTER TABLE reply
	DROP
		CONSTRAINT FK_userMember_TO_reply
		CASCADE;

ALTER TABLE PRODUCT
	DROP
		CONSTRAINT FK_brandMember_TO_PRODUCT
		CASCADE;

ALTER TABLE buy
	DROP
		CONSTRAINT FK_productbuy_TO_buy
		CASCADE;

ALTER TABLE buy
	DROP
		CONSTRAINT FK_delivery_TO_buy
		CASCADE;

ALTER TABLE buy
	DROP
		CONSTRAINT FK_pointAp_TO_buy
		CASCADE;

ALTER TABLE buy
	DROP
		CONSTRAINT FK_couponAp_TO_buy
		CASCADE;

ALTER TABLE productbuy
	DROP
		CONSTRAINT FK_PRODUCT_TO_productbuy
		CASCADE;

ALTER TABLE productbuy
	DROP
		CONSTRAINT FK_userMember_TO_productbuy
		CASCADE;

ALTER TABLE productbuy
	DROP
		CONSTRAINT FK_basket_TO_productbuy
		CASCADE;

ALTER TABLE code
	DROP
		CONSTRAINT FK_divisionCode_TO_code
		CASCADE;

ALTER TABLE code
	DROP
		CONSTRAINT FK_PRODUCT_TO_code
		CASCADE;

ALTER TABLE basket
	DROP
		CONSTRAINT FK_userMember_TO_basket
		CASCADE;

ALTER TABLE basket
	DROP
		CONSTRAINT FK_PRODUCT_TO_basket
		CASCADE;

ALTER TABLE keep
	DROP
		CONSTRAINT FK_userMember_TO_keep
		CASCADE;

ALTER TABLE keep
	DROP
		CONSTRAINT FK_PRODUCT_TO_keep
		CASCADE;

ALTER TABLE keep
	DROP
		CONSTRAINT FK_brandMember_TO_keep
		CASCADE;

ALTER TABLE review
	DROP
		CONSTRAINT FK_PRODUCT_TO_review
		CASCADE;

ALTER TABLE review
	DROP
		CONSTRAINT FK_userMember_TO_review
		CASCADE;

ALTER TABLE review
	DROP
		CONSTRAINT FK_comments_TO_review
		CASCADE;

ALTER TABLE md
	DROP
		CONSTRAINT FK_brandMember_TO_md
		CASCADE;

ALTER TABLE md
	DROP
		CONSTRAINT FK_PRODUCT_TO_md
		CASCADE;

ALTER TABLE ask
	DROP
		CONSTRAINT FK_userMember_TO_ask
		CASCADE;

ALTER TABLE ask
	DROP
		CONSTRAINT FK_askReview_TO_ask
		CASCADE;

ALTER TABLE ask
	DROP
		CONSTRAINT FK_brandMember_TO_ask
		CASCADE;

ALTER TABLE brandTheme
	DROP
		CONSTRAINT FK_brandMember_TO_brandTheme
		CASCADE;

ALTER TABLE brandInfo
	DROP
		CONSTRAINT FK_brandMember_TO_brandInfo
		CASCADE;

ALTER TABLE pointAp
	DROP
		CONSTRAINT FK_point_TO_pointAp
		CASCADE;

ALTER TABLE pointAp
	DROP
		CONSTRAINT FK_userMember_TO_pointAp
		CASCADE;

ALTER TABLE couponAp
	DROP
		CONSTRAINT FK_coupon_TO_couponAp
		CASCADE;

ALTER TABLE couponAp
	DROP
		CONSTRAINT FK_userMember_TO_couponAp
		CASCADE;

ALTER TABLE userMember
	DROP
		CONSTRAINT FK_membership_TO_userMember
		CASCADE;

ALTER TABLE brandMember
	DROP
		UNIQUE (
			bm_id
		)
		CASCADE
		KEEP INDEX;

ALTER TABLE userMember
	DROP
		UNIQUE (
			um_mid
		)
		CASCADE
		KEEP INDEX;

ALTER TABLE community
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE reply
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE PRODUCT
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE buy
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE delivery
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE productbuy
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE code
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE divisionCode
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE basket
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE keep
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE membership
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE coupon
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE point
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE review
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE md
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ask
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE brandMember
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE brandTheme
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE brandInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE comments
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE askReview
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE pointAp
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE couponAp
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE userMember
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX UIX_brandMember;

DROP INDEX UIX_userMember;

DROP INDEX PK_community;

DROP INDEX PK_reply;

DROP INDEX PK_PRODUCT;

DROP INDEX PK_buy;

DROP INDEX PK_delivery;

DROP INDEX PK_productbuy;

DROP INDEX PK_code;

DROP INDEX PK_divisionCode;

DROP INDEX PK_basket;

DROP INDEX PK_keep;

DROP INDEX PK_membership;

DROP INDEX PK_coupon;

DROP INDEX PK_point;

DROP INDEX PK_review;

DROP INDEX PK_md;

DROP INDEX PK_ask;

DROP INDEX PK_brandMember;

DROP INDEX PK_brandTheme;

DROP INDEX PK_brandInfo;

DROP INDEX PK_comments;

DROP INDEX PK_askReview;

DROP INDEX PK_pointAp;

DROP INDEX PK_couponAp;

DROP INDEX PK_userMember;

/* 커뮤니티 */
DROP TABLE community 
	CASCADE CONSTRAINTS;

/* 댓글 */
DROP TABLE reply 
	CASCADE CONSTRAINTS;

/* 상품 */
DROP TABLE PRODUCT 
	CASCADE CONSTRAINTS;

/* 주문 */
DROP TABLE buy 
	CASCADE CONSTRAINTS;

/* 배송업체 */
DROP TABLE delivery 
	CASCADE CONSTRAINTS;

/* 주문상품 */
DROP TABLE productbuy 
	CASCADE CONSTRAINTS;

/* 코드 */
DROP TABLE code 
	CASCADE CONSTRAINTS;

/* 코드분류 */
DROP TABLE divisionCode 
	CASCADE CONSTRAINTS;

/* 장바구니 */
DROP TABLE basket 
	CASCADE CONSTRAINTS;

/* 찜 */
DROP TABLE keep 
	CASCADE CONSTRAINTS;

/* 멤버십 */
DROP TABLE membership 
	CASCADE CONSTRAINTS;

/* 쿠폰 */
DROP TABLE coupon 
	CASCADE CONSTRAINTS;

/* 포인트 */
DROP TABLE point 
	CASCADE CONSTRAINTS;

/* 리뷰 */
DROP TABLE review 
	CASCADE CONSTRAINTS;

/* MD */
DROP TABLE md 
	CASCADE CONSTRAINTS;

/* 브랜드문의 */
DROP TABLE ask 
	CASCADE CONSTRAINTS;

/* 브랜드 */
DROP TABLE brandMember 
	CASCADE CONSTRAINTS;

/* 브랜드 테마 */
DROP TABLE brandTheme 
	CASCADE CONSTRAINTS;

/* 브랜드 정보 */
DROP TABLE brandInfo 
	CASCADE CONSTRAINTS;

/* 리뷰댓글 */
DROP TABLE comments 
	CASCADE CONSTRAINTS;

/* 문의 댓글 */
DROP TABLE askReview 
	CASCADE CONSTRAINTS;

/* 포인트 적용 */
DROP TABLE pointAp 
	CASCADE CONSTRAINTS;

/* 쿠폰적용 */
DROP TABLE couponAp 
	CASCADE CONSTRAINTS;

/* User */
DROP TABLE userMember 
	CASCADE CONSTRAINTS;