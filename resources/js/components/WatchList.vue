<template>
    <div class="flex">

        <div v-for="item in watchlist" :key="item.id" class="flex flex-col border p-4">
            <heading class="font-bold">{{ item.name }}</heading>
            <img class="w-12 h-12" :src="`storage/products/${item.image}`">
            <p> {{item.price }}€</p>
            
            <button  @click="removeFromWatchlist(item)" class="bg-red-500 hover:bg-red-700 text-white font text-xs py-2 px-4 flex-grow-0 rounded">
                   Delete
                  </button>
        </div>
    </div>
</template>

<script setup>
import axios from 'axios';
import  { onMounted , ref , watch} from 'vue';
import { usePage } from '@inertiajs/vue3';  

defineProps({
    watchlistData: {
        type: Array,
    },
});

const page = usePage();
let watchlist = ref(page.props.watchListData);

onMounted(() => {
    axios.get('api/watchlistData')
        .then(response => {
            console.log(response)
            watchlist.value = response.data;
            page.props.watchlistData = response.data;
        })
        .catch(error => {
            console.log(error);
        });
})
           

watch(watchlist.value, (newValue, oldValue) => {
    watchlist.value = newValue;
})

const removeFromWatchlist = (item) => {

    axios.delete(`api/watchlistData/${item.id}`)
        .then(response => {
            console.log(response)
            watchlist.value = response.data;
        })
        .catch(error => {
            console.log(error);
        });
};
</script>

