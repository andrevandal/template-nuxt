<template>
  <div id="app">
    <NuxtLayout :name="layout">
      <NuxtPage />
    </NuxtLayout>
  </div>
</template>

<script lang="ts" setup>
/* -- type, interface -- */

/* -- store -- */
const colorMode = useColorMode()
const colorStore = useColorStore()

/* -- props, emit -- */

/* -- variable(ref, reactive, computed) -- */
const { displayType } = displayStatus()
const layout = computed(() => {
  if (displayType.value === 'sm') {
    return 'smartphone'
  } else {
    return 'default'
  }
})

/* -- function -- */

/* -- watch -- */

/* -- life cycle -- */
onBeforeMount(() => {
  if (colorMode.value === 'dark') {
    colorStore.setDarkTheme()
  } else {
    colorStore.setLightTheme()
  }
})

</script>

<style lang="scss">
html, body {
  margin: 0px;

  font-family: 'Noto Sans JP', sans-serif;
}

#app {
  height: 100vh;
  width: 100vw;
  background-color: v-bind("colorStore.color.theme.background");
  color: v-bind("colorStore.color.theme.text");
}
</style>
