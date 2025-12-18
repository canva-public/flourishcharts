# Overview

Interactive data visualization for data practitioners. `flourishcharts` allows users to visualize their data 
using Flourish charts that are grounded in data storytelling principles. Users can create racing bar & line
charts, as well as other interactive elements commonly found in d3.js graphics, easily in R and Python. 
The package relies on an enterprise API provided by Flourish.

This `R` package pulls d3 and WebGL graphs from the [Flourish](flourish.studio) data visualization API.

`flourishcharts` relies on `htmlwidgets` to render JavaScript in R.

## Installation 

```r
install.packages("flourishcharts")
library(flourishcharts)
```

## Updating flourish-live.js

When updating `inst/htmlwidgets/lib/flourish-live/flourish-live-X.X.X.js`, you must apply this patch to the `Fleet.prototype._loadFleet` function:

```javascript
// Change this line:
if (!embedding) { embedding = initEmbedding(); }

// To this:
if (!embedding) { embedding = window.embedding || initEmbedding(); }
```

This patch allows the R package to override `createEmbedIframe` and `startEventListeners` via `window.embedding` in `flourish-live.js`. This is required to work around RStudio security restrictions that block dynamically created iframes.

See:
- https://github.com/rstudio/rstudio/issues/12494
- https://github.com/rstudio/rstudio/issues/12620

## Issues

Please note any issues in the GitHub repository.
