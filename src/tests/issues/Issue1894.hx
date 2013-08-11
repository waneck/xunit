	package tests.issues;
import utest.Assert;


class Issue1894 extends Test
{

	public function testIssue()
	{
    var x = new WizardFactory<Wizard>();
    Assert.equals(x.getWizard().id, 42);
	}
}

interface IWizard {
        public var id : Int;
}

class Wizard implements IWizard {
    public var id : Int;
    public function new() { this.id = 42; }
}

@:generic class WizardFactory<W:(IWizard,{function new():Void;})> {
    public function new() {
    }

    public function getWizard() {
        var w = new W();
        return w;
    }
}
