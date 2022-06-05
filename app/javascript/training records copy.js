jQuery (function ()
{
    const config = {
        type: 'line',
        data: barChartData
        }

    const context = jQuery("#chart")
    const chart = new Chart(context,config)
})

// ----------------------------------------------------------------------
const barChartData = {
    labels : ["2010","2011","2012","2013","2014","2015","2016"],
    datasets : [
        {
        label: "AA",
        lineTension: 0,
        data : [31,25,45,5,20,19,33]
        },
        {
        label: "BB",
        lineTension: 0,
        data : [25,10,54,77,32,9,78]
        }
    ]
}