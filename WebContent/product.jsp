<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Pacifico">
    <!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Gugi|Pacifico"> -->
    <link href="https://fonts.googleapis.com/css?family=Tajawal" rel="stylesheet">
    <link rel="stylesheet" href="OwlCarousel2-2.3.4/dist/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="OwlCarousel2-2.3.4/dist/assets/owl.theme.default.min.css">
    <title>Document</title>
</head>
<body>
<div class="top-header container-fluid col-md-12">
        <div class="row justify-content-around">
            <div class="col-md-2 col-sm-8 col-8 ">
              <div class="row justify-content-center">
                <div class="top-header-logo col-sm-12 col-12">
                  <div class="row">
                   <a href="index.jsp"> <div><p>Rajat's</p></div>
                    <span>Project</span></a>
                    </div>
                </div>
                </div>
            </div>
                <div class="top-header-search col-xl-7 col-md-7 col-sm-12 col-12" id="top-header-search">
                        <form class="col-md-11 col-12 float-right">
                            <div class="form-row">
                                <div class="input input-group-sm col-md-10  col-11">
                                <input type="text" class="form-control" id="inlineFormInputName2" placeholder="I am looking for">
                              </div>
                              <div class="button col-md-2 col-1">
                                <button type="submit" class="btn btn-primary mb-2"><span>Search</span><i class="fa fa-search"></i></button>
                              </div>
                            </div>
						</form>
                </div>
                <%
	                session.setAttribute("page", "product.jsp");
	            %>
	            <div class="top-header-login justify-content-center col-xl-1 col-md-1 col-sm-1 col-2" id="top-header-login">
	                <a href="login.jsp">
	                <%
						if((String)session.getAttribute("isuser") == "yes"){
						     out.print("<div class=\"content\" style=\"display : none;\" >");           	
						}
						else{
							out.print("<div class=\"content\" style=\"display : block;\" >");
						}
	                %>
	                        <p> My Account</p>
	                        <i class="fa fa-user"></i>
	                        <span>Login</span>
	                    </div>
	                </a>
	                <a href="logout">
	                <%
						if((String)session.getAttribute("isuser") == "yes"){
						     out.print("<div class=\"content\" style=\"display : block;\" >");           	
						}
						else{
							out.print("<div class=\"content\" style=\"display : none;\" >");
						}
	                %>
	                        <i class="fa fa-user"></i>
	                        <span>Logout</span>
	                    </div>
	                </a>
	            </div>
                <div class="top-header-cart justify-content-md-left col-xl-1 col-md-1 col-sm-1 col-1" id="top-header-cart">
                    <div class="content">
                        <i class="fa fa-shopping-cart"></i>
                       <span> My Cart </span>
                    </div>
                </div>
                </div>
      </div>
