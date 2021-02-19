using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mannschaftsverwaltung.Models
{
    public class Person
    {
        #region Eigenschaften
        private int _id;
        private string _name;
        private string _Sportart;
        private string _einsatzbereich;


        #endregion

        #region Accessoren/Modifier
        public int Id { get => _id; set => _id = value; }
        public string Name { get => _name; set => _name = value; }
        public string Sportart { get => _Sportart; set => _Sportart = value; }
        public string Einsatzbereich { get => _einsatzbereich; set => _einsatzbereich = value; }

        #endregion

        #region Konstruktoren
        public Person()
        {
            Id = 0;
            Name = "";
            Einsatzbereich = "";

            Sportart = "";

        }
        public Person(int id, string name,  string einstaz)
        {
            Id = id;
            Name = name;
            Einsatzbereich = einstaz;


        }
        #endregion

        #region Worker

        #endregion

    }
}