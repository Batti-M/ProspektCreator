<template>
    <ProspektGrid :csvData="csvData" />
    <ProductList :csvData="csvData" />
    <Watchlist :watchlistData="watchlistData"/>
</template>

<script setup>
import Watchlist from '../components/Watchlist.vue';
import ProspektGrid from '../components/ProspektGrid.vue';
import ProductList from '../components/ProductList.vue';
</script>
