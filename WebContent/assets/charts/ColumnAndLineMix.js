am4core.ready(function() {
 
// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end
 
// Create chart instance
var chart = am4core.create("chartdiv1", am4charts.XYChart);
 
// Export
chart.exporting.menu = new am4core.ExportMenu();
 
// Data for both series
var data = [
    /*{
        "3단질병명": "감염성 및 상세불명 기원의 기타 위장염 및 결장염",
        "환자수": "341,132",
        "요양급여비용총액": "244,793"
    },
    {
        "3단질병명": "노년백내장",
        "환자수": "303,204",
        "요양급여비용총액": "413,297"
    }*/,
    {
        "3단질병명": "출산장소에 따른 생존출생",
        "환자수": "293,265",
        "요양급여비용총액": "76,581"
    },
    {
        "3단질병명": "상세불명 병원체의 폐렴",
        "환자수": "291,665",
        "요양급여비용총액": "673,955"
    },
    {
        "3단질병명": "기타 추간판장애",
        "환자수": "260,212",
        "요양급여비용총액": "295,047"
    },
    {
        "3단질병명": "치핵 및 항문주위정맥혈전증",
        "환자수": "167,837",
        "요양급여비용총액": "180,875"
    },
    {
        "3단질병명": "기타 척추병증",
        "환자수": "126,778",
        "요양급여비용총액": "278,082"
    },
    {
        "3단질병명": "확인된 계절성 인플루엔자바이러스에 의한 인플루엔자",
        "환자수": "126,285",
        "요양급여비용총액": "107,604"
    },
    {
        "3단질병명": "무릎관절증",
        "환자수": "124,032",
        "요양급여비용총액": "712,347"
    },
    {
        "3단질병명": "어깨병변",
        "환자수": "120,347",
        "요양급여비용총액": "245,867"
    },
    {
        "3단질병명": "단일자연분만",
        "환자수": "119,074",
        "요양급여비용총액": "160,346"
    },
    {
        "3단질병명": "알츠하이머병에서의 치매(G30.-+)",
        "환자수": "115,792",
        "요양급여비용총액": "1,537,279"
    },
    {
        "3단질병명": "뇌경색증",
        "환자수": "107,970",
        "요양급여비용총액": "1,085,341"
    },
    {
        "3단질병명": "급성 기관지염",
        "환자수": "106,587",
        "요양급여비용총액": "75,623"
    },
    {
        "3단질병명": "협심증",
        "환자수": "105,094",
        "요양급여비용총액": "413,279"
    },
    {
        "3단질병명": "어지럼증 및 어지럼",
        "환자수": "99,475",
        "요양급여비용총액": "49,611"
    },
    {
        "3단질병명": "요추 및 골반의 관절 및 인대의 탈구, 염좌 및 긴장",
        "환자수": "89,437",
        "요양급여비용총액": "46,900"
    },
    {
        "3단질병명": "늑골, 흉골 및 흉추의 골절",
        "환자수": "86,004",
        "요양급여비용총액": "178,662"
    },
    {
        "3단질병명": "기타 및 원인미상의 열",
        "환자수": "85,597",
        "요양급여비용총액": "53,868"
    },
    {
        "3단질병명": "전정기능의 장애",
        "환자수": "85,063",
        "요양급여비용총액": "61,254"
    }
];
 
/* Create axes */
var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
categoryAxis.dataFields.category = "3단질병명";
categoryAxis.renderer.minGridDistance = 30;
 
/* Create value axis */
var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
 
/* Create series */
var columnSeries = chart.series.push(new am4charts.ColumnSeries());
columnSeries.name = "환자수";
columnSeries.dataFields.valueY = "환자수";
columnSeries.dataFields.categoryX = "3단질병명";
 
columnSeries.columns.template.tooltipText = "[#fff font-size: 15px]{name} in {categoryX}:\n[/][#fff font-size: 20px]{valueY}[/] [#fff]{additional}[/]"
columnSeries.columns.template.propertyFields.fillOpacity = "fillOpacity";
columnSeries.columns.template.propertyFields.stroke = "stroke";
columnSeries.columns.template.propertyFields.strokeWidth = "strokeWidth";
columnSeries.columns.template.propertyFields.strokeDasharray = "columnDash";
columnSeries.tooltip.label.textAlign = "middle";
 
var lineSeries = chart.series.push(new am4charts.LineSeries());
lineSeries.name = "요양급여비용총액";
lineSeries.dataFields.valueY = "요양급여비용총액";
lineSeries.dataFields.categoryX = "3단질병명";
 
lineSeries.stroke = am4core.color("#fdd400");
lineSeries.strokeWidth = 3;
lineSeries.propertyFields.strokeDasharray = "lineDash";
lineSeries.tooltip.label.textAlign = "middle";
 
var bullet = lineSeries.bullets.push(new am4charts.Bullet());
bullet.fill = am4core.color("#fdd400"); // tooltips grab fill from parent by default
bullet.tooltipText = "[#fff font-size: 15px]{name} in {categoryX}:\n[/][#fff font-size: 20px]{valueY}[/] [#fff]{additional}[/]"
var circle = bullet.createChild(am4core.Circle);
circle.radius = 4;
circle.fill = am4core.color("#fff");
circle.strokeWidth = 3;
 
chart.data = data;
 
}); // end am4core.ready()