<!-- bottom-header -->
<div class="bottom-header container col-lg-12 col-md-12 col-sm-12 col-12">
  <div class="row justify-content-around">

    <!-- <div class="slider col-md-12 col-11" >
        <div id="carouselExampleControls_z" class="carousel slide" data-ride="carousel" data-interval="false">
            <div class="carousel-inner col-md-12 col-12 container-fluid">
              <div class="carousel-item active col-12">
                <div class="row ">
                  <div class="slider-item col-sm"><a href="">
                    <div class="row justify-content-around">
                    <div class="col-md-9 category-img">
                      <img src="images/category_1.jpg" alt="">
                    </div>
                    <div class="col-md-12 category-desc">
                      <p>Fruits & Vegetables</p>
                    </div>
                    </div>
                  </a></div>
                  <div class="slider-item col-sm"><a href="">
                      <div class="row justify-content-around">
                          <div class="col-md-9 category-img">
                            <img src="images/category_2.jpg" alt="">
                          </div>
                          <div class="col-md-12 category-desc">
                            <p>Grocery & Staples</p>
                          </div>
                          </div>
                  </a></div>
                  <div class="slider-item col-sm"><a href="">
                      <div class="row justify-content-around">
                          <div class="col-md-9 category-img">
                            <img src="images/category_3.jpg" alt="">
                          </div>
                          <div class="col-md-12 category-desc">
                            <p>Beverages</p>
                          </div>
                          </div>
                  </a></div>
                  <div class="slider-item col"><a href="">
                      <div class="row justify-content-around">
                          <div class="col-md-9 category-img">
                            <img src="images/category_4.jpg" alt="">
                          </div>
                          <div class="col-md-12 category-desc">
                            <p>Home & Kitchen</p>
                          </div>
                          </div>
                  </a></div>
                  <div class="slider-item col"><a href="">
                      <div class="row justify-content-around">
                          <div class="col-md-9 category-img">
                            <img src="images/category_5.jpg" alt="">
                          </div>
                          <div class="col-md-12 category-desc">
                            <p>Furnishing & Home Needs</p>
                          </div>
                          </div>
                  </a></div>
                  <div class="slider-item col"><a href="">
                      <div class="row justify-content-around">
                          <div class="col-md-9 category-img">
                            <img src="images/category_6.jpg" alt="">
                          </div>
                          <div class="col-md-12 category-desc">
                            <p> Household Needs</p>
                          </div>
                          </div>
                  </a></div>
                  <div class="slider-item col"><a href="">
                      <div class="row justify-content-around">
                          <div class="col-md-9 category-img">
                            <img src="images/category_7.jpg" alt="">
                          </div>
                          <div class="col-md-12 category-desc">
                            <p>Personal Care</p>
                          </div>
                          </div>
                  </a></div>
                  <div class="slider-item col"><a href="">
                      <div class="row justify-content-around">
                          <div class="col-md-9 category-img">
                            <img src="images/category_8.jpg" alt="">
                          </div>
                          <div class="col-md-12 category-desc">
                            <p> Breakfast & Dairy</p>
                          </div>
                          </div>
                    </a></div>
                </div>
              </div>
              <div class="carousel-item">
                <div class="row">
                    <div class="slider-item col"><a href="">
                        <div class="row justify-content-around">
                            <div class="col-md-9 category-img">
                              <img src="images/category_9.jpg" alt="">
                            </div>
                            <div class="col-md-12 category-desc">
                              <p>Noodles, Sauces & Instant Food</p>
                            </div>
                            </div>
                      </a></div>
                      <div class="slider-item col"><a href="">
                          <div class="row justify-content-around">
                              <div class="col-md-9 category-img">
                                <img src="images/category_10.jpg" alt="">
                              </div>
                              <div class="col-md-12 category-desc">
                                <p> Baby & Kids</p>
                              </div>
                              </div>
                      </a></div>
                      <div class="slider-item col"><a href="">
                          <div class="row justify-content-around">
                              <div class="col-md-9 category-img">
                                <img src="images/category_11.jpg" alt="">
                              </div>
                              <div class="col-md-12 category-desc">
                                <p>Biscuits, Snackes & Chocolates</p>
                              </div>
                              </div>
                      </a></div>
                      <div class="slider-item col"><a href="">
                          <div class="row justify-content-around">
                              <div class="col-md-9 category-img">
                                <img src="images/category_12.jpg" alt="">
                              </div>
                              <div class="col-md-12 category-desc">
                                <p> Meats, frozen & Seafood</p>
                              </div>
                              </div>
                      </a></div>
                      <div class="slider-item col"><a href="">
      
                      </a></div>
                      <div class="slider-item col"><a href="">
      
                      </a></div>
                      <div class="slider-item col"><a href="">
      
                      </a></div>
                      <div class="slider-item col"><a href="">
      
                      </a></div>
                </div>
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls_z" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls_z" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
          </div> -->

          <div class="owl-carousel owl-theme  owl-loaded" id="owl-one">
              <div class="owl-stage-outer">
                  <div class="owl-stage">
                      <div class="owl-item">
                          <div class="slider-item col-sm"><a href="categories.jsp">
                              <div class="row justify-content-around">
                              <div class="col-md-9 category-img">
                                <img src="images/category_1.jpg" alt="">
                              </div>
                              <div class="col-md-12 category-desc">
                                <p>Fruits & Vegetables</p>
                              </div>
                              </div>
                            </a></div>
                      </div>
                      <div class="owl-item">
                          <div class="slider-item col-sm"><a href="categories.jsp">
                              <div class="row justify-content-around">
                                  <div class="col-md-9 category-img">
                                    <img src="images/category_2.jpg" alt="">
                                  </div>
                                  <div class="col-md-12 category-desc">
                                    <p>Grocery & Staples</p>
                                  </div>
                                  </div>
                          </a></div>
                      </div>
                      <div class="owl-item">
                          <div class="slider-item col-sm"><a href="categories.jsp">
                              <div class="row justify-content-around">
                                  <div class="col-md-9 category-img">
                                    <img src="images/category_3.jpg" alt="">
                                  </div>
                                  <div class="col-md-12 category-desc">
                                    <p>Beverages</p>
                                  </div>
                                  </div>
                          </a></div>
                      </div>
                      <div class="owl-item">
                          <div class="slider-item col"><a href="categories.jsp">
                              <div class="row justify-content-around">
                                  <div class="col-md-9 category-img">
                                    <img src="images/category_4.jpg" alt="">
                                  </div>
                                  <div class="col-md-12 category-desc">
                                    <p>Home & Kitchen</p>
                                  </div>
                                  </div>
                          </a></div>
                      </div>
                      <div class="owl-item">
                          <div class="slider-item col"><a href="categories.jsp">
                              <div class="row justify-content-around">
                                  <div class="col-md-9 category-img">
                                    <img src="images/category_5.jpg" alt="">
                                  </div>
                                  <div class="col-md-12 category-desc">
                                    <p>Furnishing & Home Needs</p>
                                  </div>
                                  </div>
                          </a></div>
                      </div>
                      <div class="owl-item">
                          <div class="slider-item col"><a href="categories.jsp">
                              <div class="row justify-content-around">
                                  <div class="col-md-9 category-img">
                                    <img src="images/category_6.jpg" alt="">
                                  </div>
                                  <div class="col-md-12 category-desc">
                                    <p> Household Needs</p>
                                  </div>
                                  </div>
                          </a></div>
                      </div>
                      <div class="owl-item">
                          <div class="slider-item col"><a href="categories.jsp">
                              <div class="row justify-content-around">
                                  <div class="col-md-9 category-img">
                                    <img src="images/category_7.jpg" alt="">
                                  </div>
                                  <div class="col-md-12 category-desc">
                                    <p>Personal Care</p>
                                  </div>
                                  </div>
                          </a></div>
                      </div>
                      <div class="owl-item">
                          <div class="slider-item col"><a href="categories.jsp">
                              <div class="row justify-content-around">
                                  <div class="col-md-9 category-img">
                                    <img src="images/category_8.jpg" alt="">
                                  </div>
                                  <div class="col-md-12 category-desc">
                                    <p> Breakfast & Dairy</p>
                                  </div>
                                  </div>
                            </a></div>
                      </div>
                      <div class="owl-item">
                          <div class="slider-item col"><a href="categories.jsp">
                              <div class="row justify-content-around">
                                  <div class="col-md-9 category-img">
                                    <img src="images/category_9.jpg" alt="">
                                  </div>
                                  <div class="col-md-12 category-desc">
                                    <p>Noodles, Sauces & Instant Food</p>
                                  </div>
                                  </div>
                            </a></div>
                      </div>
                      <div class="owl-item">
                          <div class="slider-item col"><a href="categories.jsp">
                              <div class="row justify-content-around">
                                  <div class="col-md-9 category-img">
                                    <img src="images/category_10.jpg" alt="">
                                  </div>
                                  <div class="col-md-12 category-desc">
                                    <p> Baby & Kids</p>
                                  </div>
                                  </div>
                          </a></div>
                      </div>
                      <div class="owl-item">
                          <div class="slider-item col"><a href="categories.jsp">
                              <div class="row justify-content-around">
                                  <div class="col-md-9 category-img">
                                    <img src="images/category_11.jpg" alt="">
                                  </div>
                                  <div class="col-md-12 category-desc">
                                    <p>Biscuits, Snackes & Chocolates</p>
                                  </div>
                                  </div>
                          </a></div>
                      </div>
                      <div class="owl-item">
                          <div class="slider-item col"><a href="categories.jsp">
                              <div class="row justify-content-around">
                                  <div class="col-md-9 category-img">
                                    <img src="images/category_12.jpg" alt="">
                                  </div>
                                  <div class="col-md-12 category-desc">
                                    <p> Meats, frozen & Seafood</p>
                                  </div>
                                  </div>
                          </a></div>
                      </div>
                  </div>
              </div>
              <!-- <div class="owl-nav">
                  <div class="owl-prev">prev</div>
                  <div class="owl-next">next</div>
              </div> -->
              <!-- <div class="owl-dots">
                  <div class="owl-dot active"><span></span></div>
                  <div class="owl-dot"><span></span></div>
                  <div class="owl-dot"><span></span></div>
              </div> -->
          </div>
      </div>
  </div>
