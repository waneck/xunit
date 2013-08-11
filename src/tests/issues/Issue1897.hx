	package tests.issues;
import utest.Assert;


class Issue1897 extends Test
{

	public function testIssue()
	{
    Assert.equals(new haxe.Template('::if yes::TRUE::else::FALSE::end::').execute({yes:false}), "FALSE");
	}
}
