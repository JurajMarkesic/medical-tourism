# COMPONENTS

**This directory is not required, you can delete it if you don't want to use it.**

The components directory contains your Vue.js Components.

_Nuxt.js doesn't supercharge these components._

Supercharging is a dumb way of saying you cannot use asyncData() inside your Components folder. Use it in Pages folder.

> Nuxt.js supercharges^[1]^ the data method from vue.js to let you handle async operation before setting the component data.

> You may want to fetch data and render it on the server-side. Nuxt.js adds an asyncData method to let you handle async operations before setting the component data.^[2]^

[[1] Read more about Nuxt.js supercharged data](https://github.com/nuxt/docs/blob/38fe1a1d59bf1d8c25478c9f866af101543b40c4/ru/examples/async-datas.md)

[[2] Read more about The asyncData Method](https://github.com/nuxt/docs/blob/38fe1a1d59bf1d8c25478c9f866af101543b40c4/en/guide/async-data.md)
