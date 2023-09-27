<template>
    <draggable v-model="list" tag="div" group="productGroup" class="grid lg:grid-cols-10 m-10 p-8 gap-5 bg-blue-300 rounded xl">
      <template #item="{element: image}" class="flex gap-2 m-2 p-2">
        <div class="border border-black p-4 rounded-xl" :itemKey="image.id" >
            <img :src="`storage/products/${image.image_url}`" alt="" class="w-24 h-24 object-cover">
            <p class="text-black  font-bold">{{ image.Produktname }}</p>
        </div>
      </template>
    </draggable>
  </template>

<script setup>
import { ref } from 'vue';
import { usePage } from '@inertiajs/vue3';
import draggable from 'vuedraggable';


defineProps({
    csvData: {
        type: Array,
    },
});

const page = usePage();
const list = ref(page.props.csvData);


</script>

<style scoped>

</style>