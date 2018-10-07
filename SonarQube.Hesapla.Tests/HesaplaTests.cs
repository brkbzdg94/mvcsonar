using Microsoft.VisualStudio.TestTools.UnitTesting;
using SonarQube;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SonarQube.Tests
{
    [TestClass()]
    public class HesaplaTests
    {
        [TestMethod()]
        public void ToplaTest()
        {
            //Arrange
            Hesapla hesap = new Hesapla();

            //Act
            int sonuc = hesap.Topla(20, 10);

            //Assert
            Assert.AreEqual(30, sonuc);
        }
    }
}