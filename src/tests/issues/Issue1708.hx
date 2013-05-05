	package tests.issues;
import utest.Assert;


class Issue1708 extends Test
{

	static var ar:Array<Test> = [null];
	static function set(x:Test) : Test
	{
		    return ar[0] = x;
	}
	public function testIssue()
	{
		var b = new Issue1708();
		Assert.equals(b, set(b));
	}
}