<!-- <div class="main-content container-fluid col-md-9">
    <div class="row justify-content-center">
        <div class="product-detail-image col-6 container-fluid">
            <div class="row justify-content-center">
                <div id="carouselExampleIndicators" class="carousel slide col-md-10" data-ride="carousel">
                    <ol class="carousel-indicators">
                      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                    </ol>
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <img class="d-block w-100" src="product_img_1.webp" alt="First slide">
                      </div>
                      <div class="carousel-item">
                        <img class="d-block w-100" src="product_img_2.webp" alt="Second slide">
                      </div>
                      <div class="carousel-item">
                        <img class="d-block w-100" src="product_img_3.webp" alt="Third slide">
                      </div>
                      <div class="carousel-item">
                            <img class="d-block w-100" src="product_img_4.webp" alt="Fourth slide">
                          </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                      <span class="carousel-control-prev-icon" aria-hidden="true"><i class="fa fa-chevron-left"></i></span>
                      <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                      <span class="carousel-control-next-icon" aria-hidden="true"><i class="fa fa-chevron-right"></i></span>
                      <span class="sr-only">Next</span>
                    </a>
                  </div>
            <div class="product-detail-desc col-md-12">
                    <span class="col-md-12 product-detail-heading"><h4>PRODUCT DETAILS</h4></span>
                    <div class="accordion" id="accordion">
                            <div class="card">
                              <div class="card-header" id="headingOne">
                                <h5 class="mb-0">
                                  <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        <i class="fa fa-chevron-down"></i>
                                  </button>
                                </h5>
                              </div>
                          
                              <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                                <div class="card-body">
                                        <div class="product-detail-sub-heading">
                                                <h5>key features</h5>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic quasi dolorem incidunt, autem cum. Ea odio provident quam eveniet placeat tempora, hic vero maxime, sed similique in eius praesentium culpa!</p>
                                            </div>
                                            <div class="product-detail-sub-heading">
                                                <h5>units</h5>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic quasi dolorem incidunt, autem cum. Ea odio provident quam eveniet placeat tempora, hic vero maxime, sed similique in eius praesentium culpa!</p>
                                            </div>
                                            <div class="product-detail-sub-heading">
                                                <h5>Disclaimer</h5>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic quasi dolorem incidunt, autem cum. Ea odio provident quam eveniet placeat tempora, hic vero maxime, sed similique in eius praesentium culpa!</p>
                                            </div>
                                </div>
                              </div>
                            </div>
                          </div>
                </div>
            </div>
        </div>

        <div class="product-info col-6 container">
                <div class="margin col-md-12"><span class="badge badge-primary">16% OFF</span></div>
                <div class="product-name col-md-12"><h5>Fortune Soya Health Refined Soyabean Oil (Pouch)</h5></div>
                <div class="company-name col-md-12">More by <a href="#">Fortune</a></div>
                <div class="mrp-price col-md-12"><h5><del>MRP &#8377;350</del></h5></div>
                <div class="original-price col-md-12"><h4>Discounted Price: <span>&#8377;250</span></h4></div>
                <div class="quantity col-md-12">
                    <span>Available in:</span>
                    <div>
                        <button type="button" class="btn btn-outline-warning">10kg</button>
                            <button type="button" class="btn btn-outline-dark">5kg</button>
                    </div>
                </div>
                <div class="shop col-md-12">
                        <button type="button" class="btn btn-primary">ADD TO CART</button>
                        <button type="button" class="btn btn-success">BUY NOW</button>
                </div>
            </div>
            
    </div>
