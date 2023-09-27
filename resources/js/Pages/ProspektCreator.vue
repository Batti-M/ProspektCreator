<template>
    <ProspektGrid :csvData="csvData" />
    <ProductList :csvData="csvData" />
</template>

<script setup>
import ProspektGrid from '../components/ProspektGrid.vue';
import ProductList from '../components/ProductList.vue';
</script>
