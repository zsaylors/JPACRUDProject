<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



<div class="navbar-dark text-white nav__bar">
<!-- TITLE -->
	<nav class="navbar px-0 navbar-expand-lg navbar-dark justify-content-center text-center">
		<a class="navbar-brand" href="index.do">
			<p class="site__title">pup•a•lup
				<p class="paws">🐾</p></p>
			<p class="site__slogan">doggo and animal memes since 2019!</p> </a>
	</nav>

<!-- MENU -->
	<div class="menu__options text-center">
		<div class="text-mono ">
		<button type="button" class="btn btn-success btn-sm btn-shadow px-3 my-2 ml-0 text-left nav__links" data-toggle="modal" data-target="#addmodal">
		  add a meme!
		</button>
		<button type="button" class="btn btn-danger btn-sm btn-shadow px-3 my-2 ml-0 text-left nav__links" data-toggle="modal" data-target="#searchmodal">
		  search memes!
		</button>
		</div>
	</div>
		
		<!-- Modal -->
		<div class="modal fade" id="addmodal" tabindex="-1" role="dialog" aria-labelledby="addmodalTitle" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-scrollable" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="addmodalTitle">add a meme</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body"> 
		        <form action="add.do" method="POST">
		        	<br>top text:
					<input class="form-control" type="text" maxlength="254" name="topQuote" placeholder="Top text"> 
					<br>bottom text:
					<input class="form-control" type="text" maxlength="254" name="bottomQuote" placeholder="Bottom text">
					<br>image url:
					<input class="form-control" type="text" maxlength="1000" name="imgUrl" placeholder="Img URL">
					<br>font color:
					<select name="fontColor" class="form-control">
								<option value="#ffffff">White</option>
								<option value="#73c36d">Green</option>
								<option value="#60a9ff">Blue</option>
								<option value="#d5e83f">Yellow</option>
								<option value="#c12626">Red</option>
								<option value="#f478ac">Pink</option>
					</select>
					<br>animal type:
					<select name="animalType" class="form-control">
								<option value="dog">🐕 Dog</option>
								<option value="cat">🐈 Cat</option>
								<option value="goat">🐐 Goat</option>
								<option value="giraffe">🦒 Giraffe</option>
								<option value="lion">🦁 Lion</option>
								<option value="headgehog">🦔 Headgehog</option>
								<option value="penguin">🐧 Penguin</option>
								<option value="other">Other</option>
					</select>
				<div class="modal-footer" id="addmodal">
					<input class="btn btn-success btn-shadow px-3 my-2 ml-0" type="submit" value="Submit"><br>
				</div>
				</form>
		      </div>
		    </div>
		  </div>
		</div> 
		
		<div class="modal fade" id="searchmodal" tabindex="-1" role="dialog" aria-labelledby="searchTitle" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-scrollable" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="addmodalTitle">search</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body"> 
		      	<form action="search.do" method="GET" id="searchmodal">
					<div class="input-group">
						<input class="form-control" type="text" name="keyword" placeholder="search by keyword"> 
						<span class="input-group-btn"> 
							<input class="btn btn-success" type="submit" value="search">
						</span>
					</div>
				</form>
		     </div>
		    </div>
		  </div>
		</div>
		
		
</div>

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