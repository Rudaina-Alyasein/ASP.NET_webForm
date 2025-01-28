using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1_webApplication
{
    public partial class User_page : System.Web.UI.Page
    {
        private string filePath = HttpContext.Current.Server.MapPath("~/App_Data/Book.txt");
        private string filePath2 = HttpContext.Current.Server.MapPath("~/App_Data/Room.txt");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bookTableContainer1.Style["display"] = "none";
                roomTableContainer1.Style["display"] = "none";
            }
        }

        protected void btnShowBooks1_Click(object sender, EventArgs e)
        {
            bookTableBody1.Controls.Clear();

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

                        bookTableBody1.Controls.Add(row);
                    }
                }

                bookTableContainer1.Style["display"] = "block";
            }
        }

      
        protected void btnShowRooms1_Click(object sender, EventArgs e)
        {
            roomTableBody1.Controls.Clear();

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

                        roomTableBody1.Controls.Add(row);
                    }
                }

                roomTableContainer1.Style["display"] = "block";
            }
        }
      
    }
}