using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
  
        List<Student> addStudent = new List<Student>();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            Random r = new Random();
            int rInt = r.Next(10, 99);
            addStudent.Add(new Student() { StudentID = rInt, StudentName = TextBox1.Text, EmailID = TextBox2.Text, Dob = TextBox6.Text, Phone = TextBox5.Text, Password = TextBox3.Text, ConfirmPassword = TextBox4.Text });
            //Session.Add("myList", addStudent);
            Session.Add("StudentName", addStudent[0].StudentName);
            Session.Add("Id", addStudent[0].StudentID);
            Session.Add("Email", addStudent[0].EmailID);
            Session.Add("DOB", addStudent[0].Dob);
            Session.Add("Phone", addStudent[0].Phone);
            Server.Transfer("Default4.aspx");
            
        }
}

    public partial class Student
    {
        public int StudentID { get; set; }
        public string StudentName { get; set; }
        public string EmailID { get; set; }
        public string Dob { get; set; }
        public string Phone { get; set; }
        public string Password { get; set; }
        public string ConfirmPassword { get; set; }
    }
    
   
