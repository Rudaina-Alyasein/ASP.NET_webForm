<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User page.aspx.cs" Inherits="Project1_webApplication.User_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>user page</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
        <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
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
          <li class="nav-item">
              <asp:LinkButton ID="ProfileLink" runat="server" CssClass="nav-link" OnClick="Profile_Click">
                  <asp:Image ID="ProfileImage" runat="server" CssClass="rounded-circle" ImageUrl="assets/img/book.jpg" Width="35px" Height="35px" AlternateText="Profile" />
              </asp:LinkButton>
          </li>




          <li class="nav-item" >
              <asp:Button ID="signInBtn1" runat="server" Text="Log out"
                  CssClass="btn btn-outline-primary nav-link"
                  Style="font-size: 18px; color: black;"
                 
                   />
          </li>

         

      </ul>
    </div>
  </div>
</nav>

    <div class="container-fluid mt-5">
        <!-- Cart Section -->
        <h2>Book Cart</h2>
        <div class="card mb-4" style="max-width: 100%;">
            <img src="assets/img/book.jpg" class="card-img-top" alt="Book image" style="width:200px; height:200px; object-fit:cover;">
            <div class="card-body">
                <h5 class="card-title">Set of books</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <div class="d-flex mb-3">
                    <asp:Button ID="btnShowBooks1" runat="server" CssClass="btn btn-success ms-3" Text="Show Books" OnClick="btnShowBooks1_Click" />
                </div>
                <div class="mb-3">
                    <asp:TextBox ID="txt" runat="server" class="form-control" placeholder="Search book..." />
                </div>
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success ms-3" Text="Search" OnClick="SearchBook_Click" />

               


            </div>
        </div>

       
        <!-- Table to Display Books -->
        <div id="bookTableContainer1" runat="server" class="mt-4" style="display: none;">
            <h4>Books List</h4>
            <table  class="table table-bordered">
                <thead>
                    <tr>
                     <th scope="col">id</th>

                        <th scope="col">Title</th>
                        <th scope="col">Description</th>
                    </tr>
                </thead>
                <tbody id="bookTableBody1" runat="server">
                    <!-- Book entries will appear here -->
                </tbody>
            </table>
        </div>

        <!-- Meeting Room Section -->
        <h2>Meeting Room</h2>
        <div class="card mb-4" style="max-width: 100%;">
            <img src="assets/img/room.jpg" class="card-img-top" alt="Meeting Room Image" style="width:200px; height:200px; object-fit:cover;">
            <div class="card-body">
                <h5 class="card-title">Meeting Room</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <div class="d-flex mb-3">
                    <asp:Button ID="btnShowRooms1" runat="server" CssClass="btn btn-success ms-3" Text="Show Rooms" OnClick="btnShowRooms1_Click" />
                </div>
            </div>
        </div>

      
        <!-- Table to Display Rooms -->
        <div id="roomTableContainer1" runat="server" class="mt-4" style="display: none;">
            <h4>Room List</h4>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Room Name</th>
                        <th scope="col">Room Location</th>
                        <th scope="col">Room Capacity</th>
                    </tr>
                </thead>
                <tbody id="roomTableBody1" runat="server">
                    <!-- Room entries will appear here -->
                </tbody>
            </table>
        </div>
    </div>
</form>
</body>
</html>
