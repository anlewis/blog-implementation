import Vue from 'vue/dist/vue.js'
import App from '../app.vue'
import AllPosts from '../all_posts.vue'

new Vue({
  el: '#app',
  render: h => h(App)
})

document.addEventListener('DOMContentLoaded', () => {
  document.body.appendChild(document.createElement('app'))
  const app = new Vue({
    el: 'app',
    template: '<App/>',
    components: { App }
  })

  console.log(app)
})

document.addEventListener('DOMContentLoaded', () => {
  document.body.appendChild(document.createElement('all-posts'))
  const allPosts = new Vue({
    el: 'all-posts',
    template: '<AllPosts/>',
    components: { AllPosts }
  })

  console.log(allPosts)
})
