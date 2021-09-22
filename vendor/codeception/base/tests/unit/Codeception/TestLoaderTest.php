<?php

/**
 * Class TestLoaderTest
 * @group load
 */
class TestLoaderTest extends \PHPUnit\Framework\TestCase
{
    /**
     * @var \Codeception\Test\Loader
     */
    protected $testLoader;

    protected function setUp()
    {
        $this->testLoader = new \Codeception\Test\Loader(['path' => \Codeception\Configuration::dataDir()]);
    }

    /**
     * @group core
     */
    public function testAddCept()
    {
        $this->testLoader->loadTest('SimpleCept.php');
        $this->assertCount(1, $this->testLoader->getTests());
    }

    public function testAddTest()
    {
        $this->testLoader->loadTest('SimpleTest.php');
        $this->assertCount(1, $this->testLoader->getTests());
    }

    public function testAddCeptAbsolutePath()
    {
        $this->testLoader->loadTest(codecept_data_dir('SimpleCept.php'));
        $this->assertCount(1, $this->testLoader->getTests());
    }

    public function testAddCeptWithoutExtension()
    {
        $this->testLoader->loadTest('SimpleCept');
        $this->assertCount(1, $this->testLoader->getTests());
    }

    /**
     * @group core
     */
    public function testLoadFileWithFewCases()
    {
        $this->testLoader->loadTest('SimpleNamespacedTest.php');
        $this->assertCount(3, $this->testLoader->getTests());
    }

    /**
     * @group core
     */
    public function testLoadAllTests()
    {
        // to autoload dependencies
        Codeception\Util\Autoload::addNamespace(
            'Math',
            codecept_data_dir().'claypit/tests/_support/Math'
        );
        Codeception\Util\Autoload::addNamespace('Codeception\Module', codecept_data_dir().'claypit/tests/_support');

        $this->testLoader = new \Codeception\Test\Loader(['path' => codecept_data_dir().'claypit/tests']);
        $this->testLoader->loadTests();

        $testNames = $this->getTestNames($this->testLoader->getTests());

        $this->assertContainsTestName('AnotherCept', $testNames);
        $this->assertContainsTestName('MageGuildCest:darkPower', $testNames);
        $this->assertContainsTestName('FailingTest:testMe', $testNames);
        $this->assertContainsTestName('MathCest:testAddition', $testNames);
        $this->assertContainsTestName('MathTest:testAll', $testNames);
    }

    protected function getTestNames($tests)
    {
        $testNames = [];
        foreach ($tests as $test) {
            $testNames[] = \Codeception\Test\Descriptor::getTestSignature($test);
        }
        return $testNames;
    }

    protected function assertContainsTestName($name, $testNames)
    {
        $this->assertContains($name, $testNames, "$name not found in tests");
    }
}
