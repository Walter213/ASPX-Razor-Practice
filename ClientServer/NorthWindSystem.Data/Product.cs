using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// the annotations used within the .Data project will require the
//    System.ComponentModel.DataAnnotation assembly
// this assembly is added via your references
#region Additional Namesspaces
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
#endregion

namespace NorthWindSystem.Data
{
    // use an annotation to link this to the appropiate SQL table
    [Table("Products")]
    public class Product
    {
        // mapping of the SQL table attributes will be to class properties

        private string _QuantityPerUnit;
        
        //use an annotation to identify the primary key
        //  1) identity primary key on your SQL table
        //      [Key] primary key must end in ID or Id

        //  2) a compound primary key on your SQL table
        //      [Key, Column(Order=n)] where is n is the natural number in indicating the physical order of the attribute in the primarykey

        //  3) a user supplied primary keyon your SQL table
        //      [Key, DatabaseGenerated(DatabaseGeneratedOption.None)]

        [Key]

        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public int? SupplierID { get; set; }
        public int? CategoryID { get; set; }
        public string QuantityPerUnit
        {
            get
            {
                return _QuantityPerUnit;
            }
            set
            {
                _QuantityPerUnit = string.IsNullOrEmpty(value.Trim()) ? null : value;
            }
        }
        public decimal? UnitPrice { get; set; }
        public Int16? UnitsInStock { get; set; }
        public Int16? UnitsOnOrder { get; set; }
        public Int16? ReorderLevel { get; set; }
        public bool Discontinued { get; set; }

        // sample of computer field on your sql
        // to annotate this property to be taken as
        // sql computed field use
        // [DatabaseGenerated(DatabaseGenerated.Computed)]
        // public decimal Total { get; set; }

        // sample created a read only property that is NOT
        //   an actual field on your sql table
        // example FirstName LastName attributes are often
        //      combined into a single field for display
        //      purposes: FullName
        // use the NotMapped annotation to handle this


        //[NotMapped]

        //public string FullName
        //{
            //get FirstName + " " + LastName;
        //}
    }
}
