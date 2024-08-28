window.onerror = function (error, url, line) {
  // add to the body tag a big red error message if one comes back from flourish js library
  // this may be the only feedback that something is wrong with data format
  var new_elem = document.createElement('div');
  new_elem.style.color = "red";
  new_elem.innerText = 'ERR:' + error + ' URL:' + url + ' L:' + line
  document.body.insertAdjacentElement("afterbegin", new_elem);
};

HTMLWidgets.widget({
  name: 'flourish-live',
  type: 'output',
  factory: function (el, width, height) {
    return {
      renderValue: function (x) {
        function replaceNullWithNaN(obj) {
          for (let key in obj) {
            if (obj.hasOwnProperty(key) && obj[key] === null) {
              obj[key] = NaN;
            }
          }
        }
        function convert_to_wide(test) {
          for (var i in test) {
            if (typeof test[i] === 'object') {
              // convert array of arrays to array of objects
              test[i] = HTMLWidgets.dataframeToD3(test[i])
              test[i].forEach(obj => replaceNullWithNaN(obj));
            }
          }
        }
        function isEmpty(value) {
          return (
            value === null || 
            value === undefined || 
            value === '' || 
            (Array.isArray(value) && value.length === 0) || 
            (typeof value === 'object' && Object.keys(value).length === 0)
          );
        }
        function removeEmpty(obj) {
          for (let key in obj) {
            if (isEmpty(obj[key])) {
              delete obj[key];
            }
          }
          return obj;
        }
        convert_to_wide(x.data);
        convert_to_wide(x.base_data);
        for (let key in x.bindings) {
          if (x.bindings.hasOwnProperty(key)) {
            let obj = x.bindings[key];
            for (let prop in obj) {
              if (obj.hasOwnProperty(prop) && obj[prop] === "list") {
                obj[prop] = [];
              }
            }
          }
        };
        let opts = {
          template: x.template, // Template ID
          version: x.version, // Template version
          container: x.elementId, // Selector for target DOM element
          chart_id: x.chart_id, // chart ID
          api_key: x.api_key, // Go to account settings or contact support@flourish.studio to get an API key
          bindings: x.bindings,
          data: x.data,
          state: x.state,
          base_visualisation_data_format: "object"
        }
        if (x.base_visualisation_id) {
          // base_visualisation_data_format can now be an array of arrays or array of objects as v5.0.2 of the API.
          opts.base_visualisation_id = String(x.base_visualisation_id)
          opts.bindings = x.bindings || x.base_bindings
          opts.data = x.data || x.base_data
          opts.metadata = x.metadata || x.base_metadata
          // merge the two states together. If there is a replacement value for a key in x.base_state, replace with the value in x.state (set in the R/Python code)
          opts.state = { ...x.base_state, ...x.state }
        }
        // Patch flourish code to use a pre-existing element to avoid RStudio security "feature"
        // https://github.com/rstudio/rstudio/issues/12494
        // https://github.com/rstudio/rstudio/issues/12620
        // https://github.com/rstudio/rstudio/pull/12706
        var embedding = {
          createEmbedIframe: () => {
            return document.getElementById(x.chart_id)
          },
          isFixedHeight: isFixedHeight,
          getHeightForBreakpoint: getHeightForBreakpoint,
          startEventListeners: startEventListeners,
          notifyParentWindow: notifyParentWindow,
          initScrolly: initScrolly,
          createScrolly: createScrolly,
          isSafari: isSafari,
          initCustomerAnalytics: initCustomerAnalytics,
          addAnalyticsListener: addAnalyticsListener,
          sendCustomerAnalyticsMessage: sendCustomerAnalyticsMessage
        };
        // comment out the following line to disable the rstudio hack
        window.embedding = embedding;
        // set the default html widget container height to 0.
        var container_div_id = opts.container.substring(1);
        document.getElementById(container_div_id).style.height = "0px";
        flourish_visualisation = new Fleet(opts);
        if (x.base_visualisation_id && !flourish_visualisation.template_loaded){
          flourish_visualisation.template_loaded = true
        }
      },
      resize: function (width, height) {
        // TODO: code to re-render the widget with a new size
      }
    };
  }
});
