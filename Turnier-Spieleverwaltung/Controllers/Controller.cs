using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;

namespace Turnier_Spieleverwaltung
{
    public class Controller
    {
        #region Eigenschaften
        private List<Mannschaft> _Liste;
        private List<Person> _Person;
        private List<Turnier> _Turnier;
        private string _EditID;
        private string _user;


        #endregion

        #region Accessoren/Modifier
        public List<Mannschaft> Liste { get => _Liste; set => _Liste = value; }
        public List<Person> Person { get => _Person; set => _Person = value; }
        public string EditID { get => _EditID; set => _EditID = value; }
        public string User { get => _user; set => _user = value; }
        public List<Turnier> Turnier { get => _Turnier; set => _Turnier = value; }

        #endregion

        #region Konstruktoren
        public Controller()
        {
            Liste = new List<Mannschaft>();
            Person = new List<Person>();
            Turnier = new List<Turnier>();
            EditID = "";
            User = "";
        }


        #endregion

        #region
        public void loadMannschaft()
        {
            Liste.Clear();
            HttpClient client = new HttpClient();

            string url = "http://localhost:44362/api/Message";


            Task<HttpResponseMessage> response = client.GetAsync(url);

            try
            {
                response.Wait();
            }
            catch (Exception)
            {
                return;
            }
            HttpResponseMessage result = response.Result;

            Task<string> content = result.Content.ReadAsStringAsync();

            try
            {
                content.Wait();
            }
            catch (Exception)
            {

            }

            string empfang = content.Result;

            Liste = (List<Mannschaft>)JsonConvert.DeserializeObject<List<Mannschaft>>(empfang).ToList();
        }
        public void LoadPerson()
        {
            Person.Clear();
            HttpClient client = new HttpClient();

            string url = "http://localhost:44330/api/Message";


            Task<HttpResponseMessage> response = client.GetAsync(url);

            try
            {
                response.Wait();
            }
            catch (Exception)
            {
                return;
            }

            HttpResponseMessage result = response.Result;

            Task<string> content = result.Content.ReadAsStringAsync();

            try
            {
                content.Wait();
            }
            catch (Exception)
            {

            }

            string empfang = content.Result;

            Person = (List<Person>)JsonConvert.DeserializeObject<List<Person>>(empfang).ToList();
        }

        #endregion
    }
}