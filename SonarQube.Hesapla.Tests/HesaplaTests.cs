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

        [TestMethod()]
        public void CikarTest()
        {
            //Arrange
            Hesapla hesap = new Hesapla();

            //Act
            int sonuc = hesap.Cikar(20, 10);

            //Assert
            Assert.AreEqual(10, sonuc);
        }

        [TestMethod()]
        public void CarpTest()
        {
            //Arrange
            Hesapla hesap = new Hesapla();

            //Act
            int sonuc = hesap.Carp(20, 10);

            //Assert
            Assert.AreEqual(200, sonuc);
        }

        [TestMethod()]
        public void BolTest()
        {
            //Arrange
            Hesapla hesap = new Hesapla();

            //Act
            int sonuc = hesap.Bol(20, 10);

            //Assert
            Assert.AreEqual(2, sonuc);
        }
    }
}