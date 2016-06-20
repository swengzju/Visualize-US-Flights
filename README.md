This is the project of the course Data Visualization and D3 on Udacity.

To open the html file in the browser, start the local server by typing 'python -m SimpleHTTPServer' into the command line, then open a tab in your web browser and enter localhost:8000 or localhost:8888 in the address bar (your port number may be different) and try opening the index__final.html file.

Data source: http://stat-computing.org/dataexpo/2009/the-data.html.

### Summary

The original data contains information on the performance of U.S. commercial flights from year 2000 to 2002. This period is specially chosen from the RITA dataset because of the tragedy that happened on September 11, 2001. I want to investigate how September 11 attacks affect the air transporation during that time period. This chart shows the number of cancelled and not cancelled flights in each month during 2000 - 2002.

I use R to process the original data in order to acquire the specific number of flights for each month. Then, a new "tsv" file is exported which contains the information that I will be visualizing in the chart. I use Dimple.js to construct my chart. 