</div> -->
<div class="main-content container-fluid col-md-9">
    <div class="row justify-content-center">
        <div class="product-detail-image col-12 col-md-6 col-sm-7">
            <div class="row justify-content-center">
                <div id="carouselExampleIndicators" class="carousel slide col-sm-12 col-md-10" data-ride="carousel">
                    <ol class="carousel-indicators">
                      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                    </ol>
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <img class="d-block w-100" src="assets/images/product_2.jpg" alt="First slide">
                      </div>
                      <div class="carousel-item">
                        <img class="d-block w-100" src="assets/images/product_1.jpg" alt="Second slide">
                      </div>
                      <div class="carousel-item">
                        <img class="d-block w-100" src="assets/images/product_1.jpg" alt="Third slide">
                      </div>
                      <div class="carousel-item">
                            <img class="d-block w-100" src="assets/images/product_2.jpg" alt="Fourth slide">
                          </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                      <span class="carousel-control-prev-icon" aria-hidden="true"><i class="fa fa-chevron-left"></i></span>
                      <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                      <span class="carousel-control-next-icon" aria-hidden="true"><i class="fa fa-chevron-right"></i></span>
                      <span class="sr-only">Next</span>
                    </a>
                  </div>
                <div class="product-detail-desc col-md-12">
                    <span class="col-md-12 product-detail-heading"><h4>PRODUCT DETAILS</h4></span>
                    <div class="accordion" id="accordion">
                            <div class="card">
                              <div class="card-header" id="headingOne">
                                <h5 class="mb-0">
                                  <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        <div class="view"><p>view more</p></div><i class="fa fa-chevron-down"></i>
                                  </button>
                                </h5>
                              </div>
                          
                              <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                                <div class="card-body">
                                        <div class="product-detail-sub-heading">
                                                <h5>key features</h5>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic quasi dolorem incidunt, autem cum. Ea odio provident quam eveniet placeat tempora, hic vero maxime, sed similique in eius praesentium culpa!</p>
                                            </div>
                                            <div class="product-detail-sub-heading">
                                                <h5>units</h5>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic quasi dolorem incidunt, autem cum. Ea odio provident quam eveniet placeat tempora, hic vero maxime, sed similique in eius praesentium culpa!</p>
                                            </div>
                                            <div class="product-detail-sub-heading">
                                                <h5>Disclaimer</h5>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic quasi dolorem incidunt, autem cum. Ea odio provident quam eveniet placeat tempora, hic vero maxime, sed similique in eius praesentium culpa!</p>
                                            </div>
                                </div>
                              </div>
                            </div>
                          </div>
                </div>
            </div>
        </div>
        <div class="product-info col-10 col-md-4 container">
            
                <div class="margin col-*-12"><span class="badge badge-primary">16% OFF</span></div>
                <div class="product-name col-*-12"><h5>Fortune Soya Health Refined Soyabean Oil (Pouch)</h5></div>
                <div class="company-name col-*-12">More by <a href="#">Fortune</a></div>
                <div class="mrp-price col-*-12"><h5><del>MRP &#8377;350</del></h5></div>
                <div class="original-price col-*-12"><h4>Discounted Price: <span>&#8377;250</span></h4></div>
                <div class="quantity col-*-12">
                    <span>Available in:</span>
                    <div>
                        <button type="button" class="btn btn-outline-warning">10kg</button>
                            <button type="button" class="btn btn-outline-dark">5kg</button>
                    </div>
                </div>
                <div class="shop col-*-12 row justify-content-around">
                        <button type="button" class="btn btn-primary col-6">ADD TO CART</button>
                        <button type="button" class="btn btn-success col-5">BUY NOW</button>
                </div>
                <!-- <div class="reason col-md-12">
                    <h4>Why shop from prashant store ?</h4>
                    <div class="reason">
                        <span></span>
                    </div>
                </div> -->
            </div>
            
    </div>
