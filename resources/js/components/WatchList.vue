<template>
    <div v-for="item in items" :key="item.id">
        <img src="" alt="">
        <heading> product-name </heading>
        <p> product-description </p>
        <p> product-price </p>
        <button> add-to-watchlist </button>
    </div>
</template>

<script setup>

defineProps({
    items: {
        type: Array,
    },
});

</script>

