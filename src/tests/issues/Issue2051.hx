	package tests.issues;
import utest.Assert;


class Issue2051 extends Test
{

	public function testIssue()
	{
    var x1:Dynamic = 1375692838814.0;
    var x2:Dynamic = 1.0;
    var x3:Dynamic = 1;
    Assert.isTrue(x1 > x2);
    Assert.isFalse(x1 < x2);
    Assert.isFalse(x1 == x2);
    Assert.isTrue(x1 > x3);
    Assert.isFalse(x1 < x3);
    Assert.isFalse(x1 == x3);
	}
}