</div>
<!-- footer -->
<footer class="footer col-md-12 col-12 container">
  <div class="row  justify-content-center">
    <div class="content col-xl-10 col-lg-11 col-md-11 col-12 container-fluid">
      <div class="row justify-content-center">
        <!-- intro -->
        <div class="intro col-xl-11 col-lg-12 col-md-12 col-12 container-fluid">
          <p>Rajat's Grocery Service is the comprehensive online grocery store providing services across whole Delhi/NCR.
             Right from fresh fruits and vegetables, rice and daals, spices 
            and seasonings to packaged bread, bakery and dairy products online and other branded foods online - our online
            store have it all. Save time and money, shop at prashant.com - the best online fruit & vegetable store, meat store,
            provisions store - an all-encompassing online groceries store of India.</p>
        </div>
        <!-- facility -->
        <div class="facility col-xl-11 col-lg-12 col-md-12 col-12 container-fluid">
          <div class="row justify-content-between">
             <div class="section col-lg-4 col-md-11 col-10 container">
                  <div class="row justify-content-start">
                      <div class="logo col-lg-2 col-md-1 col-2 "><i class="fa fa-rupee-sign"></i></div>
                      <div class="content col-lg-9 col-md-7 col-10 ">
                          <h6>Great Deals</h6>
                          <p>Cheaper prices than your local supermarket, great discounts and unbeliveable offers.</p>
                      </div>
                  </div>
              </div>
            <div class="section col-lg col-md-11 col-10 container">
                <div class="row">
                    <div class="logo col-lg-2 col-md-1 col-2"><i class="fa fa-shipping-fast"></i></div>
                    <div class="content col-lg-9 col-md-7 col-10">
                        <h6>Quick Delivery</h6>
                        <p>Cheaper prices than your local supermarket, great discounts and unbeliveable offers.</p>
                    </div>
                </div>
             </div>
            <div class="section col-lg col-md-11 col-10 container">
                <div class="row">
                    <div class="logo col-lg-2 col-md-1 col-2"><i class="fa fa-hands-helping"></i></div>
                    <div class="content col-lg-9 col-md-7 col-10">
                        <h6>All-time Support</h6>
                        <p>Cheaper prices than your local supermarket, great discounts and unbeliveable offers.</p>
                    </div>
                </div>
            </div>
            </div>
          </div> 
       <!-- bottom -->
        <div class="bottom col-xl-11 col-lg-12 col-md-12 col-12 container-fluid">
              <div class="row">
                <!-- first-section -->
                <div class="first-section col-lg-4 col-md-8 col-sm-8 col-12 container">
                  <div class="row">
                      <div class="heading container-fluid col-md-12 col-12">
                          <div class="row">
                            <div class="content">
                            <h5>Categories</h5>
                            </div>
                            </div>
                            </div>
                            <div class="col-md-12 col container">
                              <div class="row">
                              <ul class="list-group list-group-flush col">
                                  <li class="list-group-item"><a href="">Fruits & Vegetables</a></li>
                                  <li class="list-group-item"><a href="">Grocery</a></li>
                                  <li class="list-group-item"><a href="">Beverages</a></li>
                                  <li class="list-group-item"><a href="">Personal Care</a></li>
                                  <li class="list-group-item"><a href="">Household Needs</a></li>
                                  <li class="list-group-item"><a href="">Dairy Stuffs</a></li>
                                </ul>
                                <ul class="list-group list-group-flush col">
                                    <li class="list-group-item"><a href="">Pet care</a></li>
                                    <li class="list-group-item"><a href="">Personal Care</a></li>
                                    <li class="list-group-item"><a href="">Baked Products</a></li>
                                    <li class="list-group-item"><a href="">Household Needs</a></li>
                                    <li class="list-group-item"><a href="">Beverages</a></li>
                                    <li class="list-group-item"><a href="">Grocery</a></li>
                                    <li class="list-group-item"><a href="">Dairy Stuffs</a></li>
                                  </ul>
                                  <ul class="list-group list-group-flush col">
                                      <li class="list-group-item"><a href="">Household Needs</a></li>
                                      <li class="list-group-item"><a href="">Pet care</a></li>
                                      <li class="list-group-item"><a href="">Beverages</a></li>
                                      <li class="list-group-item"><a href="">Grocery</a></li>
                                    </ul>
                                    </div>
                            </div>
                  </div>
                 </div>
                <!-- second-section -->
                 <div class="second-section col-lg-4 col-md-4 col-sm-4 col-12 container">
                  <div class="row">
                      <div class="heading container-fluid col-md-12">
                          <div class="row">
                            <div class="content">
                              <h5>Useful Links</h5>
                            </div>
                          </div>
                      </div>
                      <div class="col-md-12  container">
                        <div class="row">
                          <ul class="list-group list-group-flush col">
                              <li class="list-group-item"><a href="">FAQ's</a></li>
                              <li class="list-group-item"><a href="">Return Policy</a></li>
                              <li class="list-group-item"><a href="">Terms & Conditions</a></li>
                              <li class="list-group-item"><a href="">About Us</a></li>
                            </ul>
                            <ul class="list-group list-group-flus col">
                                <li class="list-group-item"><a href="">Blog</a></li>
                                <li class="list-group-item"><a href="">Rate Us</a></li>
                                <li class="list-group-item"><a href="">Coustmer's Review</a></li>
                              </ul>
                            </div>
                      </div>
                      <div class="contact col-md-12 col-12 container">
                          <div class="row">
                              <div class="heading container-fluid col-md-12">
                                  <div class="row">
                                    <div class="content">
                                      <h5>Contact Us</h5>
                                    </div>
                                  </div>
                              </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item"><i class="fa fa-phone-square"></i> +91-9876543210 / 0120-2200303</li>
                                <li class="list-group-item"><i class="fa fa-location-arrow"></i> B-90, Sector-15, Dwarka, Delhi-110075</li>
                              </ul>
                              </div>
                        </div>
                  </div>
                  </div>
              <!-- third-section -->
              <div class="third-section col-lg-3 col-md-12 col-sm-12 col-12 container">
                  <div class="row">
                      <div class="download col-lg-12 col-md col-sm col container">
                        <div class="row">
                          <div class="heading container-fluid col-md-12">
                              <div class="row">
                                <div class="content">
                                  <h5>Download App</h5>
                                </div>
                              </div>
                          </div>
                          <div class="logo col-md-12 container">
                            <a href="#"><i class="fa fa-android"></i></a>
                            <a href="#"><i class="fa fa-apple"></i></a>
                            <a href="#"><i class="fa fa-windows"></i></a>
                          </div>
                        </div>
                      </div>
                      <div class="follow-us col-lg-12 col-md col-sm col container">
                        <div class="row">
                          <div class="heading container-fluid col-md-12">
                              <div class="row">
                                <div class="content">
                                  <h5>Connect with</h5>
                                </div>
                              </div>
                          </div>
                          <div class="logo col-md-12 container">
                              <a href="#"><i class="fa fa-whatsapp"></i></a>
                              <a href="#"><i class="fa fa-facebook"></i></a>
                              <a href="#"><i class="fa fa-google-plus-g"></i></a>
                              <a href="#"><i class="fa fa-twitter"></i></a>
                          </div>
                          </div>
                      </div>
                      <div class="developed-by col-lg-12 col-md col-sm col container">
                        <div class="row">
                          <div class="heading container-fluid col-md-12">
                              <div class="row">
                                <div class="content">
                                  <h5>Developed By</h5>
                                </div>
                              </div>
                          </div>
                          <a href="#"><p>Rajat Pachauri</p></a>
                      </div>
                      </div>
                  </div>
              </div>
              </div>
            </div>
        </div>
        
      </div>
    </div>
  </div>
  </footer>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
    $('.carousel').carousel()
