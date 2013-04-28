package tests.issues;
import utest.Assert;


@:skip
class Issue1750 extends Test
{
#if false
	public function testIssue()
	{
		var iThing:IThing = new Thing();
		Assert.isTrue(Type.getClass(iThing) == Thing);
		// Assert.equals(Type.getClass(iThing), Thing);

		var actualThing:Thing = cast iThing;
		Assert.isTrue(Std.is(iThing, Thing));
	}
#end
}

private interface IThing {
        function toString():String;
}

private class Thing implements IThing {
        public function new() { }

        public function toString() return "Thing";
}
