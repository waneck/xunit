	package tests.issues;
import utest.Assert;


typedef Frodo = {
		@:overload(function( a : String ) : Bool {})
				function frodo( a : String, b : Frodo ) : Void;
}
class Issue1809 extends Test
{

	public function testIssue()
	{
		var f:Frodo = cast { frodo:function(a) { return true; } };
		Assert.isTrue(f.frodo("boop"));
	}
}
