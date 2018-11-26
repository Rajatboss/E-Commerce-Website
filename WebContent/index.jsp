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
    <!-- <link rel="stylesheet" href="jPinning.css"> -->
    <!-- <link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/> -->
    <!-- owl carousel -->
    <link rel="stylesheet" href="assets/stylesheet/font-awesome.min.css">
    <link rel="stylesheet" href="OwlCarousel2-2.3.4/dist/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="OwlCarousel2-2.3.4/dist/assets/owl.theme.default.min.css">
    <title>e-commerce</title>
</head>

<body>
    <!-- top-header -->
    <div class="top-header container-fluid col-md-12">
        <div class="row justify-content-around">
            <div class="col-md-2 col-sm-8 col-8 ">
                <div class="row justify-content-center">
                    <div class="top-header-logo col-sm-12 col-12">
                        <div class="row">
                            <a href="index.jsp">
                                <div>
                                    <p>Rajat's</p>
                                </div>
                                <span>Project </span></a>
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
                session.setAttribute("page", "index.jsp");
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
                      <img src="assets/images/category_1.jpg" alt="">
                    </div>
                    <div class="col-md-12 category-desc">
                      <p>Fruits & Vegetables</p>
                    </div>
                    </div>
                  </a></div>
                  <div class="slider-item col-sm"><a href="">
                      <div class="row justify-content-around">
                          <div class="col-md-9 category-img">
                            <img src="assets/images/category_2.jpg" alt="">
                          </div>
                          <div class="col-md-12 category-desc">
                            <p>Grocery & Staples</p>
                          </div>
                          </div>
                  </a></div>
                  <div class="slider-item col-sm"><a href="">
                      <div class="row justify-content-around">
                          <div class="col-md-9 category-img">
                            <img src="assets/images/category_3.jpg" alt="">
                          </div>
                          <div class="col-md-12 category-desc">
                            <p>Beverages</p>
                          </div>
                          </div>
                  </a></div>
                  <div class="slider-item col"><a href="">
                      <div class="row justify-content-around">
                          <div class="col-md-9 category-img">
                            <img src="assets/images/category_4.jpg" alt="">
                          </div>
                          <div class="col-md-12 category-desc">
                            <p>Home & Kitchen</p>
                          </div>
                          </div>
                  </a></div>
                  <div class="slider-item col"><a href="">
                      <div class="row justify-content-around">
                          <div class="col-md-9 category-img">
                            <img src="assets/images/category_5.jpg" alt="">
                          </div>
                          <div class="col-md-12 category-desc">
                            <p>Furnishing & Home Needs</p>
                          </div>
                          </div>
                  </a></div>
                  <div class="slider-item col"><a href="">
                      <div class="row justify-content-around">
                          <div class="col-md-9 category-img">
                            <img src="assets/images/category_6.jpg" alt="">
                          </div>
                          <div class="col-md-12 category-desc">
                            <p> Household Needs</p>
                          </div>
                          </div>
                  </a></div>
                  <div class="slider-item col"><a href="">
                      <div class="row justify-content-around">
                          <div class="col-md-9 category-img">
                            <img src="assets/images/category_7.jpg" alt="">
                          </div>
                          <div class="col-md-12 category-desc">
                            <p>Personal Care</p>
                          </div>
                          </div>
                  </a></div>
                  <div class="slider-item col"><a href="">
                      <div class="row justify-content-around">
                          <div class="col-md-9 category-img">
                            <img src="assets/images/category_8.jpg" alt="">
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
                              <img src="assets/images/category_9.jpg" alt="">
                            </div>
                            <div class="col-md-12 category-desc">
                              <p>Noodles, Sauces & Instant Food</p>
                            </div>
                            </div>
                      </a></div>
                      <div class="slider-item col"><a href="">
                          <div class="row justify-content-around">
                              <div class="col-md-9 category-img">
                                <img src="assets/images/category_10.jpg" alt="">
                              </div>
                              <div class="col-md-12 category-desc">
                                <p> Baby & Kids</p>
                              </div>
                              </div>
                      </a></div>
                      <div class="slider-item col"><a href="">
                          <div class="row justify-content-around">
                              <div class="col-md-9 category-img">
                                <img src="assets/images/category_11.jpg" alt="">
                              </div>
                              <div class="col-md-12 category-desc">
                                <p>Biscuits, Snackes & Chocolates</p>
                              </div>
                              </div>
                      </a></div>
                      <div class="slider-item col"><a href="">
                          <div class="row justify-content-around">
                              <div class="col-md-9 category-img">
                                <img src="assets/images/category_12.jpg" alt="">
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
                            <div class="slider-item col-sm">
                                <a href="categories.jsp">
                                    <div class="row justify-content-around">
                                        <div class="col-md-9 category-img">
                                            <img src="assets/images/category_1.jpg" alt="">
                                        </div>
                                        <div class="col-md-12 category-desc">
                                            <p>Fruits & Vegetables</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="owl-item">
                            <div class="slider-item col-sm">
                                <a href="categories.jsp">
                                    <div class="row justify-content-around">
                                        <div class="col-md-9 category-img">
                                            <img src="assets/images/category_2.jpg" alt="">
                                        </div>
                                        <div class="col-md-12 category-desc">
                                            <p>Grocery & Staples</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="owl-item">
                            <div class="slider-item col-sm">
                                <a href="categories.jsp">
                                    <div class="row justify-content-around">
                                        <div class="col-md-9 category-img">
                                            <img src="assets/images/category_3.jpg" alt="">
                                        </div>
                                        <div class="col-md-12 category-desc">
                                            <p>Beverages</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="owl-item">
                            <div class="slider-item col">
                                <a href="categories.jsp">
                                    <div class="row justify-content-around">
                                        <div class="col-md-9 category-img">
                                            <img src="assets/images/category_4.jpg" alt="">
                                        </div>
                                        <div class="col-md-12 category-desc">
                                            <p>Home & Kitchen</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="owl-item">
                            <div class="slider-item col">
                                <a href="categories.jsp">
                                    <div class="row justify-content-around">
                                        <div class="col-md-9 category-img">
                                            <img src="assets/images/category_5.jpg" alt="">
                                        </div>
                                        <div class="col-md-12 category-desc">
                                            <p>Furnishing & Home Needs</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="owl-item">
                            <div class="slider-item col">
                                <a href="categories.jsp">
                                    <div class="row justify-content-around">
                                        <div class="col-md-9 category-img">
                                            <img src="assets/images/category_6.jpg" alt="">
                                        </div>
                                        <div class="col-md-12 category-desc">
                                            <p> Household Needs</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="owl-item">
                            <div class="slider-item col">
                                <a href="categories.jsp">
                                    <div class="row justify-content-around">
                                        <div class="col-md-9 category-img">
                                            <img src="assets/images/category_7.jpg" alt="">
                                        </div>
                                        <div class="col-md-12 category-desc">
                                            <p>Personal Care</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="owl-item">
                            <div class="slider-item col">
                                <a href="categories.jsp">
                                    <div class="row justify-content-around">
                                        <div class="col-md-9 category-img">
                                            <img src="assets/images/category_8.jpg" alt="">
                                        </div>
                                        <div class="col-md-12 category-desc">
                                            <p> Breakfast & Dairy</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="owl-item">
                            <div class="slider-item col">
                                <a href="categories.jsp">
                                    <div class="row justify-content-around">
                                        <div class="col-md-9 category-img">
                                            <img src="assets/images/category_9.jpg" alt="">
                                        </div>
                                        <div class="col-md-12 category-desc">
                                            <p>Noodles, Sauces & Instant Food</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="owl-item">
                            <div class="slider-item col">
                                <a href="categories.jsp">
                                    <div class="row justify-content-around">
                                        <div class="col-md-9 category-img">
                                            <img src="assets/images/category_10.jpg" alt="">
                                        </div>
                                        <div class="col-md-12 category-desc">
                                            <p> Baby & Kids</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="owl-item">
                            <div class="slider-item col">
                                <a href="categories.jsp">
                                    <div class="row justify-content-around">
                                        <div class="col-md-9 category-img">
                                            <img src="assets/images/category_11.jpg" alt="">
                                        </div>
                                        <div class="col-md-12 category-desc">
                                            <p>Biscuits, Snackes & Chocolates</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="owl-item">
                            <div class="slider-item col">
                                <a href="categories.jsp">
                                    <div class="row justify-content-around">
                                        <div class="col-md-9 category-img">
                                            <img src="assets/images/category_12.jpg" alt="">
                                        </div>
                                        <div class="col-md-12 category-desc">
                                            <p> Meats, frozen & Seafood</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
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
    <div class="main-content container col-md-12 col-12 ">
        <div class="row">
            <!-- first-block -> carousel -->
            <div class="first-block container-fluid col-lg-11 col-md-12 col-sm-12 col-12">
                <div class="carousel container-fluid col-md-12 col-sm-12 col-12 justify-content-center ">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <!-- <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
            </ol> -->
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="assets/images/carousel_1.jpg" alt="carousel_1">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="assets/images/carousel_2.jpg" alt="carousel_2">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="assets/images/carousel_3.jpg" alt="carousel_3">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="assets/images/carousel_4.jpg" alt="carousel_4">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
                    </div>
                </div>
            </div>
            <div class="heading container-fluid col-lg-11 col-md-11 col-sm-11 col-11">
                <div class="row justify-content-between">
                    <div class="content">
                        <h4>Top Savers Today</h4>
                    </div>
                    <div class="view-all">
                        <span><a href="categories.jsp">View All <i class="fa fa-caret-right"></i></a></span>
                    </div>
                </div>
            </div>
            <!-- second-block -> slider/owl-carousel -->
            <div class="second-block container-fluid col-xl-11 col-lg-12 col-md-12">
                <!-- desktop view -->
                <div class="slider">
                    <div id="carouselExampleControls" class="carousel slide " data-ride="carousel">
                        <div class="carousel-inner col-md-11 container-fluid">
                            <div class="carousel-item active">
                                <div class="row justify-content-around">
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/7182_01-Moong-Dal-Chilka.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Moong Daal Chilka</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span> 1kg</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 80</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 90</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/gel-2.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Men's Hair Gel</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>200 gm</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 269</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 390</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/product_1.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>All Out Ultra Mosquito Refil</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>6 &#x2715 45ml</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 269</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 390</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/colin-glass-household-cleaner-v-500-ml.png" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Colin glass household cleaner</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>100 ml</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 130</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 150</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/fortune-besan.gif" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Fortune Besan</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>5 kg</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 350</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 390</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="row justify-content-around">
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/0004386-kanodia-kachi-ghani-mustard-oil-5ltr.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Konodia kachi ghani musturd oil</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>5 ml</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 350</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 390</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/saffola.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Saffola</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>5 litre</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 400</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 490</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/Aashirvaad%20Select%20Sharbati%20Atta%2010%20Kg%20Pouch.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Aashirwad Select Atta</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>10 kg</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 269</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 390</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/Rajdhani-White-Whole-Wheat-f.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Rajdhani White Wheat</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>10 kg</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 280</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 350</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/himalaya.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p></p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>50 gm</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 60</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 80</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="row justify-content-around">
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/del%20monte.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Del Monte</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>1 litre</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 90</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 115</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/figaro.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Figaro Olive Oil</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>100 ml</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 125</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 135</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/masoor-sabut-500x500.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Masoor Sabut</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>1 kg</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 80</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 110</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/gel-1.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Men's Hair Oil</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>45 gm</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 110</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 120</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/garnier.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Garnier Man's FaceWash</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>45 gm</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 100</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 130</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
                        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
                    </div>
                </div>
            </div>
            <div class="heading container-fluid col-lg-11 col-11">
                <div class="row justify-content-between">
                    <div class="content">
                        <h4>Household Needs - Offers</h4>
                    </div>
                    <div class="view-all">
                        <span><a href="">View All <i class="fa fa-caret-right"></i></a></span>
                    </div>
                </div>
            </div>
            <!-- third-block -> slider/owl-carousel -->
            <div class="third-block container-fluid col-xl-11 col-lg-12 col-md-12">
                <!-- desktop view -->
                <div class="slider">
                    <div id="carouselExampleControls_1" class="carousel slide " data-ride="carousel">
                        <div class="carousel-inner col-md-11 container-fluid">
                            <div class="carousel-item active">
                                <div class="row justify-content-around">
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/tide.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Tide Washer</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>6 &#x2715 45ml</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 120</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 150</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/mortein-power-gard-all-insect-killer-spray-425ml.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Mortein power gard fluid</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>100 ml</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 115</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 240</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/product_1.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>All Out Ultra Mosquito Refil</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>6 &#x2715 45ml</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 269</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 390</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/fena.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Fena Bar</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>4 &#x2715 100gm</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 38</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 40</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/ghari.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Ghari Surf</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span> 1 kg</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 50</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 55</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="row justify-content-around">
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/colin-glass-household-cleaner-v-500-ml.png" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>colin glass cleaner</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>150 ml</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 100</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 130</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/colgate.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Colgate toothpaste</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>6 &#x2715 100gm</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 200</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 240</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/ghari%20bar.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Ghari bar</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>6 &#x2715 100gm</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 55</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 60</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/product_1.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>All Out Ultra Mosquito Refil</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>6 &#x2715 45ml</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 269</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 390</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/vim-dishwash-bar.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Vim Bar</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>4 &#x2715 100gm</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 30</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 40</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="row justify-content-around">
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/vim-drop-lemon-liquid-dishwash-v-225-ml.png" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Vim drop lemon lquid dishwash</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>6 &#x2715 45ml</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 269</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 390</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/surf-excel-quickwash.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Surf Excel quickwash</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>1 kg</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 180</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 195</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/fena.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Fena surf</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>1 kg</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 50</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 60</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/product_1.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>All Out Ultra Mosquito Refil</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>6 &#x2715 45ml</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 269</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 390</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="slider-item col">
                                        <a href="product.jsp">
                                            <div class="product col-md-12 container">
                                                <div class="row">
                                                    <span class="off badge badge-primary">15% OFF</span>
                                                    <div class="product-image col-md-11 container-fluid"><img src="assets/images/dabar%20red.jpg" alt=""></div>
                                                    <div class="product-desc col-md-11 container-fluid">
                                                        <p>Dabar Paste</p>
                                                    </div>
                                                    <div class="product-qty col-md-11 container-fluid">
                                                        <span>6 &#x2715 100gm</span>
                                                    </div>
                                                    <div class="product-cart col-md-11 container-fluid">
                                                        <div class="row justify-content-around">
                                                            <div class="product-price col-md-4 container">
                                                                <span><i class="fa fa-rupee-sign"></i> 150</span>
                                                                <span><del><i class="fa fa-rupee-sign"></i> 180</del></span>
                                                            </div>
                                                            <div class="product-to-cart col-md-8 container">
                                                                <button type="button" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleControls_1" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
                        <a class="carousel-control-next" href="#carouselExampleControls_1" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
                    </div>
                </div>
            </div>
            <div class="heading container-fluid col-lg-11 col-11">
                <div class="row justify-content-between">
                    <div class="content">
                        <h4>Categories</h4>
                    </div>
                </div>
            </div>
            <!-- category-block -->
            <div class="category container-fluid col-lg-11 col-md-10 col-12">
                <div class="row justify-content-around">
                    <div class="accordion col-xl-5 col-lg-6 col-md-12 col-12" id="accordion">
                        <div class="card">
                            <div class="card-header " id="headingOne">
                                <div class="row">
                                    <div class="category-image col-lg-4 col-md-4 col-4">
                                        <img src="assets/images/category_sec_1.jpg" alt="">
                                    </div>
                                    <span class="category-name col-lg-6 col-md-6 col-6"><a href="categories.jsp">Fruits & Vegetables
            </a></span>
                                    <div class="category-expand col-md-2 col-2">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                <i class="fa fa-angle-down"></i>
            </button>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                            <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                                <div class="card-body">
                                    <div class="row justify-content-around">
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="">Fruit & Vegetables</a></li>
                                            <li class="list-group-item"><a href="">Fruits</a></li>
                                            <li class="list-group-item"><a href="">Vegetables</a></li>
                                            <li class="list-group-item"><a href="">Cut Fresh & Herbs</a></li>
                                            <li class="list-group-item"><a href="">Fresg Snacks</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header" id="headingTwo">
                                <div class="row">
                                    <div class="category-image col-lg-4 col-md-4 col-4">
                                        <img src="assets/images/category_sec_2.jpg" alt="">
                                    </div>
                                    <span class="category-name col-lg-6 col-md-6 col-6"><a href="categories.jsp">Grocery & Staples</a></span>
                                    <div class="category-expand col-md-2 col-2">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                <i class="fa fa-angle-down"></i>
            </button>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                <div class="card-body">
                                    <div class="row justify-content-around">
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="categories.jsp">Pulses</a></li>
                                            <li class="list-group-item"><a href="categories.jsp">Atta & Other Flours</a></li>
                                            <li class="list-group-item"><a href="categories.jsp">Rice & Other Grains</a></li>
                                            <li class="list-group-item"><a href="categories.jsp">Dry Fruits & Nuts</a></li>
                                            <li class="list-group-item"><a href="categories.jsp">Edible Oils</a></li>
                                        </ul>
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="categories.jsp">Ghee & Vanaspati</a></li>
                                            <li class="list-group-item"><a href="categories.jsp">Spices</a></li>
                                            <li class="list-group-item"><a href="categories.jsp">Salt and Sugar</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingThree">
                                <div class="row">
                                    <div class="category-image col-lg-4 col-md-4 col-4">
                                        <img src="assets/images/category_sec_3.jpg" alt="">
                                    </div>
                                    <span class="category-name col-lg-6 col-md-6 col-6"><a href="categories.jsp">Beverages</a></span>
                                    <div class="category-expand col-md-2 col-2">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseTwo">
                  <i class="fa fa-angle-down"></i>
              </button>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                <div class="card-body">
                                    <div class="row justify-content-around">
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="categories.jsp">Beverages and Best Offers</a></li>
                                            <li class="list-group-item"><a href="categories.jsp">Soft Drinks</a></li>
                                            <li class="list-group-item"><a href="categories.jsp">Juices & Concentrations</a></li>
                                            <li class="list-group-item"><a href="categories.jsp">Tea and Coffee</a></li>
                                            <li class="list-group-item"><a href="categories.jsp">Health & Energy Drinks</a></li>
                                        </ul>
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="categories.jsp">Water & Soda</a></li>
                                            <li class="list-group-item"><a href="categories.jsp">Milk Drinks</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingFour">
                                <div class="row">
                                    <div class="category-image col-lg-4 col-md-4 col-4">
                                        <img src="assets/images/category_sec_4.jpg" alt="">
                                    </div>
                                    <span class="category-name col-lg-6 col-md-6 col-6"><a href="categories.jsp">Home & Kitchen</a></span>
                                    <div class="category-expand col-md-2 col-2">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseTwo">
                    <i class="fa fa-angle-down"></i>
                </button>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                            <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                                <div class="card-body">
                                    <div class="row justify-content-around">
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="">Cras justo odio</a></li>
                                            <li class="list-group-item"><a href="">Dapibus ac facilisis in</a></li>
                                            <li class="list-group-item"><a href="">Morbi leo risus</a></li>
                                            <li class="list-group-item"><a href="">Porta ac consectetur ac</a></li>
                                            <li class="list-group-item"><a href="">Vestibulum at eros</a></li>
                                        </ul>
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="">Cras justo odio</a></li>
                                            <li class="list-group-item"><a href="">Dapibus ac facilisis in</a></li>
                                            <li class="list-group-item"><a href="">Morbi leo risus</a></li>
                                            <li class="list-group-item"><a href="">Porta ac consectetur ac</a></li>
                                            <li class="list-group-item"><a href="">Vestibulum at eros</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header" id="headingFive">
                                <div class="row">
                                    <div class="category-imag col-4 col-md-4 col-4">
                                        <img src="assets/images/category_sec_5.jpg" alt="">
                                    </div>
                                    <span class="category-name col-lg-6 col-md-6 col-6"><a href="categories.jsp">Furnishing & Home Needs</a></span>
                                    <div class="category-expand col-md-2 col-2">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseTwo">
                    <i class="fa fa-angle-down"></i>
                </button>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                            <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                                <div class="card-body">
                                    <div class="row justify-content-around">
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="">Cras justo odio</a></li>
                                            <li class="list-group-item"><a href="">Dapibus ac facilisis in</a></li>
                                            <li class="list-group-item"><a href="">Morbi leo risus</a></li>
                                            <li class="list-group-item"><a href="">Porta ac consectetur ac</a></li>
                                            <li class="list-group-item"><a href="">Vestibulum at eros</a></li>
                                        </ul>
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="">Cras justo odio</a></li>
                                            <li class="list-group-item"><a href="">Dapibus ac facilisis in</a></li>
                                            <li class="list-group-item"><a href="">Morbi leo risus</a></li>
                                            <li class="list-group-item"><a href="">Porta ac consectetur ac</a></li>
                                            <li class="list-group-item"><a href="">Vestibulum at eros</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header" id="headingSix">
                                <div class="row">
                                    <div class="category-image col-lg-4 col-md-4 col-4">
                                        <img src="assets/images/category_sec_6.jpg" alt="">
                                    </div>
                                    <span class="category-name col-lg-6 col-md-6 col-6"><a href="categories.jsp">Household Needs</a></span>
                                    <div class="category-expand col-md-2 col-2">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseTwo">
                      <i class="fa fa-angle-down"></i>
                  </button>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                            <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                                <div class="card-body">
                                    <div class="row justify-content-around">
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="">Cras justo odio</a></li>
                                            <li class="list-group-item"><a href="">Dapibus ac facilisis in</a></li>
                                            <li class="list-group-item"><a href="">Morbi leo risus</a></li>
                                            <li class="list-group-item"><a href="">Porta ac consectetur ac</a></li>
                                            <li class="list-group-item"><a href="">Vestibulum at eros</a></li>
                                        </ul>
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="">Cras justo odio</a></li>
                                            <li class="list-group-item"><a href="">Dapibus ac facilisis in</a></li>
                                            <li class="list-group-item"><a href="">Morbi leo risus</a></li>
                                            <li class="list-group-item"><a href="">Porta ac consectetur ac</a></li>
                                            <li class="list-group-item"><a href="">Vestibulum at eros</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion col-xl-5 col-lg-6 col-md-12" id="accordion2">
                        <div class="card">
                            <div class="card-header" id="headingSeven">
                                <div class="row">
                                    <div class="category-image col-lg-4 col-md-4 col-4">
                                        <img src="assets/images/category_sec_7.jpg" alt="">
                                    </div>
                                    <span class="category-name col-lg-6 col-md-6 col-6"><a href="categories.jsp">Personal Care
                </a></span>
                                    <div class="category-expand col-md-2 col-2">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="true" aria-controls="collapseSeven">
                    <i class="fa fa-angle-down"></i>
                </button>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                            <div id="collapseSeven" class="collapse " aria-labelledby="headingSeven" data-parent="#accordion2">
                                <div class="card-body">
                                    <div class="row justify-content-around">
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="">Cras justo odio</a></li>
                                            <li class="list-group-item"><a href="">Dapibus ac facilisis in</a></li>
                                            <li class="list-group-item"><a href="">Morbi leo risus</a></li>
                                            <li class="list-group-item"><a href="">Porta ac consectetur ac</a></li>
                                            <li class="list-group-item"><a href="">Vestibulum at eros</a></li>
                                        </ul>
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="">Cras justo odio</a></li>
                                            <li class="list-group-item"><a href="">Dapibus ac facilisis in</a></li>
                                            <li class="list-group-item"><a href="">Morbi leo risus</a></li>
                                            <li class="list-group-item"><a href="">Porta ac consectetur ac</a></li>
                                            <li class="list-group-item"><a href="">Vestibulum at eros</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header" id="headingEight">
                                <div class="row">
                                    <div class="category-image col-lg-4 col-md-4 col-4">
                                        <img src="assets/images/category_sec_8.jpg" alt="">
                                    </div>
                                    <span class="category-name co-lg-6 col-md-6 col-6"><a href="categories.jsp">Household Needs</a></span>
                                    <div class="category-expand col-md-2 col-2">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
                    <i class="fa fa-angle-down"></i>
                </button>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                            <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordion2">
                                <div class="card-body">
                                    <div class="row justify-content-around">
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="">Cras justo odio</a></li>
                                            <li class="list-group-item"><a href="">Dapibus ac facilisis in</a></li>
                                            <li class="list-group-item"><a href="">Morbi leo risus</a></li>
                                            <li class="list-group-item"><a href="">Porta ac consectetur ac</a></li>
                                            <li class="list-group-item"><a href="">Vestibulum at eros</a></li>
                                        </ul>
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="">Cras justo odio</a></li>
                                            <li class="list-group-item"><a href="">Dapibus ac facilisis in</a></li>
                                            <li class="list-group-item"><a href="">Morbi leo risus</a></li>
                                            <li class="list-group-item"><a href="">Porta ac consectetur ac</a></li>
                                            <li class="list-group-item"><a href="">Vestibulum at eros</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingNine">
                                <div class="row">
                                    <div class="category-image col-lg-4 col-md-4 col-4">
                                        <img src="assets/images/category_sec_9.jpg" alt="">
                                    </div>
                                    <span class="category-name col-lg-6 col-md-6 col-6"><a href="categories.jsp">Biscuit, Snacks & Chocolates</a></span>
                                    <div class="category-expand col-md-2 col-2">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseNine" aria-expanded="false" aria-controls="collapseNine">
                      <i class="fa fa-angle-down"></i>
                  </button>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                            <div id="collapseNine" class="collapse" aria-labelledby="headingNine" data-parent="#accordion2">
                                <div class="card-body">
                                    <div class="row justify-content-around">
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="">Cras justo odio</a></li>
                                            <li class="list-group-item"><a href="">Dapibus ac facilisis in</a></li>
                                            <li class="list-group-item"><a href="">Morbi leo risus</a></li>
                                            <li class="list-group-item"><a href="">Porta ac consectetur ac</a></li>
                                            <li class="list-group-item"><a href="">Vestibulum at eros</a></li>
                                        </ul>
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="">Cras justo odio</a></li>
                                            <li class="list-group-item"><a href="">Dapibus ac facilisis in</a></li>
                                            <li class="list-group-item"><a href="">Morbi leo risus</a></li>
                                            <li class="list-group-item"><a href="">Porta ac consectetur ac</a></li>
                                            <li class="list-group-item"><a href="">Vestibulum at eros</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingTen">
                                <div class="row">
                                    <div class="category-image col-lg-4 col-md-4 col-4">
                                        <img src="assets/images/category_sec_10.jpg" alt="">
                                    </div>
                                    <span class="category-name col-lg-6 col-md-6 col-6"><a href="categories.jsp">Noodles, Sauces & Instant Food</a></span>
                                    <div class="category-expand col-md-2 col-2">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTen" aria-expanded="false" aria-controls="collapseTen">
                        <i class="fa fa-angle-down"></i>
                    </button>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                            <div id="collapseTen" class="collapse" aria-labelledby="headingTen" data-parent="#accordion2">
                                <div class="card-body">
                                    <div class="row justify-content-around">
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="">Cras justo odio</a></li>
                                            <li class="list-group-item"><a href="">Dapibus ac facilisis in</a></li>
                                            <li class="list-group-item"><a href="">Morbi leo risus</a></li>
                                            <li class="list-group-item"><a href="">Porta ac consectetur ac</a></li>
                                            <li class="list-group-item"><a href="">Vestibulum at eros</a></li>
                                        </ul>
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="">Cras justo odio</a></li>
                                            <li class="list-group-item"><a href="">Dapibus ac facilisis in</a></li>
                                            <li class="list-group-item"><a href="">Morbi leo risus</a></li>
                                            <li class="list-group-item"><a href="">Porta ac consectetur ac</a></li>
                                            <li class="list-group-item"><a href="">Vestibulum at eros</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header" id="headingEleven">
                                <div class="row">
                                    <div class="category-imag col-lg-4 col-md-4 col-4 ">
                                        <img src="assets/images/category_sec_11.jpg" alt="">
                                    </div>
                                    <span class="category-name col-lg-6 col-md-6 col-6"><a href="categories.jsp">Baby Care</a></span>
                                    <div class="category-expand col-md-2 col-2">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseEleven" aria-expanded="false" aria-controls="collapseEleven">
                        <i class="fa fa-angle-down"></i>
                    </button>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                            <div id="collapseEleven" class="collapse" aria-labelledby="headingEleven" data-parent="#accordion2">
                                <div class="card-body">
                                    <div class="row justify-content-around">
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="">Cras justo odio</a></li>
                                            <li class="list-group-item"><a href="">Dapibus ac facilisis in</a></li>
                                            <li class="list-group-item"><a href="">Morbi leo risus</a></li>
                                            <li class="list-group-item"><a href="">Porta ac consectetur ac</a></li>
                                            <li class="list-group-item"><a href="">Vestibulum at eros</a></li>
                                        </ul>
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="">Cras justo odio</a></li>
                                            <li class="list-group-item"><a href="">Dapibus ac facilisis in</a></li>
                                            <li class="list-group-item"><a href="">Morbi leo risus</a></li>
                                            <li class="list-group-item"><a href="">Porta ac consectetur ac</a></li>
                                            <li class="list-group-item"><a href="">Vestibulum at eros</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header" id="headingTwelve">
                                <div class="row">
                                    <div class="category-image col-lg-4 col-md-4 col-4">
                                        <img src="assets/images/category_sec_12.jpg" alt="">
                                    </div>
                                    <span class="category-name col-lg-6 col-md-6 col-6"><a href="categories.jsp">Pet Care</a></span>
                                    <div class="category-expand col-md-2 col-2">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed col-2" type="button" data-toggle="collapse" data-target="#collapseTwelve" aria-expanded="false" aria-controls="collapseTwelve">
                          <i class="fa fa-angle-down"></i>
                      </button>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                            <div id="collapseTwelve" class="collapse" aria-labelledby="headingTwelve" data-parent="#accordion2">
                                <div class="card-body">
                                    <div class="row justify-content-around">
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="#">Cras justo odio</a></li>
                                            <li class="list-group-item"><a href="#">Dapibus ac facilisis in</a></li>
                                            <li class="list-group-item"><a href="#">Morbi leo risus</a></li>
                                            <li class="list-group-item"><a href="#">Porta ac consectetur ac</a></li>
                                            <li class="list-group-item"><a href="#">Vestibulum at eros</a></li>
                                        </ul>
                                        <ul class="list-group list-group-flush col-md-5 col-5">
                                            <li class="list-group-item"><a href="">Cras justo odio</a></li>
                                            <li class="list-group-item"><a href="">Dapibus ac facilisis in</a></li>
                                            <li class="list-group-item"><a href="">Morbi leo risus</a></li>
                                            <li class="list-group-item"><a href="">Porta ac consectetur ac</a></li>
                                            <li class="list-group-item"><a href="">Vestibulum at eros</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="heading container-fluid col-md-10">
                <div class="row justify-content-around">
                    <div class="content">
                        <h4>Top Brands</h4>
                    </div>
                </div>
            </div>
            <!-- brand-block -->
            <div class="brand-block container-fluid col-xl-8 col-lg-10 col-md-11 col-sm-11 col-10">
                <div class="row justify-content-center">
                    <div class="brand col-sm col-5"><a href="#"><img src="assets/images/brand_1.jpg" alt="brand_1"></a></div>
                    <div class="brand col-sm col-5"><a href="#"><img src="assets/images/brand_2.jpg" alt="brand_2"></a></div>
                    <div class="brand col-sm col-5"><a href="#"><img src="assets/images/brand_3.jpg" alt="brand_3"></a></div>
                    <div class="brand col-sm col-5"><a href="#"><img src="assets/images/brand_4.jpg" alt="brand_4"></a></div>
                    <div class="brand col-sm col-5 "><a href="#"><img src="assets/images/brand_5.jpg" alt="brand_5"></a></div>
                </div>
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
                        <p>Prashant's Grocery Service is the comprehensive online grocery store providing services across whole Delhi/NCR. Right from fresh fruits and vegetables, rice and daals, spices and seasonings to packaged bread, bakery and dairy products online and other branded foods online - our online store have it all. Save time and money, shop at prashant.com - the best online fruit & vegetable store, meat store, provisions store - an all-encompassing online groceries store of India.</p>
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
                            <!-- <div class="section col-md-3 col-5 container">
                <div class="row">
                    <div class="logo col-md-2 container"><i class="fa fa-clock"></i></div>
                    <div class="content col-md-9 container">
                        <h6>Saves Time</h6>
                          <p>Cheaper prices than your local supermarket, great discounts and unbeliveable offers.</p>
                    </div>
                </div>
              </div> -->

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
                                            <a href="#">
                                                <p>Rajat Pachauri</p>
                                                <a href="adminv.jsp" >
                										<div class="content">
									                        <i class="fa fa-user"></i>
									                        <span>Admin</span>
									                    </div>
								                </a>
                                            </a>
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
    $('#myTab a').on('click', function(e) {
        e.preventDefault()
        $(this).tab('show')
    })
