using System;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1_webApplication
{
    public partial class AdminPage : System.Web.UI.Page
    {
        private string filePath = HttpContext.Current.Server.MapPath("~/App_Data/Book.txt");
        private string filePath2 = HttpContext.Current.Server.MapPath("~/App_Data/Room.txt");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bookTableContainer.Style["display"] = "none"; 
                roomTableContainer.Style["display"] = "none"; 
            }
        }

        protected void btnAddBook_Click(object sender, EventArgs e)
        {
            string title = bookTitle.Text.Trim();
            string description = bookDescription.Text.Trim();

            if (!string.IsNullOrEmpty(title) && !string.IsNullOrEmpty(description))
            {
                
                if (!File.Exists(filePath))
                {
                    Directory.CreateDirectory(Path.GetDirectoryName(filePath)); 
                    using (File.Create(filePath)) { } 
                }

                
                File.AppendAllText(filePath, $"{title}|{description}{Environment.NewLine}");

                
                bookTitle.Text = string.Empty;
                bookDescription.Text = string.Empty;
            }
        }

        protected void btnShowBooks_Click(object sender, EventArgs e)
        {
            bookTableBody.Controls.Clear();

            if (File.Exists(filePath))
            {
                string[] lines = File.ReadAllLines(filePath);

                foreach (string line in lines)
                {
                    string[] parts = line.Split('|');
                    if (parts.Length == 2)
                    {
                        string title = parts[0];
                        string description = parts[1];


                        TableRow row = new TableRow();
                        TableCell titleCell = new TableCell { Text = title };
                        TableCell descriptionCell = new TableCell { Text = description };

                        row.Cells.Add(titleCell);
                        row.Cells.Add(descriptionCell);

                        bookTableBody.Controls.Add(row);
                    }
                }

                bookTableContainer.Style["display"] = "block";
            }
        }

       

        protected void btnAddRoomSubmit_Click(object sender, EventArgs e)
        {
            string ID = txtRoomID.Text.Trim();
            string RoomName = txtRoomName.Text.Trim();
            string RoomLocation = txtRoomLocation.Text.Trim();
            string selectedCapacity = ddlRoomCapacity.SelectedValue;

            if (!string.IsNullOrEmpty(ID) && !string.IsNullOrEmpty(RoomName) && !string.IsNullOrEmpty(RoomLocation) && !string.IsNullOrEmpty(selectedCapacity))
            {
                
                if (!File.Exists(filePath2))
                {
                    Directory.CreateDirectory(Path.GetDirectoryName(filePath2)); 
                    using (File.Create(filePath2)) { } 
                }

                
                File.AppendAllText(filePath2, $"{ID}|{RoomName}|{RoomLocation}|{selectedCapacity}{Environment.NewLine}");

                
                txtRoomID.Text = string.Empty;
                txtRoomName.Text = string.Empty;
                txtRoomLocation.Text = string.Empty;
                ddlRoomCapacity.SelectedIndex = -1; 
            }
        }

        protected void btnShowRooms_Click(object sender, EventArgs e)
        {
            roomTableBody.Controls.Clear(); 

            if (File.Exists(filePath2))
            {
                string[] lines = File.ReadAllLines(filePath2);

                foreach (string line in lines)
                {
                    string[] parts = line.Split('|');
                    if (parts.Length == 4)
                    {
                        string ID = parts[0];
                        string RoomName = parts[1];
                        string RoomLocation = parts[2];
                        string selectedCapacity = parts[3];


                        TableRow row = new TableRow();
                        TableCell idCell = new TableCell { Text = ID };
                        TableCell nameCell = new TableCell { Text = RoomName };
                        TableCell locationCell = new TableCell { Text = RoomLocation };
                        TableCell capacityCell = new TableCell { Text = selectedCapacity };

                        row.Cells.Add(idCell);
                        row.Cells.Add(nameCell);
                        row.Cells.Add(locationCell);
                        row.Cells.Add(capacityCell);

                        roomTableBody.Controls.Add(row);
                    }
                }

                roomTableContainer.Style["display"] = "block";
            }
        }

       
    }
}
