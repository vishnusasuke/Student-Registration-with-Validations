using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string StudentName = (string)(Session["StudentName"]);        
        int Id = (Int32)(Session["Id"]);
        string Email = (string)(Session["Email"]);
        string DOB = (string)(Session["DOB"]);
        string Phone = (string)(Session["Phone"]);




        Label2.Text = "Welcome " + StudentName ;
        Label3.Text = "ID: " + Id;
        Label4.Text = "Email: " + Email;
        Label5.Text = "Dob " + DOB;
        Label6.Text = "Phone " + Phone;
    }
}