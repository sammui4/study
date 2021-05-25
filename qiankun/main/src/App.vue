<template>
  <div id="nav">
    <router-link to="/">跳转到父页面</router-link> |
    <router-link to="/vue">跳转到子页面</router-link> |
    <router-link to="/vue/child">跳转到子页面的具体页面</router-link>
  </div>
  <router-view/>
  <div id="vue"></div>
</template>

<style lang="scss">
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

#nav {
  padding: 30px;

  a {
    font-weight: bold;
    color: #2c3e50;

    &.router-link-exact-active {
      color: #42b983;
    }
  }
}
</style>
