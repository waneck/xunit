package tests.issues;
import utest.Assert;


class Issue1744 extends Test
{
	public function testIssue()
	{
		var t0 = haxe.Timer.stamp();
		var a = [];
		for( i in 0...1000000 )
			a[i] = i;
		Assert.isTrue(haxe.Timer.stamp() - t0 < 1);
	}
}
