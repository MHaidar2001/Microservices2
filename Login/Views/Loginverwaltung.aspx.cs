using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login.Views
{
    public partial class Loginverwaltung : System.Web.UI.Page
    {
        private controller _verwalter;

        public controller Verwalter { get => _verwalter; set => _verwalter = value; }

        public Loginverwaltung()
        {
            Verwalter = Global.Verwalter;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            tabl.Visible = false;
            tbl();
            
        }

        public void tbl()
        {
            Verwalter.LoadfromAPi();
            Button bt = new Button();

            TableRow row = new TableRow();
            TableCell cell = new TableCell();
            int wert = 1;

            for (int index = 0; index < Verwalter.Liste.Count; index++)
            {
                row = new TableRow();
                cell = new TableCell();
                cell.Text = Verwalter.Liste[index].Id.ToString();
                row.Cells.Add(cell);

                cell = new TableCell();
                cell.Text = Verwalter.Liste[index].Username;
                row.Cells.Add(cell);
                
                cell = new TableCell();
                cell.Text = Verwalter.Liste[index].Rolle;
                row.Cells.Add(cell);
                Table1.Rows.Add(row);
            }

            TableCell c1 = new TableCell();

            for (int i = 0; i < Table1.Rows.Count - 1; i++)
            {
                c1 = new TableCell();

                bt = new Button();
                int zahl = i + 1;

                bt.ID = zahl.ToString();
               // bt.Click += bearbeitenDB;

                c1.Controls.Add(bt);
                row.Cells.Add(c1);
                bt.Text = "bearbeiten";
                bt.CssClass = "btn btn-success";
                this.Table1.Rows[i + 1].Controls.Add(c1);
            }

            for (int i = 0; i < Table1.Rows.Count - 1; i++)
            {
                c1 = new TableCell();
                bt = new Button();
                c1.Controls.Add(bt);
                bt.Text = "Löschen";
             //   bt.Click += loeschenDb;
                bt.CssClass = "btn btn-danger";

                int zahl = 0;
                zahl = Table1.Rows.Count + i + 1;
                bt.ID = zahl.ToString();



                this.Table1.Rows[i + 1].Controls.Add(c1);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            tabl.Visible = true;
            Button1.Visible = false;
            abstand.Visible = false;
        }

        protected void abbtn1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Loginverwaltung.aspx");
        }

        protected void speicherbtn_Click(object sender, EventArgs e)
        {
            for(int index=0;index<DropDownList1.Items.Count;index++)
            {
                if(DropDownList1.Items[index].Selected)
                {
                    Verwalter.adduser(Usertxt.Text, Passtxt.Text,DropDownList1.Items[index].Text);
                }
            }
            Response.Redirect("Loginverwaltung.aspx");

        }
    }
}