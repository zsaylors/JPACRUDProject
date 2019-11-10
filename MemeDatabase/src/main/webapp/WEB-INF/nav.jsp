<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="navbar-dark text-white nav__bar">
<!-- TITLE -->
	<nav class="navbar px-0 navbar-expand-lg navbar-dark justify-content-center text-center">
		<a class="navbar-brand" href="#">
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
			<a href="#!" class="btn btn-danger btn-shadow px-3 my-2 ml-0 ml-sm-1 text-left nav__links">
				search memes</a>
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
					<input class="form-control" type="text" name="topQuote" placeholder="Top text"> 
					<input class="form-control" type="text" name="bottomQuote" placeholder="Bottom text">
					<input class="form-control" type="text" name="imgUrl" placeholder="Img URL">
					<input class="form-control" type="text" name="fontColor" placeholder="Font color">
					<input class="form-control" type="text" name="animalType" placeholder="Type of animal">
				<div class="modal-footer" id="addmodal">
					<input class="btn btn-outline-success" type="submit" value="Submit"><br>
				</div>
				</form>
		      </div>
		    </div>
		  </div>
		</div> 
</div>