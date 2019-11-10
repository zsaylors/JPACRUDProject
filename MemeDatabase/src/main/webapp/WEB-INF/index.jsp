<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Pupalup Memes</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" 
		integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
	<link rel="stylesheet" href="../css/css/bootstrap4-neon-glow.min.css">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	<link rel='stylesheet' href='//cdn.jsdelivr.net/font-hack/2.020/css/hack.min.css'>
</head>
<body>
<%@ include file="nav.jsp" %>

	<%-- <c:forEach items="${memes}" var="meme"> --%>
<%-- 		<a href="getMeme.do?id=${meme.id}">
		<input type="submit" value="${meme.animalType}">
		</a> --%>
		
<%-- 		
		<form action="getMeme.do" method="POST">
			<input type="hidden" name="getMemeById" value="${meme.id}">
			<input class="btn btn-outline-success" type="submit" value="${meme.animalType}"><br>	
		</form>
	</c:forEach>
	<BR><BR><BR>
	<c:out value="${memes[fn:length(memes)-1].animalType}"/> --%>




<div class="container most__recent">
    <div class="row">
     	<div class="col lead mb-3 text-mono text-success">most recent memes:</div>
    </div>
	<div class="row">
	<c:forEach items="${memes}" var="meme" begin="0" end = "5">
	

	
	<div class="col text-center d-flex justify-content-center" style="margin-bottom: 30px;">
	 <a href="getMeme.do?id=${meme.id}"> 
		<div class="generated__meme" style="background-image: url(${meme.imgUrl})">
			<p class="text__top" style="color:${meme.fontColor}"> ${meme.topQuote} </p>
            <p class="text__bottom" style="color:${meme.fontColor}"> ${meme.bottomQuote} </p>
        </div>
        </a>
          
    </div>

	</c:forEach>
	</div>
</div>

<%@ include file="footer.jsp" %>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>