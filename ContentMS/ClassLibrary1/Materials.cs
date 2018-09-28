using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary1
{
    public class Materials
    {
        public int id { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        public DateTime studnum { get; set; }
    }
    public class ContactService
    {
        public bool AddSomeone(Materials contact)
        {
            bool retvalue = false;
            MySqlConnection connect = new MySqlConnection("server=localhost; uid=root; pwd=" "; database=wapp;");
            string query = string.Format("INSERT INTO contactinfo (firstName,surname,dateOfBirth,gender,mobileNumber,telephoneNumber,postalAddress,physicalAddress,hometown,familysize,occupation,religion)VALUES(@firstName,@surname,@dateOfBirth,@gender,@mobileNumber,@telephoneNumber,@postalAddress,@physicalAddress,@hometown,@familysize,@occupation,@religion)",
 contact.firstName, contact.surname, contact.dateOfBirth.ToString("yyyy-MM-dd HH:mm:ss"), contact.gender, contact.mobileNumber, contact.telephoneNumber, contact.postalAddress, contact.physicalAddress, contact.hometown, contact.familysize, contact.occupation, contact.religion);

        }
