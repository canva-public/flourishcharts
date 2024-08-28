"use strict";
// Copyright (c) Zoe Meers
// Distributed under the terms of the Modified BSD License.
Object.defineProperty(exports, "__esModule", { value: true });
exports.FlourishView = exports.FlourishModel = void 0;
const base_1 = require("@jupyter-widgets/base");
const flourish = require('@flourish/live-api').default;
const version_1 = require("./version");
class FlourishModel extends base_1.DOMWidgetModel {
    defaults() {
        return Object.assign(Object.assign({}, super.defaults()), { _model_name: FlourishModel.model_name, _model_module: FlourishModel.model_module, _model_module_version: FlourishModel.model_module_version, _view_name: FlourishModel.view_name, _view_module: FlourishModel.view_module, _view_module_version: FlourishModel.view_module_version });
    }
}
exports.FlourishModel = FlourishModel;
FlourishModel.serializers = Object.assign({}, base_1.DOMWidgetModel.serializers);
FlourishModel.model_name = 'FlourishModel';
FlourishModel.model_module = version_1.MODULE_NAME;
FlourishModel.model_module_version = version_1.MODULE_VERSION;
FlourishModel.view_name = 'FlourishView'; // Set to null if no view
FlourishModel.view_module = version_1.MODULE_NAME; // Set to null if no view
FlourishModel.view_module_version = version_1.MODULE_VERSION;
const generateUUID = () => {
    // from https://stackoverflow.com/questions/105034/how-to-create-a-guid-uuid
    let d = new Date().getTime(), d2 = (performance && performance.now && (performance.now() * 1000)) || 0;
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, c => {
        let r = Math.random() * 16;
        if (d > 0) {
            r = (d + r) % 16 | 0;
            d = Math.floor(d / 16);
        }
        else {
            r = (d2 + r) % 16 | 0;
            d2 = Math.floor(d2 / 16);
        }
        return (c == 'x' ? r : (r & 0x7 | 0x8)).toString(16);
    });
};
class FlourishView extends base_1.DOMWidgetView {
    render() {
        // Generate a random ID for the element
        const widget = 'chart-';
        const id = widget.concat(generateUUID());
        this.el.id = id;
        this.displayed.then(() => {
            const new_opts = this.model.get('_model_data');
            new flourish.Live(Object.assign({ container: `#${id}` }, new_opts));
        });
    }
}
exports.FlourishView = FlourishView;
//# sourceMappingURL=flourish.js.map