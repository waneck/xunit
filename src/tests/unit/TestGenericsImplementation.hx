package tests.unit;
import utest.Assert;

/**
	This test will mainly test the correct target representation of various scenarios where a class
	implement a generic interface
**/
class TestGenericsImplementation extends Test
{

	public function testCompiling()
	{
		var ng2 = new NG2();
		Assert.isTrue(Std.is(ng2, NG1));
		Assert.isTrue(Std.is(ng2, IG));
		Assert.equals("works", ng2.something());

		var ng2:Dynamic = ng2;
		Assert.isTrue(Std.is(ng2, NG1));
		Assert.isTrue(Std.is(ng2, IG));
		Assert.equals("works", ng2.something());

		var ng2:IG<String> = ng2;
		Assert.isTrue(Std.is(ng2, NG1));
		Assert.isTrue(Std.is(ng2, IG));
		Assert.equals("works", ng2.something());

		var ng3 = new NG3();
		Assert.isTrue(Std.is(ng3, NG1));
		Assert.isTrue(Std.is(ng3, IG2));
		Assert.equals("works2", ng3.otherThing(10));
		Assert.equals(1000, ng3.stillOtherThing());

		var ng3:Dynamic = ng3;
		var ng3d:Dynamic = ng3;
		Assert.isTrue(Std.is(ng3, NG1));
		Assert.isTrue(Std.is(ng3, IG2));
		Assert.equals("works2", ng3.otherThing(10));
		Assert.equals(1000, ng3.stillOtherThing());

		var ng3:IG2<Int> = ng3d;
		Assert.isTrue(Std.is(ng3, NG1));
		Assert.isTrue(Std.is(ng3, IG2));
		Assert.equals("works2", ng3.otherThing(10));
		Assert.equals(1000, ng3.stillOtherThing());

		var ng3:IG<String> = ng3d;
		Assert.isTrue(Std.is(ng3, NG1));
		Assert.isTrue(Std.is(ng3, IG2));
		// Assert.equals(1000, ng3.stillOtherThing());

		var ng3:ING = ng3d;
		Assert.isTrue(Std.is(ng3, NG1));
		Assert.isTrue(Std.is(ng3, IG2));
		// Assert.equals(1000, ng3.stillOtherThing());

		var ng4 = new NG4();
		Assert.isTrue(Std.is(ng4, NG1));
		Assert.isTrue(Std.is(ng4, IG));
		Assert.isTrue(Std.is(ng4, IG2));
		Assert.isTrue(Std.is(ng4, ING2));
		Assert.isTrue(Std.is(ng4, ING3));
		Assert.equals("works", ng4.something());
		Assert.equals("works2", ng4.otherThing(10));
		Assert.equals(9000, ng4.stillOtherThing());

		var ng4:Dynamic = ng4;
		var ng4d:Dynamic = ng4;
		Assert.isTrue(Std.is(ng4, NG1));
		Assert.isTrue(Std.is(ng4, IG));
		Assert.isTrue(Std.is(ng4, IG2));
		Assert.isTrue(Std.is(ng4, ING2));
		Assert.isTrue(Std.is(ng4, ING3));
		Assert.equals("works", ng4.something());
		Assert.equals("works2", ng4.otherThing(10));
		Assert.equals(9000, ng4.stillOtherThing());

		var ng4:ING2 = ng4d;
		Assert.isTrue(Std.is(ng4, NG1));
		Assert.isTrue(Std.is(ng4, IG));
		Assert.isTrue(Std.is(ng4, IG2));
		Assert.isTrue(Std.is(ng4, ING2));
		Assert.isTrue(Std.is(ng4, ING3));
		// Assert.equals("works", ng4.something());
		// Assert.equals("works2", ng4.otherThing(10));
		// Assert.equals(9000, ng4.sillOtherThing());

		var ng4:ING3 = ng4d;
		Assert.isTrue(Std.is(ng4, NG1));
		Assert.isTrue(Std.is(ng4, IG));
		Assert.isTrue(Std.is(ng4, IG2));
		Assert.isTrue(Std.is(ng4, ING2));
		Assert.isTrue(Std.is(ng4, ING3));
		Assert.equals("works", ng4.something());
		Assert.equals("works2", ng4.otherThing(10));
		Assert.equals(9000, ng4.stillOtherThing());

		var ng4:IG2<Int> = ng4d;
		Assert.isTrue(Std.is(ng4, NG1));
		Assert.isTrue(Std.is(ng4, IG));
		Assert.isTrue(Std.is(ng4, IG2));
		Assert.isTrue(Std.is(ng4, ING2));
		Assert.isTrue(Std.is(ng4, ING3));
		Assert.equals("works", ng4.something());
		Assert.equals("works2", ng4.otherThing(10));
		Assert.equals(9000, ng4.stillOtherThing());

		var ng4:IG<String> = ng4d;
		Assert.isTrue(Std.is(ng4, NG1));
		Assert.isTrue(Std.is(ng4, IG));
		Assert.isTrue(Std.is(ng4, IG2));
		Assert.isTrue(Std.is(ng4, ING2));
		Assert.isTrue(Std.is(ng4, ING3));
		Assert.equals("works", ng4.something());
		// Assert.equals(9000, ng4.stillOtherThing());

		var g3 = new G3<Int>();
		Assert.isTrue(Std.is(g3, ING2));
		Assert.isTrue(Std.is(g3, ING3));
		Assert.equals("works3", g3.something());
		Assert.equals("works4", g3.otherThing(10));
		Assert.equals(9001, g3.stillOtherThing());

		var g3:Dynamic = g3;
		var g3d:Dynamic = g3;
		Assert.isTrue(Std.is(g3, ING2));
		Assert.isTrue(Std.is(g3, ING3));
		Assert.equals("works3", g3.something());
		Assert.equals("works4", g3.otherThing(10));
		Assert.equals(9001, g3.stillOtherThing());

		var g3:ING2 = g3d;
		Assert.isTrue(Std.is(g3, ING2));
		Assert.isTrue(Std.is(g3, ING3));
		// Assert.equals("works3", g3.something());
		// Assert.equals("works4", g3.otherThing(10));
		Assert.equals(9001, g3.stillOtherThing());

		var g3:G2<Dynamic, Int> = g3d;
		Assert.isTrue(Std.is(g3, ING2));
		Assert.isTrue(Std.is(g3, ING3));
		Assert.equals("works3", g3.something());
		Assert.equals("works4", g3.otherThing(10));
		// Assert.equals(9001, g3.stillOtherThing());

		var g3:G2<Int,Int> = g3d;
		Assert.isTrue(Std.is(g3, ING2));
		Assert.isTrue(Std.is(g3, ING3));
		Assert.equals("works3", g3.something());
		Assert.equals("works4", g3.otherThing(10));
		// Assert.equals(9001, g3.stillOtherThing());

		var g3:G1<Int> = g3d;
		Assert.isTrue(Std.is(g3, ING2));
		Assert.isTrue(Std.is(g3, ING3));
		Assert.equals("works3", g3.something());
		Assert.equals("works4", g3.otherThing(10));
		// Assert.equals(9001, g3.stillOtherThing());

		var g3:IG2<Int> = g3d;
		Assert.isTrue(Std.is(g3, ING2));
		Assert.isTrue(Std.is(g3, ING3));
		Assert.equals("works3", g3.something());
		Assert.equals("works4", g3.otherThing(10));
		Assert.equals(9001, g3.stillOtherThing());

		g3d = new G3<String>();
		var g3:G2<String,Int> = g3d;

		var ng5 = new NG5();
		Assert.isTrue(Std.is(ng5, NG1));
		Assert.isTrue(Std.is(ng5, IG));
		Assert.isTrue(Std.is(ng5, IG2));
		Assert.isTrue(Std.is(ng5, ING2));
		Assert.isTrue(Std.is(ng5, ING3));
		Assert.equals("works3", ng5.something());
		Assert.equals("works4", ng5.otherThing(10));
		Assert.equals(9001, ng5.stillOtherThing());

		var ng5:Dynamic = ng5;
		var ng5d:Dynamic = ng5;
		Assert.isTrue(Std.is(ng5, NG1));
		Assert.isTrue(Std.is(ng5, IG));
		Assert.isTrue(Std.is(ng5, IG2));
		Assert.isTrue(Std.is(ng5, ING2));
		Assert.isTrue(Std.is(ng5, ING3));
		Assert.equals("works3", ng5.something());
		Assert.equals("works4", ng5.otherThing(10));
		Assert.equals(9001, ng5.stillOtherThing());

		var ng5:G3<String> = ng5d;
		Assert.isTrue(Std.is(ng5, NG1));
		Assert.isTrue(Std.is(ng5, IG));
		Assert.isTrue(Std.is(ng5, IG2));
		Assert.isTrue(Std.is(ng5, ING2));
		Assert.equals("works3", ng5.something());
		Assert.equals("works4", ng5.otherThing(10));
		Assert.equals(9001, ng5.stillOtherThing());

		var ng5:ING2 = ng5d;
		Assert.isTrue(Std.is(ng5, NG1));
		Assert.isTrue(Std.is(ng5, IG));
		Assert.isTrue(Std.is(ng5, IG2));
		Assert.isTrue(Std.is(ng5, ING2));
		Assert.isTrue(Std.is(ng5, ING3));
		// Assert.equals("works3", ng5.something());
		// Assert.equals("works4", ng5.otherThing(10));
		Assert.equals(9001, ng5.stillOtherThing());

		var ng5:G2<String, Int> = ng5d;
		Assert.isTrue(Std.is(ng5, NG1));
		Assert.isTrue(Std.is(ng5, IG));
		Assert.isTrue(Std.is(ng5, IG2));
		Assert.isTrue(Std.is(ng5, ING2));
		Assert.isTrue(Std.is(ng5, ING3));
		Assert.equals("works3", ng5.something());
		Assert.equals("works4", ng5.otherThing(10));
		// Assert.equals(9001, ng5.stillOtherThing());

		var ng5:G1<Int> = ng5d;
		Assert.isTrue(Std.is(ng5, NG1));
		Assert.isTrue(Std.is(ng5, IG));
		Assert.isTrue(Std.is(ng5, IG2));
		Assert.isTrue(Std.is(ng5, ING2));
		Assert.isTrue(Std.is(ng5, ING3));
		Assert.equals("works3", ng5.something());
		Assert.equals("works4", ng5.otherThing(10));
		// Assert.equals(9001, ng5.stillOtherThing());

		var ng5:IG2<Int> = ng5d;
		Assert.isTrue(Std.is(ng5, NG1));
		Assert.isTrue(Std.is(ng5, IG));
		Assert.isTrue(Std.is(ng5, IG2));
		Assert.isTrue(Std.is(ng5, ING2));
		Assert.isTrue(Std.is(ng5, ING3));
		Assert.equals("works3", ng5.something());
		Assert.equals("works4", ng5.otherThing(10));
		Assert.equals(9001, ng5.stillOtherThing());

	}
}

