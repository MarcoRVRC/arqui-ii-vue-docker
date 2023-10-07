<script setup>
import {onMounted, ref} from "vue";
import {apiProducts} from "./services/neuapp.js";
import Products from "./components/products.vue";

const products = ref([]);

onMounted(async () => {
  loadProducts()
})


async function loadProducts(){
  alert('cargando productos...')
  try{
    let response = await apiProducts()
    if(response.status==200){
      console.log(response.data)
    }
  }catch (err){

  }

}

</script>
<template>
  <products></products>
</template>
