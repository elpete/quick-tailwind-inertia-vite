module.exports = {
  purge: [
    "./views/**/*.{cfm}",
    "./layouts/**/*.{cfm}",
    "./resources/assets/js/**/*.{vue,js,ts}"
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {},
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
