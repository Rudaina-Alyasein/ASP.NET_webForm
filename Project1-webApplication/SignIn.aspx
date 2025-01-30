<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Project1_webApplication.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Sign in</title>
  <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

  <link rel="stylesheet"href="assets\style\nav.css">
<style>
 
.card {
 
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
}
.form-control {
  background-color: rgba(255, 255, 255, 0.9);
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 12px;
  box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease;
}

.form-control:focus {
  border-color: #0097B2;
  box-shadow: 0 0 6px #0097B2;
}
.btn-primary {
  background: linear-gradient(135deg, #4e73df, #224abe);
  border: none;
  border-radius: 25px;
  padding: 10px 30px;
  transition: background 0.3s ease;
}

.btn-primary:hover {
  background: linear-gradient(135deg, #224abe, #4e73df);
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
}
img {
  border-radius: 15px;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s ease;
}

img:hover {
  transform: scale(1.05);
}
#form2Example3c:focus {
  box-shadow: 0 0 5px #0097B2 !important; 
  border: 1px solid #0097B2 !important;
}


</style>
</head>
<body>

    <form id="form1" runat="server">
         <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11" style="margin-top: 40px;">
        <div class="card text-black" style="border-radius: 15px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15); background-color: #f1f5f6;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
                <h2 class="text-center h1 fw-bold mb-3 mx-1 mx-md-4 mt-4" style="color: #0097B2;">Sign in</h2>
                <p style="color: gray;">Please insert your email and password </p>
                <form class="mx-1 mx-md-4">
                  
                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-floating flex-fill mb-0">
                      <asp:Textbox  type="Email" ID="Email3" runat="server" class="form-control" placeholder="Your Email" />
                      <label for="Email3">Your Email</label>
                    </div>
                  </div>
                  
                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-floating flex-fill mb-0">
                        <asp:Textbox type="password" ID="password3"  runat="server" class="form-control" placeholder="Password"></asp:Textbox>
                      <label for="passsword">Password</label>
                    </div>
                  </div>
                  
                 
                  
                  <div class="form-check d-flex justify-content-center mb-5">
                    <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c" />
                    <label class="form-check-label" for="form2Example3">
                      I agree all statements in <a href="#!" style="color: #E65100; text-decoration: none;">Terms of service</a>
                    </label>
                  </div>
                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                      <asp:Button ID="Login_btn" runat="server" class="btn  btn-lg" style="background-color:#0097B2!important; color: white; padding:10px 40px" Text="Log in"  OnClick="Login_btn_Click"/>

                  </div>
                    <asp:Label ID="lblLoginMessage2" runat="server" ForeColor="Red"></asp:Label>
                </form>
              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
                <img src="assets\img\ffff.jpeg"
                  class="img-fluid" alt="Sample image" style="border-radius: 15px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
    </form>
</body>
</html>
