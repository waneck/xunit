package tests.unit;
import utest.Assert;

/**
	Tests how well expression unwrap works on the platform
**/
class TestSyntax extends Test
{
	private static inline function doComplex(x:String)
	{
		if (x == "thisIsCorrect" || x == "correct")
			return true;
		else
			return false;
	}

	static var x1 = "false";
	static var x2 = "correct";

	private static function problematicIf():Bool
	{
		var n = null;
		return if(doComplex(x1) /* false */)
			if (doComplex(x2))
				n.doRuntimeException;
			else
				false;
		else if (doComplex(x2))
				true;
			else
				false;
	}

	private function testProblematicIf()
	{
		Assert.isTrue(problematicIf());
	}
}
