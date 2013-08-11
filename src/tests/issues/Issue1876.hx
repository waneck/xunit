	package tests.issues;
import utest.Assert;


class Issue1876 extends Test
{

	public function testIssue()
	{
    Assert.isTrue(isPos(10));
    Assert.isTrue(isPos(15.0));
    Assert.isFalse(isPos(-1.0));
    Assert.isFalse(isPos(-1));
	}

  public static function isPos<T:Float>(v:T):Bool
  {
    return v > 0;
  }
}
