package tests.issues;
import utest.Assert;

@:skip
class Issue1576 extends Test
{
	public function testIssue()
	{
		var instance:BugTest<Dynamic, Dynamic> = new BugTest1("a", null);

		Assert.isTrue(true);
		Assert.isFalse(instance.arg1);
		Assert.isTrue(new BugTest1("a", null, true).arg1);
	}
}

private class BugTest< T , K >{
	public var arg1:Bool;
	public function new(t:T, k:K, arg1:Bool=false){
		this.arg1 = arg1;
	}
}

private class BugTest1<TValue> extends BugTest<Dynamic, TValue -> Void>{
	public function new(t:Dynamic, k:TValue -> Void, arg1:Bool=false){
		super(t, k, arg1);
	}
}
