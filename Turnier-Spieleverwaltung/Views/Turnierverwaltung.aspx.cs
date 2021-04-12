using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Turnier_Spieleverwaltung.Views
{
    public partial class Turnierverwaltung : System.Web.UI.Page
    {
        #region Eigenschaften
        private Controller _verwalter;

        #endregion

        #region Accessoren/Modifier
        public Controller Verwalter { get => _verwalter; set => _verwalter = value; }

        #endregion

        #region Konstruktoren
        public Turnierverwaltung()
        {
            Verwalter = Global.Verwalter;
        }
        #endregion

        #region Worker
        protected void Page_Load(object sender, EventArgs e)
        {
            Verwalter.loadMannschaft();
            Verwalter.LoadPerson();
            Turnierauswaehlen.Visible = false;
            personenTu.Visible = false;
            MannschaftsTu.Visible = false;

        }
        #endregion

        protected void btnabmelden_Click(object sender, EventArgs e)
        {
            btnabmelden.Visible = false;
            abstand.Visible = false;
            Label1.Text = "Turnier auswählen";
            Turnierauswaehlen.Visible = true;
        }

        protected void abrechenbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Turnierverwaltung.aspx");
        }

        protected void weietrbtn_Click(object sender, EventArgs e)
        {
            Turnierauswaehlen.Visible = false;

            if (RadioButtonList1.Items[0].Selected)
            {
                Label1.Text = "Turnier erstellen";
                personenTu.Visible = true;

                for (int index=0;index<Verwalter.Person.Count;index++)
                {
                    CheckBoxList1.Items.Add(Verwalter.Person[index].Id.ToString()+", "+ Verwalter.Person[index].Name+", " + Verwalter.Person[index].Sportart+", " + Verwalter.Person[index].Einsatzbereich);
                }
            }
            else
            {
                Label1.Text = "Turnier erstellen";
                MannschaftsTu.Visible = true;

                for (int index = 0; index < Verwalter.Liste.Count; index++)
                {
                    Mannschaftscheck.Items.Add(Verwalter.Liste[index].ID.ToString()+", "+ Verwalter.Liste[index].Mannschaftsname+", "+ Verwalter.Liste[index].Sportart);
                }
            }
            
        }
    }
}