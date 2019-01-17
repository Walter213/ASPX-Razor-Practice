using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOPsReviewReal
{
    class Turn
    {
        public int Player1 { get; set; }
        public int Player2 { get; set; }

        // optionally, for practice only add constructors

        public Turn()
        {
            Player1 = 0;
            Player2 = 0;
        }

        public Turn(int PlayerNumberOne, int PlayerNumberTwo)
        {
            Player1 = PlayerNumberOne;
            Player2 = PlayerNumberTwo;
        }
    }
}
