<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Project1_webApplication.SignUp1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <style>
        .form-control {
            background-color: rgba(255, 255, 255, 0.8);
            border: 1px solid #ccc;
            color: #333;
            border-radius: 8px;
            padding: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .form-control:focus {
            border-color: #0097B2!important;
            box-shadow: 0 0 8px #0097B2;
            outline: none;
        }

        .form-label {
            color: #555;
            font-weight: 500;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section class="p-3 p-md-4 p-xl-5">
            <div class="container">
                <div class="row g-0">
                    <div class="col-12 col-md-6 d-flex justify-content-center align-items-center" style="background-image: url('assets/img/tess4.jpeg'); background-size: cover; background-position: center; height: 80vh;  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);border-radius: 15px; margin-top:20px;">
                    </div>

                    <div class="col-12 col-md-6">
                        <div class="card-body p-4">
                            <h2 class="h3 mb-4 text-center">Welcome to Stationery Spot</h2>
                            <h3 class="h3 mb-4 text-center" style="color: rgb(97, 95, 95);">Create Your Account</h3>

                            <div class="row gy-3 gy-md-4">
                                <div class="col-md-6">
                                    <label for="firstName1" class="form-label">First Name <span class="text-danger">*</span></label>
                                    <asp:TextBox ID="firstName1" runat="server" class="form-control" placeholder="First Name" ></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <label for="lastName1" class="form-label">Last Name <span class="text-danger">*</span></label>
                                    <asp:TextBox ID="lastName1" runat="server" class="form-control" placeholder="Last Name" ></asp:TextBox>
                                </div>

                                <div class="col-12">
                                    <label for="email" class="form-label">Email <span class="text-danger">*</span></label>
                                    <asp:TextBox ID="email" runat="server" class="form-control" placeholder="name@example.com" ></asp:TextBox>
                                </div>

                                <div class="col-12">
                                    <label for="password1" class="form-label">Password <span class="text-danger">*</span></label>
                                    <asp:TextBox ID="password1" runat="server" class="form-control" TextMode="Password" ></asp:TextBox>
                                </div>

                                <div class="col-12">
                                    <label for="repeat_password1" class="form-label">Confirm Password <span class="text-danger">*</span></label>
                                    <asp:TextBox ID="repeat_password1" runat="server" class="form-control" TextMode="Password" ></asp:TextBox>
                                </div>

                                <div class="col-12">
                                    <label for="phone1" class="form-label">Phone <span class="text-danger">*</span></label>
                                    <asp:TextBox ID="phone1" TextMode="Phone" runat="server" class="form-control" ></asp:TextBox>
                                </div>

                                <div class="col-12">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="iAgree" required>
                                        <label class="form-check-label text-secondary" for="iAgree">
                                            I agree to the <a href="#!" class="link-primary text-decoration-none" style="color: #E65100!important;">terms and conditions</a>
                                        </label>
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="d-grid">
                                        <asp:Button ID="SignUp_btn" runat="server" class="btn btn-primary btn-block" Text="Sign Up" OnClick="SignUp_btn_Click" style="background-color: #0097B2!important; border: none; padding:15px auto" />
                                    </div>
                                </div>
                                <div class="col-12">
                                    <asp:Label ID="lblMessage1" runat="server" ForeColor="Red" CssClass="fw-bold"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                   
                </div>
            </div>
            
        </section>

       
    </form>
</body>
</html>
