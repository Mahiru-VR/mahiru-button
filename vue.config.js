const webpack = require('webpack');

module.exports = {
  configureWebpack: {
    plugins: [
      new webpack.ProvidePlugin({
            $: 'jquery',
            jQuery: 'jquery',
            'window.jQuery': 'jquery'
      })
    ],
  },
    publicPath: process.env.NODE_ENV === 'production'
    ? '/'
    : '/'
}