package tests.issues;
import utest.Assert;

class Issue1576 extends Test
{
	public function testIssue()
	{
		var instance:BugTest<Dynamic, Dynamic> = new BugTest1("a", null);

		Assert.isTrue(true);
		Assert.isFalse(instance.arg1);
		Assert.isTrue(new BugTest1("a", null, true).arg1);
		Assert.equals(2, new BugTest("a", null).arg2);
		Assert.equals(5, new BugTest("a",null,true,5).arg2);
		Assert.equals(4, new BugTest1("a",null).arg2);
		Assert.equals(4, new BugTest2("a",null).arg2);
		Assert.isFalse(new BugTest2("a",null,false).arg1);
	}
}

private class BugTest< T , K >{
	public var arg1:Bool;
	public var arg2:Int;
	public function new(t:T, k:K, arg1:Bool=false,arg2=2){
		this.arg1 = arg1;
		this.arg2 = arg2;
	}
}

private class BugTest1<TValue> extends BugTest<Dynamic, TValue -> Void>{
	public function new(t:Dynamic, k:TValue -> Void, arg1:Bool=false, arg2=4){
		super(t, k, arg1,arg2);
	}
}

private class BugTest2<NotTVal, TValue2> extends BugTest1<TValue2->Void>
{
}
