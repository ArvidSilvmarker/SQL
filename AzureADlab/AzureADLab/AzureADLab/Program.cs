using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Dynamic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AzureADLab
{
    class Program
    {

        private static string _connectionString;

        static void Main(string[] args)
        {
            Console.Write("Lösenord: ");
            string password = Console.ReadLine();

            var emails = GetEmails(password);
            foreach (var email in emails)
            {
                Console.WriteLine(email);
            }
            CreateDBOWnersForAcademy(emails, password);

        }


        public static void CreateDBOWnersForAcademy(List<string> emailsList, string password)
        {
            _connectionString = $"Server=tcp:kaffedbserver.database.windows.net,1433;Initial Catalog=Master;Persist Security Info=False;User ID=arvid.silvmarker@collectorbank.se;Password={password};MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Authentication=\"Active Directory Password\";";



            foreach (string email in emailsList)
            {
                var sql = $@"CREATE USER [{email}] FROM EXTERNAL PROVIDER; 
                             ALTER ROLE dbmanager ADD MEMBER [{email}];";

                using (SqlConnection connection = new SqlConnection(_connectionString))
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    connection.Open();

                    command.ExecuteNonQuery();
                }
            }



        }

        public static List<string> GetEmails(string password)
        {
            _connectionString = $"Server=tcp:kaffedbserver.database.windows.net,1433;Initial Catalog=CollectorAcademy;Persist Security Info=False;User ID=arvid.silvmarker@collectorbank.se;Password={password};MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Authentication=\"Active Directory Password\";";

            var sql = $@"SELECT Email
                        FROM Users";

            var emails = new List<string>();
            using (SqlConnection connection = new SqlConnection(_connectionString))
            using (SqlCommand command = new SqlCommand(sql, connection))
            {
                connection.Open();

                SqlDataReader reader = command.ExecuteReader();


                while (reader.Read())
                {

                    emails.Add(reader.GetString(0));
                }
            }

            return emails;
        }
    }
}
