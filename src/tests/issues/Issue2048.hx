	package tests.issues;
import utest.Assert;


class Issue2048 extends Test
{

	public function testIssue()
	{
    var x = function ():Null<Int> {
      return null;
    }
    Assert.equals( null, x() ); // fails, x() evaluates to 0
	}
}
