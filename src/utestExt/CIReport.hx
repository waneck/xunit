package utestExt;
import haxe.CallStack;
import utest.*;

class CIReport
{


	public dynamic function error(str:String)
	{
#if sys
		Sys.stderr().writeString(str + "\n");
#else
		trace(str);
#end
	}

	public function report(str:String)
	{
#if sys
		Sys.stdout().writeString(str + "\n");
#else
		trace(str);
#end
	}

	var totalTests : Int = 0;
	var failedTests : Int = 0;
	var testWarnings : Int = 0;
	var startTime : Float;

	public function new(runner:Runner)
	{
		runner.onStart.add(onStart);
		runner.onComplete.add(onComplete);
		runner.onProgress.add(onProgress);

		startTime = haxe.Timer.stamp();
	}

	public function onStart(r:Runner)
	{
		report("START");
	}

	public function onComplete(r:Runner)
	{
		report('DONE [$totalTests tests]');
	}

	private function dumpStack(stack:Array<StackItem>)
	{
		return CallStack.toString(stack);
	}

	public function onProgress(test:{ result : TestResult, done: Int, totals: Int })
	{
		for (a in test.result.assertations)
		{
			totalTests++;
			failedTests++;

			switch(a)
			{
				case Success(_):
					failedTests--;
				case Failure(msg, pos):
					error(pos.fileName + ":" + pos.lineNumber + ": " + msg);
				case Error(e,s), SetupError(e,s), TeardownError(e,s), AsyncError(e,s):
					error("ERROR: " + Std.string(e));
					error(dumpStack(s));
				case TimeoutError(missedAsyncs,s):
					error("missed async calls: " + missedAsyncs);
					error(dumpStack(s));
				case Warning(msg):
					failedTests--;
					testWarnings++;
					report("WARNING: " + msg);
			}
		}
	}

}
