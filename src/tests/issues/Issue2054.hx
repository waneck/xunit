	package tests.issues;
import utest.Assert;


class Issue2054 extends Test
{

	public function testIssue()
	{
#if java
    var obj = { i:0 };
    java.Lib.lock( obj, {
      obj.i++;
    });
#end
    Assert.isTrue(true);
	}
}
