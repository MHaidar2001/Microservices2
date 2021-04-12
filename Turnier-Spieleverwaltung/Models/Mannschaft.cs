using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Turnier_Spieleverwaltung
{
    public class Mannschaft
    {
        #region Eigenschaften
        private int _ID;
        private string __Mannschaftsname;
        private string _Sportart;

        #endregion

        #region Accessoren/Modifier
        public int ID { get => _ID; set => _ID = value; }
        public string Sportart { get => _Sportart; set => _Sportart = value; }
        public string Mannschaftsname { get => __Mannschaftsname; set => __Mannschaftsname = value; }
        #endregion

        #region Konstruktoren
        public Mannschaft()
        {
            this.Mannschaftsname = "";
            ID = 0;
            Sportart = "";




        }

        public Mannschaft(int id, string name, string sportart, List<Person> per)
        {
            this.ID = id;
            this.Sportart = sportart;
            this.Mannschaftsname = name;
        }


        #endregion
    }
}