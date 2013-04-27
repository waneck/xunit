
@:autoBuild(utestExt.TestBuild.build()) class Test
{
	public function new()
	{

	}

	public macro function typedAs(me:haxe.macro.Expr, actual:haxe.macro.Expr, expected:haxe.macro.Expr)
	{
    var tExpected = haxe.macro.Context.typeof(expected);
    var tActual = haxe.macro.Context.typeof(actual);
    return haxe.macro.Context.parse("{utest.Assert.equals('" +Std.string(tActual) + "', '" +  Std.string(tExpected) + "');}", haxe.macro.Context.currentPos());
  }

	public macro function typeof(me:haxe.macro.Expr,e:haxe.macro.Expr)
	{
		return haxe.macro.Context.parse("'" + Std.string( haxe.macro.Context.typeof(e) ) + "'", haxe.macro.Context.currentPos());
	}

}
