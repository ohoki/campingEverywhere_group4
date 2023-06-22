<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	/* 다크모드 css */
	html, body{
            width: 100%;
            height: 100%;
            margin: 0;
            padding: 0;
        }
        .wrap{
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        body[data-darkmode=on] {
            background-color: #1e1f21;
            color: #e8e8e8 !important;
        }
        /* Darkmode Toggle */
        body[data-darkmode=on] .darkmode > .inner{
            background-color: rgba(255,255,255,0.25);
        }
        .darkmode > .inner{
            position: relative;
            display: inline-flex;
            padding: 5px;
            border-radius: 1.5em;
            background-color: rgba(0,0,0,0.1);
        }
        .darkmode label {
            cursor: pointer;
        }
        .darkmode label:first-of-type{
            padding: 5px 5px 5px 10px;
            border-radius: 50% 0 0 50%;
        }
        .darkmode label:last-of-type{
            padding: 5px 10px 5px 5px;
            border-radius: 0 50% 50% 0;
        }
        .darkmode i{
            font-size: 1.5em;
            color: #aaa;
        }
        .darkmode input[type=radio]{
            display: none;
        }
        .darkmode input[type=radio]:checked + label > i {
            color: #fff;
            transition: all 0.35s ease-in-out;
        }
        .darkmode .darkmode-bg{
            width: 39px;
            height: 34px;
            position: absolute;
            left: 5px;
            border-radius: 50px 15px 15px 50px;
            z-index: -1;
            transition: all 0.35s ease-in-out;
            background-color: #03a9f4;
        }
        #toggle-radio-dark:checked ~ .darkmode-bg{
            border-radius: 15px 50px 50px 15px;
            top: 5px;
            left: 44px;
        }
</style>
</head>
<body>
	<!-- ======= Footer ======= -->
	<section id="contact" class="contact section-bg">
		<div align="center">
			<img src="assets/img/favicon.png" alt="로고" width="40px">
			<p>caping everywhere</p>
		</div>
		<div class="contact_info">
			<p>
				<strong>CUSTOMMER INFO</strong>
			</p>
			<p>053-123-4567</p>
			<p>평일: 오전09:00 ~ 오후06:00</p>
		</div>
		<div class="contact_info">
			<p>
				<strong>ADDRESS</strong>
			</p>
			<P>대구광역시 중구 중앙대로 403 (남일동 135-1, 5층)</P>
			<p>대표 : 최영호</p>
		<div id="google_translate_element" class="hd_lang"></div>
		</div>
	</section>
	<footer id="footer">
		<div class="container">
			<div class="copyright">Copyright &copy; GropBy.4 all right
				resesrved</div>
		</div>
	</footer>
	<script>
	function googleTranslateElementInit() {
		new google.translate.TranslateElement({
			pageLanguage: 'ko,en',
			includedLanguages: 'ko,zh-CN,ja,en',
			layout: google.translate.TranslateElement.InlineLayout.SIMPLE,
			autoDisplay: false
		}, 'google_translate_element');
	}
</script>
<script src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
</body>
</html>