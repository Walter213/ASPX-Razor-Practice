using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOPsReviewReal
{
    class Die
    {
        // Data Members
        // Usually Private
        private int _Side;
        private string _Color;
        // private int _FaceValue; Dont need because public int Facevalue { get; set; }

        // Properties
        // are responsible to assigning and retriving data to/from their associated data member
        // retriving data from a data member uses the get{}
        // assigning data to a data member uses the set{}
        // properties ened to be exposed to outside users
        // properties will have a return datatype BUT no parameter list

        // Fully Implemented Property
        // Has a defined Data Member that the developer can directly access.
        public int Side
        {
            get
            {
                // Returns data of a specific datatype
                return Side;
            }

            set
            {
                // Assigns a supplied value to the data member
                // the supplied value is located in the key wird: value
                // Optionally include data value validation to ensure an
                //  apporopriate value has been supplied
                if (value >= 6 && value <= 20)
                {
                    // This is a acceptable value to keep
                    _Side = value;
                }
                else
                {
                    // This is an unacceptable value
                    // Issue a user friendly error message
                    throw new Exception("Die cannot be " + value.ToString() + " sided. Die must be between 6 and 20 sided.");
                }              
            }
        }

        // Auto Implemented Property
        // NO Data Member definition
        // The data member is internally created for you
        // The data member datatype is take from your return datatype
        //  specificed on the Property header
        // Auto implemented properties are usually used when there is
        //  no need to internal validation
        // access to a value is managed by an auto implemented property
        //  MUST be done via the property

        public int Facevalue { get; set; }
    }
}
