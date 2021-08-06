<template>
  <a-layout id="components-layout-demo-top-side-2">
    <!--头文件-->
    <the-header></the-header>
    <!--侧边栏-->
    <router-view/>
    <!--脚文件-->
    <the-footer></the-footer>
  </a-layout>
</template>

<script lang="ts">
  import { defineComponent } from 'vue';
  import TheHeader from '@/components/the-header.vue';
  import TheFooter from '@/components/the-footer.vue';

  export default defineComponent({
    name: 'app',
    components: {
      TheHeader,
      TheFooter
    },
  });
</script>

