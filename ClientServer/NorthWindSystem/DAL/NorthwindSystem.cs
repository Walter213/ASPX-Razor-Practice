using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// this class need to have access to ADO.Net EntityFramework
// the Nuget packege EntityFramework has already been added to this project
// this project also needs the assembly System.Data.Entity
// this project will need using clauses that point to 
//   a) the System.Data.Entity namespace
//   b) your data project namespace

#region Additional Namespaces
using System.Data.Entity;
using NorthWindSystem.Data;
#endregion

namespace NorthWindSystem.DAL
{
    class NorthwindSystem
    {
        // the class access internal restrict calls to this class
        //   to methods within this project
        // this context class needs to inherit DbContext from EntityFramework
        // make sure this is "internal"

        internal class NorthWindContext:DbContext
        {
            // setup your class default constructor to supply your
            //  connection string name to the Dbcontext inherit class
            public NorthWindContext() : base("NWDB")
            {

            }

            // create a EntityFramework DbSet<T> for each mapped sql table
            // <T> is your class in the .DataProject
            public DbSet<Product> Products { get; set; }
        }
    }
}
