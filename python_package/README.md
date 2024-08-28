# flourishcharts

Interactive data visualization for data practitioners. `flourishcharts` allows users to visualize their data 
using Flourish charts that are grounded in data storytelling principles. Users can create racing bar & line
charts, as well as other interactive elements commonly found in d3.js graphics, easily in R and Python. 
The package relies on an enterprise API provided by Flourish.

## Installation

You can install to a specific virtual env by using `pipenv`:

```bash
pipenv install flourishcharts
```

or to your global Python installation with `pip`:

```bash
python3 -m pip install --upgrade flourishcharts
```

## Development Installation

Create a dev environment:

```bash
pipenv install --dev -e "git+ssh://git@github.com/Canva-public/flourishcharts@main#egg=flourishcharts&subdirectory=python_package"
```

Set up the env variables (like API keys). Copy-paste the .envrc-demo file, adding your own API keys which can be accessed from your Flourish profile account.

```bash
cp .envrc-demo .envrc
```

### Tests

To run tests, run the following:

```bash
python -m unittest discover -s tests
```

### How to see your changes

#### Typescript

If you use JupyterLab to develop then you can watch the source directory and run JupyterLab at the same time in different
terminals to watch for changes in the extension's source and automatically rebuild the widget.

To compile the development javascript with live reloading on file changes
```sh
npm install
npm run dev
```

To debug javascript in vs code juypter notebooks, press command+shift+p to open the action bar then search for the action "Developer: Open webview developer tools"

After a change wait for the build to finish and then refresh your browser and the changes should take effect.

#### Python

If you make a change to the python code then you will need to restart the notebook kernel to have it take effect.
