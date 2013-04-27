package tests.unit;
import utest.Assert;

/**
	This will test the Overloading Constructor feature of Java / C#
**/
class TestConstructor extends Test
{

	public function testMonoTyping()
	{
		new ConstructorParameterInfer(null);
		Assert.equals( typeof(ConstructorParameterInfer.testing), "TMono(<mono>)" );
		var s:Dynamic = "someTest"; //this will only be an actual test for typed platforms
		ConstructorParameterInfer.testing = s;
		Assert.equals(ConstructorParameterInfer.testing, s);
		Assert.isTrue(Std.is(ConstructorParameterInfer.testing, String));
	}
}

private class ConstructorParameterInfer
{
	public static var testing; //not typing it on purpose

	public function new(arg)
	{
		testing = arg;
	}
}
