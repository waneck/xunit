import utest.Runner;
import utest.Assert;
import utest.TestResult;

@tests() class TestAll
{
	static function main()
	{
		var runner = new Runner();

		trace(haxe.rtti.Meta.getType(TestAll));
		for (test in haxe.rtti.Meta.getType(TestAll).tests)
		{
			runner.addCase(Type.createInstance(Type.resolveClass(test), []));
		}

		var report = new utestExt.CIReport(runner);
		var r:TestResult = null;
		runner.onProgress.add(function(o) if(o.done == o.totals) r = o.result);
		runner.run();

#if sys
		Sys.exit(r.allOk() ? 0 : 1);
#end
	}
}