private class NG1
{
	public function new()
	{

	}
}

private interface IG<A>
{
	function something():A;
}

private interface ING
{
	function something():String;
}

private interface IG2<B> extends ING extends IG<String>
{
	function otherThing(i:B):String;
	function stillOtherThing():B;
}

private interface ING2
{
	function stillOtherThing():Int;
}

private interface ING3 extends IG2<Int> extends ING2
{
}

private class NG2 extends NG1 implements IG<String>
{
	public function something():String
	{
		return "works";
	}
}

private class NG3 extends NG2 implements IG2<Int>
{
	public function otherThing(i:Int):String
	{
		return "works2";
	}

	public function stillOtherThing():Int
	{
		return 1000;
	}
}

private class NG4 extends NG3 implements ING3
{
	override public function stillOtherThing():Int
	{
		return 9000;
	}
}

private class G1<A> extends NG1 implements IG2<A>
{
	public function something():String
	{
		return "works3";
	}

	public function otherThing(i:A):String
	{
		return "works4";
	}

	public function stillOtherThing():A
	{
		return null;
	}
}

private class G2<B, C> extends G1<C>
{
}

private class G3<D> extends G2<D,Int> implements ING3
{
	override public function stillOtherThing():Int
	{
		return 9001;
	}
}

private class NG5 extends G3<String>
{
}
