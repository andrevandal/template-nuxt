---
to: components/<%= atomic %>/<%= h.changeCase.pascal(componentName) %>/<%= h.changeCase.pascal(componentName) %>.vue
---

<template>
  <div class="<%= h.changeCase.kebab(atomic ? atomic + ' ' + componentName : componentName) %>">
    <%= h.changeCase.camel(componentName)  %>
  </div>
</template>

<script lang="ts" setup>
/* -- type, interface -- */
<% if (isProps) { -%>
export interface I<%= h.changeCase.pascal(componentName) %>Props {
  modelValue: any;
}
<% } -%>
<% if (isProps && isEmit) { -%>

<% } -%>
<% if (isEmit) { -%>
export interface I<%= h.changeCase.pascal(componentName) %>Emits {
  (e: 'update:modelValue'): void
}
<% } -%>

/* -- store -- */

/* -- props, emit -- */
<% if (isProps) { -%>
const props = withDefaults(defineProps<I<%= h.changeCase.pascal(componentName) %>Props>(), {
  modelValue: false
})
<% } -%>
<% if (isProps && isEmit) { -%>

<% } -%>
<% if (isEmit) { -%>
const emit = defineEmits<I<%= h.changeCase.pascal(componentName) %>Emits>()
<% } -%>

/* -- variable(ref, reactive, computed) -- */
<% if (isProps && isEmit) { -%>
const vModel = useVModel(props, 'modelValue', emit)
<% } -%>

/* -- function -- */

/* -- watch -- */

/* -- life cycle -- */
</script>

<style lang="scss" scoped>
.<%= h.changeCase.kebab(atomic ? atomic + ' ' + componentName : componentName) %> {

}
</style>
