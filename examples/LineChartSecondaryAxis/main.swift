import SwiftPlot
import AGGRenderer
import SVGRenderer

var filePath = "examples/Reference/"
let fileName = "_07_secondary_axis_line_chart"

let x:[Float] = [0,100,263,489]
let y:[Float] = [0,320,310,170]
let x1:[Float] = [0,200,361,672]
let y1:[Float] = [0,250,628,241]

var agg_renderer = AGGRenderer()
var svg_renderer = SVGRenderer()

var lineGraph = LineGraph<Float,Float>()
lineGraph.addSeries(x1, y1, label: "Plot 1", color: .lightBlue, axisType: .primaryAxis)
lineGraph.addSeries(x, y, label: "Plot 2", color: .orange, axisType: .secondaryAxis)
lineGraph.plotTitle = PlotTitle("SECONDARY AXIS")
lineGraph.plotLabel = PlotLabel(xLabel: "X-AXIS", yLabel: "Y-AXIS")

lineGraph.drawGraphAndOutput(fileName: filePath+"agg/"+fileName, renderer: agg_renderer)
lineGraph.drawGraphAndOutput(fileName: filePath+"svg/"+fileName, renderer: svg_renderer)