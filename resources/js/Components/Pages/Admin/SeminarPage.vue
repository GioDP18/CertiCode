<script setup>
import axios from 'axios';
import { ref, onMounted } from 'vue';
import { useRouter } from 'vue-router';

const router = useRouter();

const seminars = ref([]);

onMounted(() => {
    getAllSeminars();
})


const getAllSeminars = async () => {
    try{
        await axios.get('http://localhost:8000/api/auth/get-all-seminars')
        .then((response) => {
            seminars.value = response.data.seminars;
        })
    }
    catch(error){
        console.log(error);
    }
}

const goToSeminarInfo = (id) => {
    router.push({ name: "admin-seminarInfo/:id", params: {id: id}});
}

</script>

<template>
    <div class="main-content">
        <div class="content">
            <div class="column-1">
                <div class="table-card">
                    <div class="content-text">Seminars</div>
                    <div class="container">
                        <div class="row row-cols-lg-4">
                            <div class="col py-3" v-for="seminar in seminars" :key="seminar.id" @click="goToSeminarInfo(seminar.id)">
                                <div class="seminar-card">
                                    <div class="seminar-topic">{{ seminar.topic }}</div>
                                    <div class="seminar-date">February 18, 2024 - 8:00 AM</div>
                                    <div class="seminar-speaker">
                                        <span style="font-weight: 700">Speaker: </span>Tom Oliver Chua
                                    </div>
                                    <div class="seminar-about">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                        tempor
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    background-color: transparent;
    margin: auto;
}


.content {
    background-color: transparent;
    padding: 20px;
}

.column-1 {
    display: flex;
    flex-direction: column;
    line-height: normal;
    width: 100%;
    margin-left: 0px;
    margin-top: 30px;
}

@media (max-width: 991px) {
    .column-1 {
        width: 100%;
    }
}

.content-text {
    color: #fff;
    font: 400 20px Inter, sans-serif;
    margin-bottom: 20px;
    background-color: #47555E;
    padding: 12px 20px;
    border-radius: 10px;
    width: 100%;
}

@media (max-width: 991px) {
    .content-text {
        max-width: 100%;
    }
}

@media (max-width: 991px) {
    .row {
        max-width: 100%;
        gap: 20px;
    }
}

.seminar-card {
    border-radius: 10px;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    background-color: #fff;
    display: flex;
    max-width: 197px;
    flex-direction: column;
    font-size: 12px;
    color: rgba(60, 54, 51, 0.7);
    font-weight: 400;
    padding: 25px 15px;
    overflow: hidden;
}

@media (max-width: 991px) {
    .seminar-card {
        padding: 10px 10px;
    }
}

.seminar-topic {
    white-space: normal;
    font: 800 20px Inter, sans-serif;
}

@media (max-width: 991px) {
    .seminar-topic {
        white-space: normal;
        font: 800 15px Inter, sans-serif;
    }
}

.seminar-date {
    font-family: Inter, sans-serif;
    margin-top: 10px;
    white-space: normal;
}

@media (max-width: 991px) {
    .seminar-date {
        white-space: normal;
        font: 10px Inter, sans-serif;
    }
}

.seminar-speaker {
    font-family: Inter, sans-serif;
    margin-top: 27px;
    white-space: normal;
}

@media (max-width: 991px) {
    .seminar-speaker {
        white-space: normal;
        font: 12px Inter, sans-serif;
    }
}

.seminar-about {
    margin-top: 19px;
    font: 300 14px Inter, sans-serif;
    white-space: normal;
}

@media (max-width: 991px) {
    .seminar-about {
        white-space: normal;
        font: 300 13px Inter, sans-serif;
    }
}
</style>