</script>
<!-- for top-header in tablet, mobile view -->
<script>
    var alignTopHeader = function() {
        if ($(window).width() < 768) {
            $(function() {
                $('#top-header-login').addClass('order-1');
                $('#top-header-cart').addClass('order-2');
                $('#top-header-search').addClass('order-3');
            });
        } else {
            $(function() {
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
    $(document).ready(function() {
        $("#owl-one").owlCarousel();
    });
    $('#owl-one').owlCarousel({
        loop: true,
        margin: 10,
        nav: true,
        responsiveClass: true,
        responsive: {
            0: {
                items: 3,
                stagePadding: 50
            },
            470: {
                items: 4,
                stagePadding: 50
            },
            560: {
                items: 6
            },
            768: {
                items: 5,
                stagePadding: 50
            },
            991: {
                items: 7,
                stagePadding: 50
            },
            1200: {
                items: 8,
                stagePadding: 90
            }

        }
    })
</script>
<script>
    $(document).ready(function() {
        $("#owl-two").owlCarousel();
    });
    $('#owl-two').owlCarousel({
        loop: true,
        margin: 0,
        nav: true,
        responsiveClass: true,
        responsive: {
            0: {
                items: 2,
                stagePadding: 15
            },
            375: {
                items: 2,
                stagePadding: 20
            },
            410: {
                items: 2,
                stagePadding: 40
            },
            470: {
                items: 3,
                stagePadding: 3
            },
            560: {
                items: 3,
                stagePadding: 20
            },
            768: {
                items: 4,
                stagePadding: 10
            },
            991: {
                items: 4,
                stagePadding: 50
            }
        }
    })
</script>
<script>
    $(document).ready(function() {
        $("#owl-three").owlCarousel();
    });
    $('#owl-three').owlCarousel({
        loop: true,
        margin: 0,
        nav: true,
        responsiveClass: true,
        responsive: {
            0: {
                items: 2,
                stagePadding: 15
            },
            375: {
                items: 2,
                stagePadding: 20
            },
            410: {
                items: 2,
                stagePadding: 40
            },
            470: {
                items: 3,
                stagePadding: 3
            },
            560: {
                items: 3,
                stagePadding: 20
            },
            768: {
                items: 4,
                stagePadding: 10
            },
            991: {
                items: 4,
                stagePadding: 50
            }
        }
    })
</script>
</html>
