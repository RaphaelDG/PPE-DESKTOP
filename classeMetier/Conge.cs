﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace BelleTable.CongesClass
{
    class Conges
    {
        private int numConge;
        private DateTime dateDebutConge;
        private DateTime dateFinConge;

        public Conges()
        {

        }
        //Setter
        public void SetnumConge(int unnumConge)
        {
            numConge = unnumConge;
        }


        public void SetdateDebutConge(DateTime unedateDebutConge)
        {
            dateDebutConge = unedateDebutConge;
        }

        public void SetdateFinConge(DateTime unedateFinConge)
        {
            dateFinConge = unedateFinConge;
        }

        //Getter
        public int GetLenumConge()
        {
            return numConge;
        }

        public DateTime GetdateDebutConge()
        {
            return dateDebutConge;
        }

        public DateTime GetdateFinConge()
        {
            return dateFinConge;
        }
        public void AjouterUnConge()
        {
        //mysql.Command("INSERT INTO CONGES (dateDebutConge, dateFinConge) VALUES (this.dateDebutConge, this.dateFinConge)");
        }
    }
}
