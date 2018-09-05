var path = require("path")
var webpack = require('webpack')
var BundleTracker  = require('webpack-bundle-tracker')

module.exports = {
  context: __dirname,

  entry: {
    main: [
      '../ap/templates/bundles/index.js', // entry point of our app. assets/js/index.js should require other js modules and dependencies it needs
    ],
    attendance: [
      '../libraries/react/scripts/index.js',
    ],
    jquery_bootstrap: [
      '../ap/templates/bundles/jquery_bootstrap.js',
    ],
    select_2: [
      '../ap/templates/bundles/select_2.js',
    ],
    tinymce: [
      '../ap/templates/bundles/tinymce.js',
    ],
  },

  output: {
    path: path.resolve('./ap/static/bundles'),
    filename: "[name].js",
  },

  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: [/node_modules/],
        use: [{
          loader: 'babel-loader',
          options: {
            'plugins': [
              "react-hot-loader/babel",
              // Stage 2
              ["@babel/plugin-proposal-decorators", { "legacy": true }],
              "@babel/plugin-proposal-function-sent",
              "@babel/plugin-proposal-export-namespace-from",
              "@babel/plugin-proposal-numeric-separator",
              "@babel/plugin-proposal-throw-expressions"
            ],
            'presets': [
              ['@babel/preset-env', {
                'targets': {
                  "browsers": [
                    "safari >= 7"
                  ]
                },
                'modules': false
              }],
              "@babel/preset-react"
            ]
          },
        }],
      }, {
        test: /\.woff2?$|\.ttf$|\.eot$|\.svg$|\.png$|\.gif$/,
        loader: "file-loader"
      }
    ]
  },

  plugins: [
    new BundleTracker({path: __dirname, filename: './webpack-stats.json'}),
    new webpack.IgnorePlugin(/^\.\/locale$/, /moment\/js$/), // to not to load all locales
  ],

  resolve: {
    modules: [
      path.resolve(__dirname, '../libraries'),
      '../node_modules'
    ]
  }
}
