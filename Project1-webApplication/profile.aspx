<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Project1_webApplication.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
           <link rel="stylesheet" type="text/css" href="assets/style/profile.css"/>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="/styles/dark.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">

</head>
<body>
         
    <form id="form1" runat="server">
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
              <a id="profileLink" runat="server" class="nav-link">
                  <img src="assets/img/book.jpg" alt="Profile" class="rounded-circle" style="width: 35px; height: 35px;">
              </a>
          </li>

        
          <li class="nav-item" id="signOutBtnContainer" >
              <asp:Button
                  ID="signOutButton"
                  runat="server"
                  Text="Sign Out"
                  CssClass="btn btn-outline-primary nav-link"
                  OnClick="signOutButton_Click" />
          </li>
            

      </ul>
    </div>
  </div>
</nav>
      <div class="profile-container">
    <div class="profile-header">
        <h1 class="profile-name" id="userProfileName"><i class="bi bi-person-circle"></i> Your Profile</h1>
    </div>

    <div class="profile-line"></div>

    <div class="flex-container">
        <div class="left">
            <div class="profile-img-container">
                <img id="profile-img" src="assets/img/book.jpg" alt="Profile Image" class="profile-img">
            </div>
            <input type="file" id="imageUpload" accept="image/*" style="display: none;" onchange="previewImage(event)">
            <button class="change-image" onclick="document.getElementById('imageUpload').click();">
                <i class="bi bi-camera"></i> Change Image
            </button>
        </div>

        <div class="right">
            <div class="general-info-section">
                <h2>General Info</h2>
            </div>

            <div class="name-section">
                <div class="name-fields">
                    <label for="first-name">First Name:</label>
                    <asp:textbox type="text" id="firstName" runat="server" name="first-name" placeholder="Enter your first name" disabled  ></asp:textbox>
                    <button type=button class="edit-name-btn" onclick="enableEdit()">
                        <i class="bi bi-pencil"></i>
                    </button>
                </div>
                <div class="name-fields">
                    <label for="last-name">Last Name:</label>
                    <asp:textbox type="text" id="lastName" runat="server" name="last-name" placeholder="Enter your last name" disabled></asp:textbox>

                    <button class="edit-name-btn" onclick="enableEdit()">
                        <i class="bi bi-pencil"></i>
                    </button>
                </div>
            </div>

            <div style="margin:20px auto;">
                <label for="email">Email:</label>
                <div class="email-container">
                    
                   <asp:textbox type="text" id="email" runat="server" name="email" placeholder="example@example.com" disabled></asp:textbox>

                    <button class="edit-name-btn" onclick="enableEdit()">
                        <i class="bi bi-pencil"></i>
                    </button>
                </div>
            </div>

            <div class="change-password">
                <h2><i class="bi bi-lock"></i> Change Password</h2>
                <div class="password-fields">
                    <label for="current-password">Current Password:</label>
<asp:textbox type="password" id="currentPassword1" runat="server" name="new_password" placeholder="New password" ></asp:textbox>

                </div>
                <div class="password-fields">
                    <label for="new-password">New Password:</label>
                   <asp:textbox type="password"  id="new_password" runat="server" name="new_password" placeholder="New password" ></asp:textbox>

                </div>
                <div class="password-fields">
                    <label for="confirm-password">Confirm New Password:</label>
                    
                    <asp:textbox type="password" id="confirm_password" runat="server" name="confirm_password" placeholder="Confirm password" ></asp:textbox>

                </div>
<%--                <button class="save-btn" onclick="saveChanges()">Save Changes</button>--%>
                <asp:Button id="SaveChanges" runat="server" class="save-btn" Text="Save Changes" onclick="SaveChanges_Click" />
                <div id="message-container" class="mt-3"></div>
            </div>
        </div>
    </div>
<asp:Label ID="lblMessage" runat="server" CssClass="form-text"></asp:Label>
    <div class="profile-line"></div>
</div>

    </form>
  <script>
      function enableEdit() {
          event.preventDefault(); 
          var firstName = document.getElementById('<%= firstName.ClientID %>');
        var lastName = document.getElementById('<%= lastName.ClientID %>');
        var email = document.getElementById('<%= email.ClientID %>');

          firstName.removeAttribute('disabled');
          lastName.removeAttribute('disabled');
          email.removeAttribute('disabled');
      }
  </script>


</body>
</html>
