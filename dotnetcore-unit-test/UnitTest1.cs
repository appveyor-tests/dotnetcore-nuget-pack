using dotnetcore_nuget_pack;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace dotnetcore_unit_test
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            var cl1 = new Class1();
            Assert.IsTrue(cl1.Sum(1, 2) == 3);
        }
    }
}
