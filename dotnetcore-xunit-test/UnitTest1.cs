using dotnetcore_nuget_pack;
using System;
using Xunit;

namespace dotnetcore_xunit_test
{
    public class UnitTest1
    {
        [Fact]
        public void Test1()
        {
            var cl1 = new Class1();
            Assert.Equal(cl1.Sum(1, 2), 3);
        }
    }
}
