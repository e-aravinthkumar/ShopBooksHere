/** @type {import('tailwindcss').Config} */

const {withAnimations} = require('animated-tailwindcss');

module.exports = withAnimations({
  content: [
    "./src/**/*.{html,ts}",
  ],
  theme: {
    extend: {},
  },
  plugins: [
  ],
})