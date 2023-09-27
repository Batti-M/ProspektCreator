<template>

    
        <div v-if="csvData" class=" bg-blue-100 w-3/4 border border-blue-200 text-bold rounded flex items-center my-8">
            <table class="w-full" >
                <thead class="">
                    <tr class="w-screen border border-blue-200">
                        <th class="border border-blue-200" v-for="head in headers" :key="head">{{ head }}</th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="row in rows" :key="row.id" class="border border-blue-200">
                        <td class="border border-blue-200 p-2" v-for="product in row" :key="product.id">{{ product }}</td>
                    </tr>
                
                </tbody>
            </table>
        </div>
  
</template>

<script setup>


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
