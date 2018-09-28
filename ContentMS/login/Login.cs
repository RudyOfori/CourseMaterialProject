using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography;
using MySql.Data.MySqlClient;
namespace login
{
    public class Login
    {
        public int id { get; set; }
        public string username { get; set; }
        public string pasword { get; set; }
        public string stud_id_num { get; set; }
    }
    public class LoginService
    {
        public bool AddUser(Login user)
        {
            bool retvalue = false;
            MySqlConnection connect = new MySqlConnection("server=localhost; uid=root; pwd=null; database=wapp; Convert Zero Datetime=True; Allow Zero Datetime=True;");
            string pass = Encryptor.MD5Hash(user.pasword);
            string query = string.Format("INSERT INTO login(username, pasword,stud_id_num)VALUES(@username,@pasword)", user.username,user.stud_id_num, pass);


            connect.Open();

            try
            {
                MySqlCommand command = new MySqlCommand(query, connect);

                //command.Parameters.AddWithValue("@id", user.id);
                command.Parameters.AddWithValue("@username", user.username);
                command.Parameters.AddWithValue("@pasword", pass);
                command.Parameters.AddWithValue("@stud_id_num", pass);


                if (command.ExecuteNonQuery() > 0)
                {
                    retvalue = true;
                }

            }
            catch (MySqlException ex)
            {
                string errormessage = ex.Message;
            }
            finally
            {
                connect.Close();
            }
            return retvalue;
        }




        public bool UpdateUser(Login user)
        {
            bool retvalue = false;
            MySqlConnection connect = new MySqlConnection("server=localhost; uid=root; pwd=nopassword; database=test;");
            string query = string.Format("UPDATE login SET username=@username, pasword= @pasword,stud_id_num=@stud_id_num where id=@id", user.username, user.pasword,user.stud_id_num);

            MySqlCommand command = new MySqlCommand(query, connect);
            connect.Open();
            try
            {
                command.Parameters.AddWithValue("@id", user.id);
                command.Parameters.AddWithValue("@username", user.username);
                command.Parameters.AddWithValue("@pasword", user.pasword);
                command.Parameters.AddWithValue("@stud_id_num", user.stud_id_num);


                if (command.ExecuteNonQuery() > 0)
                {
                    retvalue = true;
                }

            }
            catch (MySqlException ex)
            {
                string errormessage = ex.Message;
            }
            finally
            {
                connect.Close();

            }
            return retvalue;
        }




        public bool DeleteUser(int id)
        {
            //Login user = new Login();
            bool retvalue = false;
            MySqlConnection connect = new MySqlConnection("server=localhost; uid=root; pwd=nopassword; database=test;");
            string query = string.Format("DELETE FROM login WHERE id = @id;", id);
            MySqlCommand command = new MySqlCommand(query, connect);
            connect.Open();

            try
            {
                command.Parameters.AddWithValue("@id", id);


                if (command.ExecuteNonQuery() > 0)
                {
                    retvalue = true;
                }

            }
            catch (MySqlException ex)
            {
                string errormessage = ex.Message;
            }
            finally
            {
                connect.Close();

            }
            return retvalue;
        }





        public bool ValidateUser(Login user)
        {

            bool retvalue = false;
            MySqlConnection connection = new MySqlConnection("server=localhost;uid=root;pwd=nopassword;database=test;convert zero datetime=True;Allow Zero DateTime=True;");
            //ServiceObjectSecurity sos = new ServiceObjectSecurity();
            string pass = Encryptor.MD5Hash(user.pasword);

            string query = string.Format("SELECT username FROM login WHERE username='{0}' AND pasword='{1}'AND stud_id_num='{2}';", user.username, pass);
            MySqlCommand command = new MySqlCommand(query, connection);
            MySqlDataReader read;

            // List<Login> userlist = new List<Login>();


            try
            {
                connection.Open();
                read = command.ExecuteReader();
                command.Parameters.AddWithValue("username", user.username);
                command.Parameters.AddWithValue("pasword", pass);
                command.Parameters.AddWithValue("stud_id_num", user.stud_id_num);

                if (read.HasRows)
                {
                    retvalue = true;

                }

            }
            catch (MySqlException ex)
            {
                String errorMessage = ex.Message;

            }
            finally
            {
                connection.Close();
            }
            return retvalue;
        }





        public List<Login> SelectUser()
        {


            MySqlConnection connection = new MySqlConnection("server=localhost;uid=root;pwd=nopassword;database=test;convert zero datetime=True;Allow Zero DateTime=True;");
            string query = string.Format("SELECT id,username,pasword,stud_id_num FROM login;");
            MySqlCommand command = new MySqlCommand(query, connection);
            MySqlDataReader read;


            List<Login> userlist = new List<Login>();


            try
            {
                connection.Open();
                read = command.ExecuteReader();
                if (read.HasRows)
                {
                    while (read.Read())
                    {
                        Login user = new Login();
                        user.id = read.GetInt32(0);
                        user.username = read.GetString(1);
                        user.stud_id_num = read.GetString(2);
                        user.pasword = read.GetString(3);
                        userlist.Add(user);
                    }
                }
            }


            catch (MySqlException ex)
            {
                String errorMessage = ex.Message;

            }
            finally
            {
                connection.Close();
            }
            return userlist; ;
        }





        public static class Encryptor
        {
            public static string MD5Hash(string text)
            {
                MD5 md5 = new MD5CryptoServiceProvider();

                //compute hash from the bytes of text
                md5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(text));

                //get hash result after compute it
                byte[] result = md5.Hash;

                StringBuilder strBuilder = new StringBuilder();
                for (int i = 0; i < result.Length; i++)
                {
                    //change it into 2 hexadecimal digits
                    //for each byte
                    strBuilder.Append(result[i].ToString("x2"));
                }

                return strBuilder.ToString();
            }
        }





    }
}
