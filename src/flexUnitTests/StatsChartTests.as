package flexUnitTests
{
	import com.Teacher.UI.charts.StatsChart;
	
	import mx.controls.dataGridClasses.DataGridColumn;
	
	import org.flexunit.asserts.assertEquals;
	
	import spark.components.gridClasses.GridColumn;

	public class StatsChartTests
	{		
		var statsChart:StatsChart;
		
		[Before]
		public function setUp():void
		{
			statsChart = new StatsChart();
		}
		
		[After]
		public function tearDown():void
		{
			statsChart = null;
		}
		
		[BeforeClass]
		public static function setUpBeforeClass():void
		{
		}
		
		[AfterClass]
		public static function tearDownAfterClass():void
		{
		}
		
		[Test]
		public function testStatsChartGridPercentage()
		{
			var item = {Einstein: '10', Mastery: '20', Confidence: '30', Concept: '40'};
			var column:GridColumn = new GridColumn("Einstein %");
			column.headerText = "Einstein %";
			var percentage = statsChart.statsChartGridPercentage(item, column);
			assertEquals('10%', percentage);
		}
		
		
	}
}