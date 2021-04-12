using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Turnier_Spieleverwaltung
{
    public class Turnier
    {
        #region Eigenschaften
        private int _id;
        private string _name;
        private List<Mannschaft> _Mannschaftliste;
        private List<Person> _PersonListe;


        #endregion

        #region Accessoren/Modifier
        public int Id { get => _id; set => _id = value; }
        public string Name { get => _name; set => _name = value; }
        public List<Mannschaft> Mannschaftliste { get => _Mannschaftliste; set => _Mannschaftliste = value; }
        public List<Person> PersonListe { get => _PersonListe; set => _PersonListe = value; }

        #endregion

        #region Konstruktoren
        public Turnier ()
        {
            Id = -1;
            Name = "";
            Mannschaftliste = new List<Mannschaft>();
            PersonListe = new List<Person>();
        }
        #endregion

        #region Worker

        #endregion
    }
}