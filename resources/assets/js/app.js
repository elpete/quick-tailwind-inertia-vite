import "../css/app.css";
import { createApp, h } from 'vue'
import { Link } from '@inertiajs/inertia-vue3'
import { createInertiaApp } from '@inertiajs/inertia-vue3'

createInertiaApp({
  resolve: async (name) => {
    const pages = import.meta.glob('./Pages/**/*.vue');
    return (await pages[`./Pages/${name}.vue`]()).default;
  },
  setup({ el, App, props, plugin }) {
    createApp({ render: () => h(App, props) })
      .component('inertia-link', Link)
      .use(plugin)
      .mount(el)
  },
})