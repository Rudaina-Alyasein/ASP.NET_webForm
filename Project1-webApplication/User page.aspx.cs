using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1_webApplication

{
    public class Book
    {
        public string ID { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
    }

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
                    if (parts.Length == 3)
                    {
                        string id = parts[0];
                        string title = parts[1];
                        string description = parts[2];


                        TableRow row = new TableRow();
                        TableCell idCell = new TableCell { Text = id };

                        TableCell titleCell = new TableCell { Text = title };
                        TableCell descriptionCell = new TableCell { Text = description };
                        row.Cells.Add(idCell);
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

        protected void Profile_Click(object sender, EventArgs e)
        {

            Response.Redirect("profile.aspx");


        }



        protected void SearchBook_Click(object sender, EventArgs e)
        {
            string searchQuery = txt.Text.ToLower(); // الحصول على كلمة البحث وتحويلها إلى أحرف صغيرة
            var filteredBooks = new List<Book>();  // قائمة لتخزين الكتب التي تطابق البحث

            if (File.Exists(filePath))
            {
                string[] lines = File.ReadAllLines(filePath); // قراءة جميع الأسطر من الملف

                foreach (string line in lines)
                {
                    string[] parts = line.Split('|'); // تقسيم السطر إلى أجزاء
                    if (parts.Length == 3) // التأكد من أن السطر يحتوي على 3 أجزاء (ID، العنوان، الوصف)
                    {
                        string id = parts[0];
                        string title = parts[1];
                        string description = parts[2];

                        // التحقق إذا كان العنوان أو الوصف يحتوي على كلمة البحث
                        if (title.ToLower().Contains(searchQuery) || description.ToLower().Contains(searchQuery))
                        {
                            filteredBooks.Add(new Book
                            {
                                ID = id,
                                Title = title,
                                Description = description
                            });
                        }
                    }
                }

                // عرض النتائج في جدول
                bookTableBody1.Controls.Clear(); // مسح البيانات القديمة
                foreach (var book in filteredBooks)
                {
                    TableRow row = new TableRow();

                    TableCell idCell = new TableCell { Text = book.ID };
                    TableCell titleCell = new TableCell { Text = book.Title };
                    TableCell descriptionCell = new TableCell { Text = book.Description };

                    row.Cells.Add(idCell);
                    row.Cells.Add(titleCell);
                    row.Cells.Add(descriptionCell);

                    bookTableBody1.Controls.Add(row);
                }

                // إظهار جدول الكتب
                if (filteredBooks.Count > 0)
                {
                    bookTableContainer1.Style["display"] = "block"; // إظهار الجدول إذا كانت هناك نتائج
                }
                else
                {
                    bookTableContainer1.Style["display"] = "none"; // إخفاء الجدول إذا لم توجد نتائج
                }
            }
        }


    }
}