	package tests.issues;
import utest.Assert;


class Issue2046 extends Test
{

	public function testIssue()
	{
    Assert.same(Type.getEnumConstructs(AnEnum), ["A","B","C"]);
	}
}

enum AnEnum
{
  A;B;C;
}
