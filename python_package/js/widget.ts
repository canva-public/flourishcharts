import type { RenderContext } from "@anywidget/types";
import "./widget.css";

import flourishliveApi from 'https://cdn.jsdelivr.net/npm/@flourish/live-api@5.1.0/+esm'

interface WidgetModel {
	_model_data: {
		container: HTMLElement
	}
}

function render({ model, el }: RenderContext<WidgetModel>) {

	let chart = document.createElement("div"); 
	chart.id = "chart";
	el.appendChild(chart);
	let opts = model.get("_model_data");
	if (opts.base_visualisation_id) {
		// base_visualisation_data_format can now be an array of arrays or array of objects as v5.0.2 of the API.
		opts.base_visualisation_id = String(opts.base_visualisation_id)
		opts.bindings = opts.base_bindings
		opts.data = opts.base_data
		opts.metadata = opts.base_metadata
		// merge the two states together. If there is a replacement value for a key in opts.base_state, replace with the value in opts.state (set in the R/Python code)
		opts.state = { ...opts.base_state, ...opts.state }
	  }
	  if (opts.base_visualisation_id && opts.data !== null){
		opts.data = opts.data
		opts.bindings = opts.bindings
	  }
	  if(opts.metadata !== null || typeof opts.metadata !== 'undefined'){
		opts.metadata = opts.metadata || opts.base_metadata
	};
	opts.container = chart
	flourish_visualisation = new flourishliveApi.Live(opts);
	if (opts.base_visualisation_id && !flourish_visualisation.template_loaded){
	  flourish_visualisation.template_loaded = true
	}
}
export default { render }
