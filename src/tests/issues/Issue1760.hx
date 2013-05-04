package tests.issues;
import utest.Assert;
using Lambda;

class Issue1760 extends Test
{
	public function testIssue()
	{
    var x = ["a", "b", "c"];
    var hasA = x.indexOf("a") >= 0;
		Assert.isTrue(hasA);
	}
}
