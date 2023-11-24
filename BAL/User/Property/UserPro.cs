using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BAL.User.Property
{
    public class UserPro
    {

        public int Id { get; set; }

        public string Name { get; set; }

        public string EmailId { get; set; }   

        public string Phonenumber { get; set; }

        public string Address { get; set; }


        public string Password { get; set; }

        public string Status { get; set; }

        public string Role
        {
            get
            {
                return "User"; 
            }
            set
            {
                
            }
        }













    }
}
