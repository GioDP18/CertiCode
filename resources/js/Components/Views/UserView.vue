<template>
    <div>
        <nav class="header sticky-top">
            <RouterLink to="/user/dashboard" style="text-decoration: none; display: flex;">
                <img loading="lazy" src="../../../../public/external/C-Logo.png" class="img" />
                <p class="logo-text">CertiCode</p>
            </RouterLink>
            <form class="search-input">
                <div class="input-group">
                    <input v-model="searchQuery" style="padding: 5px;" type="text" class="form-control" placeholder="Search">
                    <div class="input-group-btn">
                        <button
                            style="padding: 5px 8px; box-shadow:0px 0px 0px 2px #e2e0e0 inset; border-radius: 0px 5px 5px 0px;"
                            class="btn btn-default" type="submit">
                            <i><font-awesome-icon style="color: #000; height: 18px;" class="icon"
                                    :icon="['fas', 'fa-search']" /></i>
                        </button>
                    </div>
                </div>
            </form>
            <div class="logout-button">
                <i><font-awesome-icon style="color: #000; height: 18px;" class="icon" :icon="['fas', 'fa-power-off']" /></i>
            </div>
        </nav>
        <SearchResult v-if="searchQuery" :searchResults="resultsObjects" />
        <router-view v-if="!searchQuery"></router-view>
    </div>
</template>

<script setup>
import { ref, watch } from 'vue';
import axios from 'axios';
import SearchResult from '../Pages/User/Search.vue';
import { useRouter } from 'vue-router'
import store from '../../State/index.js';
import { storeKey } from 'vuex';

const router = useRouter();
const searchQuery = ref('');
const resultsObjects = ref([]);

router.beforeEach((to, from, next) => {
    searchQuery.value = '';
    next();
});

router.afterEach((to, from) => {
    if (to.path === '/user/dashboard') {
        searchQuery.value = '';
    }
});

watch(searchQuery, () => {
    searhSeminar();
});

const searhSeminar = async () => {
    try {
        
        await axios.post('http://127.0.0.1:8000/api/auth/search', {
            query: searchQuery.value,
        })
        .then((response) => {
            resultsObjects.value = response.data.results
            console.log(response.data.results);
        })
    } catch (error) {
        console.error(error);
    }
}

</script>

<style scoped>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

.header {
    background-color: #EEEEEE;
    display: flex;
    align-items: center;
    justify-content: space-between;
    color: var(--Black, #191919);
    height: 77px;
    margin: auto;
    padding: 0px 30px 0px 30px;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
}

@media (max-width: 991px) {
    .header {
        max-width: 100%;
        padding: 0px 5px 0px 5px;
    }
}

.logo-text {
    font-family: Inter, sans-serif;
    flex-grow: 1;
    font-size: 25px;
    color: var(--Black, #191919);
    font-weight: 600;
    margin-left: 5px;
}

@media (max-width: 991px) {
    .logo-text {
        font-size: 15px;
    }
}

@media (max-width: 991px) {
    .img {
        height: 30px;
        width: 30px;
    }
}

.search-input {
    width: 500px;
}

@media (max-width: 991px) {
    .search-input {
        width: 150px;
    }
}

.logout-button {
    border-radius: 8px;
    border: 2px solid #e2e0e0;
    padding: 8px 10px;
    cursor: pointer;
}

.logout-button:hover {
    border: 2px solid #929699;
}

</style>
