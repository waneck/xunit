package utestExt;
import haxe.macro.Context;

class TestBuild
{

	public static function build()
	{
		var cur = Context.getLocalClass();
		if (cur.get().meta.has(":skip"))
			return null;
		var tall = Context.getType("TestAll");
		switch(tall)
		{
			case TInst(c,_):
				var meta = c.get().meta;
				var metas = meta.get(), chosen = null;
				for (m in metas)
				{
					if (m.name == "tests")
					{
						chosen = m;
						break;
					}
				}

				if (chosen == null)
				{
					meta.add("tests", [Context.makeExpr(cur.toString(), Context.currentPos())], Context.currentPos());
				} else {
					meta.remove("tests");
					chosen.params.push(Context.makeExpr(cur.toString(), Context.currentPos()));
					meta.add("tests", chosen.params, chosen.pos);
				}
			case _: throw "assert";
		}
		return null;
	}

}
