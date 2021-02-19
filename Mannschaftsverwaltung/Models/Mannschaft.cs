using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mannschaftsverwaltung.Models
{
    public class Mannschaft
    {
        #region Eigenschaften
        private int _ID;
        private string __Mannschaftsname;
        private string _Sportart;
        private List<Person> _ListePerson;
        
        #endregion

        #region Accessoren/Modifier
        public int ID { get => _ID; set => _ID = value; }
        public string Sportart { get => _Sportart; set => _Sportart = value; }
        public string Mannschaftsname { get => __Mannschaftsname; set => __Mannschaftsname = value; }
        public List<Person> ListePerson { get => _ListePerson; set => _ListePerson = value; }
        #endregion

        #region Konstruktoren
        public Mannschaft()
        {
            this.Mannschaftsname = "FC Bonn";
            ID = 0;
            Sportart = "";
            ListePerson = new List<Person>();
            
           


        }

        public Mannschaft(int id, string name, string sportart)
        {
            this.ID = id;
            this.Sportart = sportart;
            this.Mannschaftsname = name;
        }
        #endregion

        #region Worker
        #endregion
    }
}