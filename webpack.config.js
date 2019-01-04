'use strict';
var webpack = require('webpack');
var path = require('path');

// Builds bundle usable inside <script>.
module.exports = {
  context: __dirname,
  entry: {
    'app': './app.js'
  },
  output: {
    path: path.join(__dirname, "/res"),
    filename: "[name].js",
    libraryTarget: "umd",
    library: "app",
  },
  devtool: 'source-map',
  module: {
    loaders: [
      {
        test: /\.js?$/,
        exclude: /node_modules/,
        loader: 'babel-loader',
      }
    ]
  },
  devServer: {
    contentBase: __dirname,
    publicPath: '/res',
    compress: true,
    port: 4003,
  },
  plugins: [
    new webpack.optimize.OccurrenceOrderPlugin(),
    new webpack.optimize.UglifyJsPlugin({compress: {warnings: false}})
  ],
  resolve: {
  }
};
