	package tests.issues;
import utest.Assert;


class Issue1780 extends Test
{

	public function testIssue()
	{
		var b = new Bar();
		Assert.equals(2, b.x);
	}
}


private class Foo
{
	public function new()
	{
	}
}

private class Bar extends Foo
{
	public var x = 1;

	public function new()
	{
		x = 2;
		super();
	}
}
