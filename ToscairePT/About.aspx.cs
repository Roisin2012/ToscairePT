using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToscairePT
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            output.Output refs = new output.Output();
            DateTime date = Convert.ToDateTime("15/12/2013");
            Guid id = new System.Guid();
            DataTable[] tables = refs.groupSummary(date, true, "a");
            List<string> x = new System.Collections.Generic.List<string>();
            List<int> y = new System.Collections.Generic.List<int>();
            foreach (DataRow dr in tables[0].Rows)
            {
                x.Add(dr.Field<string>(0));
                y.Add(dr.Field<int>(1));
            }
            GridView1.DataSource = tables[0];
            GridView1.DataBind();
            Chart1.DataSource = tables[0];
            Chart1.DataBind();
            //=table.Rows.OfType<DataRow>().Select(dr => dr.Field<int>(0)).ToList();
            Chart1.Series["Default"].Points.DataBindXY(x, y);
            // Set Doughnut chart type
            Chart1.Series["Default"].ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.Pie;
            // Set labels style
            Chart1.Series["Default"]["PieLabelStyle"] = "Outside";
            // Set Doughnut radius percentage
            Chart1.Series["Default"]["DoughnutRadius"] = "30";
            // Explode data point with label "Italy"
            //Chart1.Series["Default"].Points[4]["Exploded"] = "true";
            // Set drawing style
            Chart1.Series["Default"]["PieDrawingStyle"] = "SoftEdge";
            List<string> x1 = new List<string>();
            List<int> y1 = new List<int>();
            foreach (DataRow dr in tables[1].Rows)
            {
                x1.Add(dr.Field<string>(0) + ", " + dr.Field<string>(1));
                y1.Add(dr.Field<int>(2));
            }
            GridView2.DataSource = tables[1];
            GridView2.DataBind();
            Chart2.DataSource = tables[1];
            Chart2.DataBind();

            ////=table.Rows.OfType<DataRow>().Select(dr => dr.Field<int>(0)).ToList();
            Chart2.Series["Default"].Points.DataBindXY(x1, y1);
            // Set Doughnut chart type
            Chart2.Series["Default"].ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.Pie;
            // Set labels style
            Chart2.Series["Default"]["PieLabelStyle"] = "None";
            // Set Doughnut radius percentage
            Chart2.Series["Default"]["DoughnutRadius"] = "30";
            // Explode data point with label "Italy"
            Chart2.Series["Default"].Points[4]["Exploded"] = "true";
            // Set drawing style
            Chart2.Series["Default"]["PieDrawingStyle"] = "SoftEdge";
            List<string> x2 = new List<string>();
            List<int> y2 = new List<int>();
            foreach (DataRow dr in tables[3].Rows)
            {
                x2.Add(dr.Field<Guid>(0).ToString());
                y2.Add(dr.Field<int>(2));
            }
            GridView3.DataSource = tables[3];
            GridView3.DataBind();
            Chart3.DataSource = tables[3];
            Chart3.DataBind();
            //=table.Rows.OfType<DataRow>().Select(dr => dr.Field<int>(0)).ToList();
            Chart3.Series["Default"].Points.DataBindXY(x2, y2);
            // Set Doughnut chart type
            Chart3.Series["Default"].ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.Pie;

            // Set labels style
            Chart3.Series["Default"]["PieLabelStyle"] = "Outside";

            // Set Doughnut radius percentage
            Chart3.Series["Default"]["DoughnutRadius"] = "30";

            // Explode data point with label "Italy"
            Chart3.Series["Default"].Points[4]["Exploded"] = "true";
            // Set drawing style
            Chart3.Series["Default"]["PieDrawingStyle"] = "SoftEdge";
        }
    }
}