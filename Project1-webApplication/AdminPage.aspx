<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Project1_webApplication.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Cart</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />

    <div class="container-fluid mt-5">
        <!-- Cart Section -->
        <h2>Book Cart</h2>
        <div class="card mb-4" style="max-width: 100%;">
            <img src="assets/img/book.jpg"assets/img/book.jpg" class="card-img-top" alt="Book image" style="width:200px; height:200px; object-fit:cover;>
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <div class="d-flex mb-3">
                    <asp:Button ID="btnAddBook" runat="server" CssClass="btn btn-primary" Text="Add Book" OnClientClick="showAddBookModal(); return false;" />
                    <asp:Button ID="btnShowBooks" runat="server" CssClass="btn btn-success ms-3" Text="Show Books" OnClick="btnShowBooks_Click" />
                </div>
            </div>
        </div>

        <!-- Modal for Adding Book -->
        <div class="modal fade" id="addBookModal" tabindex="-1" aria-labelledby="addBookModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addBookModalLabel">Add New Book</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="bookTitle" class="form-label">Book Title</label>
                            <asp:TextBox ID="bookTitle" runat="server" CssClass="form-control" />
                        </div>
                        <div class="mb-3">
                            <label for="bookDescription" class="form-label">Book Description</label>
                            <asp:TextBox ID="bookDescription" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" />
                        </div>
                        <asp:Button ID="btnSubmitBook" runat="server" Text="Add Book" CssClass="btn btn-primary" OnClick="btnAddBook_Click" />
                    </div>
                </div>
            </div>
        </div>

        <!-- Table to Display Books -->
        <div id="bookTableContainer" runat="server" class="mt-4" style="display: none;">
            <h4>Books List</h4>
            <table  class="table table-bordered">
                <thead>
                    <tr>
                        <th scope="col">Title</th>
                        <th scope="col">Description</th>
                    </tr>
                </thead>
                <tbody id="bookTableBody" runat="server">
                    <!-- Book entries will appear here -->
                </tbody>
            </table>
        </div>

        <!-- Meeting Room Section -->
        <h2>Meeting Room</h2>
        <div class="card mb-4" style="max-width: 100%;">
            <img src="assets/img/room.jpg" class="card-img-top" alt="Meeting Room Image"style="width:200px; height:200px; object-fit:cover;>
            <div class="card-body">
                <h5 class="card-title">Meeting Room</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <div class="d-flex mb-3">
                    <asp:Button ID="btnAddRoom" runat="server" CssClass="btn btn-primary" Text="Add Room" OnClientClick="showAddRoomModal(); return false;" />
                    <asp:Button ID="btnShowRooms" runat="server" CssClass="btn btn-success ms-3" Text="Show Rooms" OnClick="btnShowRooms_Click" />
                </div>
            </div>
        </div>

        <!-- Modal for Adding Room-->
        <div class="modal fade" id="addRoomModal" tabindex="-1" aria-labelledby="addRoomModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addRoomModalLabel">Add New Room</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="roomID" class="form-label">Room ID</label>
                            <asp:TextBox ID="txtRoomID" runat="server" CssClass="form-control" />
                        </div>
                        <div class="mb-3">
                            <label for="roomName" class="form-label">Room Name</label>
                            <asp:TextBox ID="txtRoomName" runat="server" CssClass="form-control" />
                        </div>
                        <div class="mb-3">
                            <label for="roomLocation" class="form-label">Room Location</label>
                            <asp:TextBox ID="txtRoomLocation" runat="server" CssClass="form-control" />
                        </div>
                        <div class="mb-3">
                            <label for="roomCapacity" class="form-label">Room Capacity</label>
                            <asp:DropDownList ID="ddlRoomCapacity" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Select Capacity" Value="" />
                                <asp:ListItem Text="10" Value="BigLarge" />
                                <asp:ListItem Text="20" Value="Large" />
                                <asp:ListItem Text="30" Value="Medium" />
                                <asp:ListItem Text="50" Value="Small" />
                            </asp:DropDownList>
                        </div>
                        <asp:Button ID="btnAddRoomSubmit" runat="server" Text="Add Room" CssClass="btn btn-primary" OnClick="btnAddRoomSubmit_Click" />
                    </div>
                </div>
            </div>
        </div>

        <!-- Table to Display Rooms -->
        <div id="roomTableContainer" runat="server" class="mt-4" style="display: none;">
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
                <tbody id="roomTableBody" runat="server">
                    <!-- Room entries will appear here -->
                </tbody>
            </table>
        </div>
    </div>
</form>


    <script>
        // Show the modal using Bootstrap 5 API
        function showAddBookModal() {
            var myModal = new bootstrap.Modal(document.getElementById('addBookModal'));
            myModal.show();
        }
        function showAddRoomModal() {
            var myModal = new bootstrap.Modal(document.getElementById('addRoomModal'));
            myModal.show();
        }
    </script>
</body>
</html>
