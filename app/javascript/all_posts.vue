<template>
  <div id="all-posts">
    <div v-for="post in posts">
      <h3>{{ post.title }}</h3>
      <p>{{ post.content }}</p>
    </div>
  </div>
</template>

<script>
export default {
  name: "all-posts",
  data: function () {
    return {
      posts: [
        { title: 'Learn JavaScript', content: 'Why???' },
        { title: 'Learn Vue', content: 'Yes, do this' },
        { title: 'Build something awesome', content: 'Also do this' }
      ]
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>