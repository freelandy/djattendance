var path = require("path")
var webpack = require('webpack')
var BundleTracker  = require('webpack-bundle-tracker')
var merge = require('webpack-merge')
var MiniCssExtractPlugin = require("mini-css-extract-plugin")

var commonConfig = require('./webpack.common.config')

var prodConfig = {
  module: {
    rules: [
      {
        test:  /\.(sa|sc|c)ss$/,
        use: [
          {
            loader: MiniCssExtractPlugin.loader,
          },
          "css-loader",
          "sass-loader"
        ]
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
    new MiniCssExtractPlugin({
      filename: '[name].css'
    }),
  ],

}

module.exports = merge.smart(prodConfig, commonConfig)
