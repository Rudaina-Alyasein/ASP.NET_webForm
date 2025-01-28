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
            </div>
        </div>

       
        <!-- Table to Display Books -->
        <div id="bookTableContainer1" runat="server" class="mt-4" style="display: none;">
            <h4>Books List</h4>
            <table  class="table table-bordered">
                <thead>
                    <tr>
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
