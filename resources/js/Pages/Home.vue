<script setup>
import ProductsTable from './ProductsTable.vue';
import CsvUpload from './CsvUpload.vue';

defineProps({
    csvData: {
        type: Array,
    },
    headers: {
        type: Array,
    },
    rows: {
        type: Array,
    },
});


</script>

<template>
    <div class="bg-gray-900 flex flex-col justify-center items-center min-h-screen">
         <h1 class="text-2xl text-white bg-gray-900 mb-10">Welcome to my prospektCreator</h1>

         <CsvUpload />
         <ProductsTable :csvData="csvData" :headers="headers" :rows="rows" /> 
    </div>
</template>

<style>


</style>
