import SwiftPlot
import AGGRenderer
import SVGRenderer

var filePath = "examples/Reference/"
let fileName = "_17_bar_chart_filled_circle_hatched"

let x:[String] = ["2008","2009","2010","2011"]
let y:[Float] = [320,-100,420,500]

var agg_renderer = AGGRenderer()
var svg_renderer = SVGRenderer()

var barGraph = BarGraph<String,Float>(enableGrid: true)
barGraph.addSeries(x, y, label: "Plot 1", color: .orange, hatchPattern: .filledCircle)
barGraph.plotTitle = PlotTitle("HATCHED BAR CHART")
barGraph.plotLabel = PlotLabel(xLabel: "X-AXIS", yLabel: "Y-AXIS")

barGraph.drawGraphAndOutput(fileName: filePath+"agg/"+fileName, renderer: agg_renderer)
barGraph.drawGraphAndOutput(fileName: filePath+"svg/"+fileName, renderer: svg_renderer)
