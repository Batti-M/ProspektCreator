<template>
    <div class="flex">

        <div v-for="item in watchlist" :key="item.id" class="flex flex-col border p-4">
            <heading class="font-bold">{{ item.name }}</heading>
            <img class="w-12 h-12" :src="`storage/products/${item.image}`">
            <p> {{item.price }}€</p>
            
        </div>
    </div>
</template>

<script setup>
import axios from 'axios';
import  { onMounted , ref} from 'vue';
import { usePage } from '@inertiajs/vue3';  

defineProps({
    watchListData: {
        type: Array,
    },
});

const page = usePage();
const watchlist = ref([])

onMounted(() => {
    axios.get('api/watchlist')
        .then(response => {
            console.log(response)
            watchlist.value = response.data;
            page.props.watchlistData = response.data;
        })
        .catch(error => {
            console.log(error);
        });
})
</script>

