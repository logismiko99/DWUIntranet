using System;
using System.Collections.Generic;
using System.DirectoryServices.AccountManagement;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace DAL
{
    public class LoginModel
    {
        // User Validate using active directory
        public bool ValidateUser(string domain, string username, string password)
        {
            using (PrincipalContext pc = new PrincipalContext(ContextType.Domain, domain))
            {
                // validate the credentials
                bool isValid = pc.ValidateCredentials(username, password);


                return isValid;
            }


           
        }

    }


    
}
