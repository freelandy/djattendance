var path = require("path")
var webpack = require('webpack')
var BundleTracker  = require('webpack-bundle-tracker')
var ExtractTextPlugin = require('extract-text-webpack-plugin')
var merge = require('webpack-merge')

var commonConfig = require('./webpack.common.config')

var prodConfig = {
  module: {
    rules: [
      {
        test: /\.css$/,
        use: ExtractTextPlugin.extract('css-loader'),
      }, {
        test: /\.scss$/,
        use: ExtractTextPlugin.extract('css-loader!sass-loader'),
      }
    ],
  },

  plugins: [
    new webpack.LoaderOptionsPlugin({
      minimize: true,
      debug: false
    }),
    new webpack.DefinePlugin({
      'process.env.NODE_ENV': JSON.stringify('production')
    }),
    new webpack.optimize.UglifyJsPlugin({
      beautify: false,
      mangle: {
        screw_ie8: true,
        keep_fnames: true
      },
      compress: {
        screw_ie8: true
      },
      comments: false,
      output: {
        "ascii_only": true
      }
    }),
    new ExtractTextPlugin({
      filename: '[name].css'
    }),
  ],

}

module.exports = merge.smart(prodConfig, commonConfig)
