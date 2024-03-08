const shuffleTheme = require("./themes/nigodo.config.js");
const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  ...shuffleTheme,
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,haml,html,slim}",
  ],
  plugins: [
    require("@tailwindcss/forms"),
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/typography"),
    require("@tailwindcss/container-queries")
  ],
};
