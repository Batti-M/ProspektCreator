<template>
    <form @submit.prevent="submit" class="bg-gray-200 p-4 rounded" accept="text/csv" enctype="multipart/form-data">
        <div class="flex flex-col">
            <label for="csv_file">Upload your csv file here</label>
            <input type="file" class="rounded" id="csv_file" @input="uploadCSV">
            <button type="submit" class="bg-blue-400 px-6 py-2 rounded-xl m-4" :disabled="form.processing">Upload</button>
        </div>
    </form>
    <p class="text-green-500 p-2 rounded">{{ message }}</p>
    <Link v-if="headers.length > 0" href="/prospektCreator" type="button" class="bg-blue-400 text-white px-5 py-2 rounded-xl"> Create your brochure now!</Link>
    
    <ProductsTable v-if="headers && rows" :headers="headers" :rows="rows" />
</template>

<script setup>
import { ref } from 'vue';
import { useForm, usePage, Link } from '@inertiajs/vue3';


const form = useForm({
    csv_file: null,
});

const page = usePage();
const headers = ref([]);
const rows = ref([]);
const message=ref("");

function submit() {
    form.post('/upload', {
        onSuccess: (response) => {
          
            headers.value = response.props.headers;
            rows.value = response.props.rows;
            message.value = response.props.message;
        
            form.reset();
        },
        onError: (errors) => {
        console.log('Errors:', errors);
    }
    });
}

function uploadCSV(event) {
    form.csv_file = event.target.files[0];
}

</script>

