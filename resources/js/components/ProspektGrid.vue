<template>
  <div class=" bg-blue-300 m-10 p-10">
    <TransitionGroup>

      <draggable v-model="currentPageData" group="productGroup" v-bind="dragOptions"
        class="grid lg:grid-cols-4 md:grid-cols-2 sm:grid-cols-1 gap-4 p-6 h-auto" @start="drag = true"
        @end="drag = false">
        <template #item="{ element, index }">
          <div :itemKey="element.id" class="p-6 rounded-lg shadow-md mt-10 flex flex-col justify-between"
            :class="index === 0 ? ' col-span-2 bg-yellow-300' : 'bg-yellow-100 col-span-1'">
            <div class="flex justify-between">
              <img :src="`storage/products/${element.image_url}`" alt="" class="w-36 h-36 object-cover"
              :class="index === 0 && 'w-full h-50 object-fit'">
              <button  @click="addToWatchList(element)" class="bg-blue-500 hover:bg-blue-700 text-white font text-xs py-2 px-4 flex-grow-0 h-12 rounded">
                Add to Watchlist
              </button>
            </div>
            <h2 class="text-xl font-semibold mb-2 underline">{{ element.Produktname }}</h2>
            <p class="text-xs text-gray-600 mb-4">Angebot bis zum {{ element.Angebotsdatum }}</p>
            <p class="text-gray-600 mb-4"> {{ element.Produktbeschreibung }}</p>
            <div class="flex items-end justify-between">
              <span class="text-gray-500 line-through bg-gray-400 p-3 text-white rounded">{{ element.Preis }}</span>
              <span class="text-red-500 font-semibold bg-red-200 p-3 rounded ">neuer Preis:
                <span class="text-red-500 text-2xl">
                  {{ (element.Preis - (element.Preis * element.Angebot_in_prozent / 100)).toFixed(2) }}€
                </span>
              </span>
              <div class="text-sm bg-green-200 text-green-800 p-3 rounded">{{ element.Angebot_in_prozent }}% reduziert
              </div>
            </div>

          </div>
        </template>
      </draggable>
    </TransitionGroup>

    <vue-awesome-paginate :total-items="cards.length" :items-per-page="7" v-model="currentPage"
      :on-click="onClickHandler">
    </vue-awesome-paginate>
  </div>
</template>
  
<script setup>
import { ref, computed, watch , onMounted } from 'vue';
import { usePage } from '@inertiajs/vue3';
import draggable from 'vuedraggable';
import axios from 'axios';

defineProps({
  csvData: {
    type: Array,
  },
});

const dragOptions = ref({
  animation: 200,
  group: 'productGroup',
  disabled: false,
  ghostClass: 'ghost',
});

const page = usePage();
const cards = ref(page.props.csvData);

const currentPage = ref(1);
const itemsPerPage = 7;

const currentPageData = computed({
  get: () => {
    const startIndex = (currentPage.value - 1) * itemsPerPage;
    const endIndex = startIndex + itemsPerPage;
    return cards.value.slice(startIndex, endIndex);
  },
  set: (value) => {
    const startIndex = (currentPage.value - 1) * itemsPerPage;
    cards.value.splice(startIndex, itemsPerPage, ...value);
  },
});
onMounted(() => {
  fetchWatchlist();
})

watch(currentPage, () => {
  currentPageData.value = currentPageData.value;
});

const onClickHandler = (page) => {
  currentPage.value = page;
};

const fetchWatchlist = () => {
    axios.get('api/watchlistData')
        .then(response => {
            console.log(response)
            page.props.watchlistData = response.data;
        })
        .catch(error => {
            console.log(error);
        });
}

const addToWatchList = (item) => {
  axios.post('/watchList', {
    id: item.id,
    name: item.Produktname,
    price: item.Preis,
    image: item.image_url,
  })
    .then((response) => {
      fetchWatchlist();

    }, (error) => {
      console.log(error);
    });
};


</script>
<style>
.pagination-container {
  display: flex;
  column-gap: 10px;
}

.paginate-buttons {
  height: 40px;
  width: 40px;
  border-radius: 20px;
  cursor: pointer;
  background-color: rgb(242, 242, 242);
  border: 1px solid rgb(217, 217, 217);
  color: black;
}

.paginate-buttons:hover {
  background-color: #d8d8d8;
}

.active-page {
  background-color: #3498db;
  border: 1px solid #3498db;
  color: white;
}

.active-page:hover {
  background-color: #2988c8;
}
</style>