<!--Lower Header Section -->
<div id="gototop"> </div>
<header id="header">
	<div class="row">
		<div class="span4">
			<a class="logo" href="getHomePage">
				<span>Twitter Bootstrap ecommerce template</span>
				<img src="resources/img/lotus.png" alt="bootstrap sexy shop">
			</a>
		</div>
		<div class="span4">
			<div class="offerNoteWrapper">
				<h1 class="dotmark">
					<i class="icon-cut"></i>
					Wellcome to Lotus jeweiry....
				</h1>
			</div>
		</div>
		<div class="span4 alignR">
			<p>
				<br>
				<strong> Hỗ trợ (24/7) : 0800 1234 678 </strong>
				<br>
				<br>
			</p>
		</div>
	</div>
</header>

<!--Navigation Bar Section -->
<div class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
			<div class="nav-collapse">
				<ul class="nav">
					<li class="active" >
						<a routerLink="home">Trang chủ</a>
					</li>
					<li class="active" >
						<a routerLink="productlist">Tất cả sản phẩm</a>
					</li>
					<li class="active" >
						<a routerLink="productfavorite">Sản phẩm yêu thích</a>
					</li>
					<li class="active" >
						<a routerLink="generalContent">Nội dung</a>
					</li>

					<li id="admin" style="visibility: hidden" class="active" >
						<a routerLink="admin">Quản lý</a>
					</li> 
				</ul>
				<form action="#" class="navbar-search pull-left">
					<input style="height: 30px" type="text" placeholder="Search" class="search-query span3" [(ngModel)]="itemsearch" name="itemsearch" (keyup.enter)="gotoSearch()">
				</form>
			</div>
		</div>
	</div>
</div>
<!-- <router-outlet></router-outlet> -->