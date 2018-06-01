import Vue from 'vue'

document.addEventListener('DOMContentLoaded', () => {
  var allPosts = new Vue({
    el: '#all-posts',
    data: {
      posts: [
        { title: 'Learn JavaScript', content: 'Why???' },
        { title: 'Learn Vue', content: 'Yes, do this' },
        { title: 'Build something awesome', content: 'Also do this' }
      ]
    }
  })
})