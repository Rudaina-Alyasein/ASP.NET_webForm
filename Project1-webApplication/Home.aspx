<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Project1_webApplication.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" >
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="assets/style/home.css"/>



</head>
<body>
    <form id="form1" runat="server">
      <%-- navbar--%>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
      <!-- Logo on the left -->
      <a class="navbar-brand" href="#">Logo</a>

      <!-- Toggle button for mobile view -->
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <!-- Navbar content with items centered in larger screens -->
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <!-- Left and center links -->
        <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Products
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Stationery</a></li>
              <li><a class="dropdown-item" href="#">Books</a></li>
              <li><a class="dropdown-item" href="#">School Supplies</a></li>
              <li><a class="dropdown-item" href="#">Office Supplies</a></li>
              <li><a class="dropdown-item" href="#">Art Supplies</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#About">About us</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Contact us</a>
          </li>
        </ul>

        <!-- Right side (Cart, Notifications, Profile, Sign In) -->
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
          <!-- Notifications Icon -->
          <li class="nav-item"style="display: none;">
            <a href="#" class="nav-link">
              <i class="fa fa-bell" style="font-size: 24px; margin-top: 7px;"></i>
              <span class="badge bg-danger" style="background-color: #E65100!important;">3</span> 
            </a>
          </li>
          <!-- Cart Icon -->
          <li class="nav-item"style="display: none;">
            <a href="#" class="nav-link">
              <i class="fa fa-shopping-cart" style="font-size: 24px; margin-top: 7px;"></i>
              <span class="badge bg-success" style="background-color: #E65100!important;">2</span> 
            </a>
          </li>
          <!-- Favorite Icon -->
          <li class="nav-item"style="display: none;">
            <a href="#" class="nav-link">
              <i class="fa fa-heart" style="font-size: 24px; margin-top: 7px;"></i>
            </a>
          </li>
          <!-- Profile Image -->
          <li class="nav-item" style="display: none;">
            <a href="#" class="nav-link">
              <img src="assets/img/avatar.jpg" alt="Profile" class="rounded-circle" style="width: 35px; height: 35px;">
            </a>
          </li>

            <li class="nav-item" >
                <asp:Button ID="signInBtn1" runat="server" Text="Sign In"
                    CssClass="btn btn-outline-primary nav-link"
                    Style="font-size: 18px; color: black;"
                    OnClick="signInBtnContainer_Click"
                     />
            </li>

            <li class="nav-item" id="signUpBtnContainer">
                <asp:Button
                    ID="signUpButton"
                    runat="server"
                    Text="Sign Up"
                    CssClass="btn btn-outline-primary nav-link"
                    OnClick="signUpBtnContainer_Click" />
            </li>

        </ul>
      </div>
    </div>
  </nav>
  <%--  hero--%>
         <div id="carouselExample" class="carousel slide">
        <div class="carousel-inner">
            
    
            <!-- السلايد الثاني -->
            <div class="carousel-item">
                <img style="height: 655px;" src="assets/img/contact.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption">
                    <h1>Welcome to stationery website</h1>
                    <p>Discover Your Nearest Library and Shop Now</p>
                    <p>We connect you to the nearest libraries to purchase books, stationery, and other services available.</p>
                    <div class="d-flex flex-column flex-md-row justify-content-center align-items-center" style="gap: 10px;">
                        <img src="assets\img\map.png" alt="Map showing nearest libraries" style="width: 100%; max-width: 300px; height: auto;">
                        <a href="#" class="nav-link">
                            <button class="btn btn-outline-primary" id="DetectBtn" style="transition: all 0.3s ease; width: 180px !important; height: 50px;">
                                Detect My Location
                            </button>
                        </a>
                    </div>
                </div>
            </div>
            <div class="carousel-item active">
                <img style="height: 655px;" src="assets/img/contact.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption">
                    <h1>Welcome to stationery website</h1>
                    <p>Discover Your Nearest Library and Shop Now</p>
                    <p>We connect you to the nearest libraries to purchase books, stationery, and other services available.</p>
                    <div class="d-flex flex-column flex-md-row justify-content-center align-items-center" style="gap: 10px;">
                        <img src="assets\img\map.png" alt="Map showing nearest libraries" style="width: 100%; max-width: 300px; height: auto;">
                        <a href="#" class="nav-link">
                            <button class="btn btn-outline-primary" id="DetectBtn" style="transition: all 0.3s ease; width: 180px !important; height: 50px;">
                                Detect My Location
                            </button>
                        </a>
                    </div>
                </div>
            </div>
    
    
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    </form>
</body>
</html>
