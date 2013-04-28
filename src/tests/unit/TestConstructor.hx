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

		s = 15;
		new ConstructorParameterInfer(s);
		Assert.equals(ConstructorParameterInfer.testing, s);
		Assert.isTrue(Std.is(ConstructorParameterInfer.testing, Int));
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

/* test for correct overload selection when using overloads + possible conflicts */

/* test setting functions that capture "this" inside the constructor */

/* test a function that uses type parameters which the current map_expr won't catch */

/* test complex super call to a native type */

/* test a complex hierarchy between native and non-native */
