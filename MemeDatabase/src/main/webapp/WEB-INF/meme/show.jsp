<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Pupalup Memes</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" 
		integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
	<link rel="stylesheet" href="../../css/css/bootstrap4-neon-glow.min.css">
	<link rel="stylesheet" type="text/css" href="../../css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	<link rel='stylesheet' href='//cdn.jsdelivr.net/font-hack/2.020/css/hack.min.css'>
</head>
<body>
<%@ include file="../nav.jsp" %>





<div class="container meme__container">
    <div class="row">
        
        <div class="col text-center d-flex justify-content-center">
            
    <!-- GENERATED MEME -->
            <div class="generated__meme" style="background-image: url(${meme.imgUrl})">
                <p class="text__top" style="color:#FFF"> ${meme.topQuote}
                </p>
                
                <p class="text__bottom" style="color:#FFF"> ${meme.bottomQuote}
                </p>
            </div>
    <!-- END GENERATED MEME -->
            
        </div>
    
    <!-- Update and Delete -->
        <div class="col meme__options">
        
		 <button type="button" class="btn btn-light btn-shadow px-3 my-2 ml-0" data-toggle="modal" data-target="#updatemodal">
		  update meme!
		</button>
		
		<!-- Modal -->
		<div class="modal fade" id="updatemodal" tabindex="-1" role="dialog" aria-labelledby="updatemodalTitle" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-scrollable" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="updatemodalTitle">update meme</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body"> 
		        <form action="update.do" method="POST">
				<input type="hidden" name="updateById" value="${meme.id}"> 
				<input class="form-control" type="text" name="topQuote" value="${meme.topQuote}">
				<input class="form-control" type="text" name="bottomQuote" value="${meme.bottomQuote}">
				<input class="form-control" type="text" name="imgUrl" value="${meme.imgUrl}">
				<input class="form-control" type="text" name="fontColor" value="${meme.fontColor}">
				<input class="form-control" type="text" name="animalType" value="${meme.animalType}">
		        <div class="modal-footer" id="updatemodal">
				  <input class="btn btn-success btn-shadow px-3 my-2 ml-0 text-left nav__links " type="submit" value="Update!"><br>	
		        </div>
		        </form>
		      </div>
		    </div>
		  </div>
		</div> 
		
		    <br>
		    
		    <button type="button" class="btn btn-dark btn-shadow px-3 my-2 ml-0" data-toggle="modal" data-target="#deletememe" >
		  delete meme
		</button>
		
		<!-- Modal -->
		<div class="modal fade" id="deletememe" tabindex="-1" role="dialog" aria-labelledby="deletememeTitle" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-scrollable" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="deletememeTitle">delete meme</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">           
		          <div class="col text-center d-flex justify-content-center">
		            
		    <!-- GENERATED MEME -->
		            <div class="generated__meme" style="background-image: url(../../css/images/deleteImg.gif)">
		                <p class="text__top" style="color:#FFF"> WARNING!
		                </p>
		                
		                <p class="text__bottom" style="color:#FFF; font-size: 20px;"> meme will be deleted forever
		                </p>
		            </div>
		    <!-- END GENERATED MEME -->
		            
		        </div>
		        <div class="modal-footer">
				  	<form action="delete.do" method="POST" id="deletememe">
				      <input type="hidden" name="deleteById" value="${meme.id}">
				      <input class="btn btn-danger btn-shadow px-3 my-2 ml-0 text-left nav__links" type="submit" value="delete anyway!"><br>	
			       </form>
		        </div>
		      </div>
		    </div>
		  </div>
		</div>

        </div>
    </div>
</div> 

<%@ include file="../footer.jsp" %>

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