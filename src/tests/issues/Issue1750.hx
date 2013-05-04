package tests.issues;
import utest.Assert;


class Issue1750 extends Test
{
	public function testIssue()
	{
		var iThing:IThing = new Thing();
		Assert.isTrue(Type.getClass(iThing) == Thing);
		Assert.equals(Type.getClass(iThing), Thing);
		Assert.isTrue(eq(Type.getClass(iThing), Thing));

		var actualThing:Thing = cast iThing;
		Assert.isTrue(Std.is(iThing, Thing));
	}

	static function eq<T>(a:T, b:T):Bool
	{
		return a == b;
	}
}

private interface IThing
{
	function toString():String;
}

private class Thing implements IThing
{
	public function new() { }

	public function toString() return "Thing";
}
