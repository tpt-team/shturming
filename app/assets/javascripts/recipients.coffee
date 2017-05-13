# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  seriesOptions = []
  seriesCounter = 0
  names = [
    'success'
    'fail'
  ]

  createChart = ->
    Highcharts.stockChart 'container',
      chart: zoomType: 'x'
      subtitle: text: if document.ontouchstart == undefined then 'Click and drag in the plot area to zoom in' else 'Pinch the chart to zoom in'
      xAxis: type: 'datetime'
      legend: enabled: false
      plotOptions:
        area:
          fillColor:
            linearGradient:
              x1: 0
              y1: 0
              x2: 0
              y2: 1
            stops: [
              [
                0
                Highcharts.getOptions().colors[0]
              ]
              [
                1
                Highcharts.Color(Highcharts.getOptions().colors[0]).setOpacity(0).get('rgba')
              ]
            ]
          marker: radius: 2
          lineWidth: 1
          states: hover: lineWidth: 1
          threshold: null
        series:
          compare: 'percent'
          showInNavigator: true
      rangeSelector: selected: 4
      yAxis:
        labels: formatter: ->
          (if @value > 0 then ' + ' else '') + @value + '%'
        plotLines: [ {
          value: 0
          width: 2
          color: 'silver'
        } ]
      tooltip:
        pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}</b> ({point.change}%)<br/>'
        split: true
      series: seriesOptions

  $.each names, (i, name) ->
    $.getJSON '/messages', { status: name.toLowerCase() }, (data) ->
      seriesOptions[i] =
        name: name
        data: data
      seriesCounter += 1
      if seriesCounter == names.length
        createChart()
