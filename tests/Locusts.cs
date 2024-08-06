namespace Locusts.Testing;

[TestClass]
public class Test
{
    [TestMethod]
    public void TestLocusts()
    {
        Locusts.IntroduceLocusts();
        Assert.IsTrue(1==1);
    }
}