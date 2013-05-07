package tests.issues;
import utest.Assert;

class Issue1727 extends Test
{
	public static function newList() { return new List<Int>(); }
	public static function union<T>(a:Void->List<T>, b:Void->List<T>) : Void -> List<T> {
    return function()
		{
      return Lambda.concat(a(), b());
		}
	}

	public function testIssue()
	{
		var u = union(newList, newList);
		Assert.isTrue(u() != null);
	}
}
