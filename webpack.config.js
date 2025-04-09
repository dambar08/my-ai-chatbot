const path = require("path");
const webpack = require("webpack");
const ForkTsCheckerWebpackPlugin = require("fork-ts-checker-webpack-plugin");
// const MiniCssExtractPlugin = require("mini-css-extract-plugin");
const devMode = process.env.NODE_ENV !== "production";

const {
  defineReactCompilerLoaderOption,
  reactCompilerLoader,
} = require("react-compiler-webpack");
const child_process = require("child_process");
// const { watchFile } = require("fs");

function git(command) {
  return child_process.execSync(`git ${command}`, { encoding: "utf8" }).trim();
}

module.exports = {
  mode: "production",
  cache: false,
  devtool: "source-map",
  entry: {
    application: "./app/javascript/application.ts",
  },
  output: {
    filename: "[name].js",
    sourceMapFilename: "[file].map",
    chunkFormat: "module",
    path: path.resolve(__dirname, "app/assets/builds"),
  },
  resolve: {
    alias: {
      '~controllers': path.resolve(__dirname, './app/javascript/controllers'),
      '~': path.resolve(__dirname, './app/javascript/src'),
    },
    extensions: ['.js', '.jsx', '.ts', '.tsx'],
  },
  module: {
    rules: [
      {
        test: /\.ts$/,
        exclude: /node_modules/,
        use: "ts-loader",
      },
      // {
      //   // If you enable `experiments.css` or `experiments.futureDefaults`, please uncomment line below
      //   // type: "javascript/auto",
      //   test: /\.(sa|sc|c)ss$/i,
      //   use: [
      //     devMode ? "style-loader" : MiniCssExtractPlugin.loader,
      //     "css-loader",
      //     "postcss-loader",
      //     "sass-loader",
      //   ],
      // },
      {
        test: /\.(js|ts|tsx|jsx)$/,
        exclude: /node_modules/,
        use: {
          loader: "babel-loader",
        }
      },
      {
        test: /\.[mc]?[jt]sx?$/i,
        exclude: /node_modules/,
        use: [
          // babel-loader, swc-loader, esbuild-loader, or anything you like to transpile JSX should go here.
          // If you are using rspack, the rspack's buiilt-in react transformation is sufficient.
          // { loader: 'swc-loader' },
          // Now add reactCompilerLoader
          {
            loader: "babel-loader",
          },
          {
            loader: reactCompilerLoader,
            options: defineReactCompilerLoaderOption({
              // React Compiler options goes here
            }),
          },
        ],
      },
    ],
  },
  plugins: [
    new webpack.ProgressPlugin(),
    new ForkTsCheckerWebpackPlugin(),
    new webpack.optimize.LimitChunkCountPlugin({
      maxChunks: 1,
    }),
    // new webpack.EnvironmentPlugin({
    //   GIT_VERSION: git("describe --always"),
    //   GIT_AUTHOR_DATE: git("log -1 --format=%aI"),
    // }),
    // new Dotenv({
    //   path: './.env', // Path to .env file (this is the default)
    //   safe: true, // load .env.example (defaults to "false" which does not use dotenv-safe)
    // })
  ],
};
