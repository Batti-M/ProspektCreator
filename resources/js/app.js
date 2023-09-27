import './bootstrap';
import VueAwesomePaginate from "vue-awesome-paginate";
import { createApp, h } from 'vue'
import { createInertiaApp } from '@inertiajs/vue3'

import "vue-awesome-paginate/dist/style.css";
import Home from './Pages/Home.vue';


const appName = import.meta.env.VITE_APP_NAME || 'Laravel';

createInertiaApp({
    title: (title) => ` ${appName}`,
  resolve: name => {
    const pages = import.meta.glob('./Pages/**/*.vue', { eager: true })
    return pages[`./Pages/${name}.vue`]
  },
  setup({ el, App, props, plugin }) {
    createApp({ render: () => h(App, props) })
      .use(plugin)
      .use(VueAwesomePaginate)
      .mount(el)
  },
})