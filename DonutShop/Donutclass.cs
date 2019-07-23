using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DonutShop
{
    public class Donutclass
    {
        //this class interacts with user registration, registered users and orders
        DonutsShopEntities2 Donutsdata = new DonutsShopEntities2();
        Regtable REgtab = new Regtable();
        main Mainobj= new main();
        UserTable Reghus = new UserTable(); 
        public void Reguser(string Mobile)
        {
            REgtab.Mobile  = Mobile;


            Donutsdata.Regtables.Add(REgtab);
            Donutsdata.SaveChanges();



        }
        public void useername( string Username,string Password)
        {
            //the variable passes username and password
            Reghus.Username = Username;
            Reghus.Password = Password;

            Donutsdata.UserTables.Add(Reghus);
            Donutsdata.SaveChanges();

        }
        public void ADD(string Name, string order, string email) // to add order
        {
            Mainobj.Name = Name;
            Mainobj.oder  = order;
            Mainobj.email  = email;
           


            Donutsdata.mains.Add(Mainobj);
            Donutsdata.SaveChanges();




        }
        public void Delete(int ID)
        {
            //to delete the entries from table
            using (DonutsShopEntities2 context = new DonutsShopEntities2())
            {


                main  obj = context.mains .First(x => x.ID == ID);
                context.mains.Remove(obj);
                context.SaveChanges();


            }

        }
        public void Update(int ID, string Name, string order, string email)
        { 
            //to update the once entered values in the table, it will update in both database and the page
            using (var db = new DonutsShopEntities2())
            {
                var Mainobj = db.mains.SingleOrDefault(b => b.ID == ID);

                if (Mainobj != null)
                {

                    Mainobj.Name = Name;
                    Mainobj.oder = order;
                    Mainobj.email = email;

                    db.SaveChanges();

                }



            }
        }
    }
}