</script>
<script>
  $('#myTab a').on('click', function (e) {
  e.preventDefault()
  $(this).tab('show')
})
</script>
<!-- for top-header in tablet, mobile view -->
<script>
  var alignTopHeader = function(){
          if($(window).width() < 768) {
            $(function(){
                $('#top-header-login').addClass('order-1');
                $('#top-header-cart').addClass('order-2');
                $('#top-header-search').addClass('order-3');
            });
          }
          else{
            $(function(){
                $('#top-header-login').removeClass('order-1');
                $('#top-header-cart').removeClass('order-2');
                $('#top-header-search').removeClass('order-3');
            });
          }
    }
    $(document).ready(alignTopHeader);
  </script>
  <!-- owl carousel -->
  <script src="OwlCarousel2-2.3.4/docs_src/jquery.min.js"></script>
  <script src="OwlCarousel2-2.3.4/dist/owl.carousel.min.js"></script>
  <script>
    $(document).ready(function(){
    $("#owl-one").owlCarousel();
  });
  $('#owl-one').owlCarousel({
      loop:true,
      margin:10,
      nav:true,
      responsiveClass : true,
      responsive:{
          0:{
              items:3,
              stagePadding:50
          },
          470:{
            items:4,
            stagePadding:50
          },
          560:{
            items:6
          },
          768:{
              items:5,
              stagePadding :50
          },
          991:{
              items:7,
              stagePadding:50
          },
          1200:{
              items: 8,
              stagePadding :90
          }
          
      }
  })
  </script>
</html>
