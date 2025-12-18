# R Package Agent Instructions

## Required Patch for flourish-live.js

When updating `inst/htmlwidgets/lib/flourish-live/flourish-live-X.X.X.js` to a new version, you MUST apply this patch to the `Fleet.prototype._loadFleet` function:

```javascript
// Find this line in _loadFleet:
if (!embedding) { embedding = initEmbedding(); }

// Change it to:
if (!embedding) { embedding = window.embedding || initEmbedding(); }
```

**Why:** The R package sets `window.embedding` in `flourish-live.js` to override `createEmbedIframe` and `startEventListeners`. This works around RStudio security restrictions that block dynamically created iframes.

**If you forget this patch:** The chart will fail with errors like:
- `embedding.startEventListeners is not a function`
- `createEmbedIframe` not being patched correctly

## Testing

After making changes, reinstall the package:

```r
devtools::install("R_package")
```
