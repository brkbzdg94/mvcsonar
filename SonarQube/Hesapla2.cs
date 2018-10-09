using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SonarQube
{
    public class Hesapla2
    {
        public void sonar2()
        {
            int target = -5;
            int num = 3;
            target = -num;  // Noncompliant; target = -3. Is that really what's meant?
            target = +num; // Noncompliant; target = 3
            Console.Write("Burak");
            Console.Write("Burak");
            Console.Write("Burak");
            Console.Write("Burak");
        }
    }
}