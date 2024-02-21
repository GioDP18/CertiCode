<script setup>
import axios from 'axios';
import { ref, onMounted } from 'vue';
import DataTable from 'datatables.net-vue3';
import DataTablesCore from 'datatables.net-bs5';
import { inject } from 'vue';
import store from '../../../State/index.js';

// Inject swal and BASE_URL
const swal = inject('$swal');
// const store = inject('$store');
const BASE_URL = inject('$swal');

DataTable.use(DataTablesCore);

const allSeminars = ref([]);

onMounted(async () => {
    await getSeminars();
    initializeDataTables();
});

const getSeminars = async () => {
    try {
        await axios.get('http://127.0.0.1:8000/api/auth/get-all-seminars')
        .then((response) => {
            allSeminars.value = response.data.seminars;
            console.log(allSeminars.value);
        })
    } catch (error) {
        console.error(error);
    }
};


const sendAllCerts = async (seminar_id) => {
    store.commit('setSendingCerts', true);
    try {
        await axios.post(BASE_URL + '/api/auth/send-all-certificate', {
            seminar_id: seminar_id
        })
        .then((response) => {
            if (response.data.success) {
                swal({
                    title: 'Success',
                    text: 'All certificates have been sent',
                    icon: 'success',
                });
            }
            else {
                swal({
                    title: 'Error',
                    text: response.data.message,
                    icon: 'error',
                });
            }
        })
        .finally(() => {
            store.state.commit('setSendingCerts', false);
        });
    }
    catch (error) {
        swal({
            title: 'Error',
            text: error.response.data.message,
            icon: 'error',
        });
    }
}


const handleSendAllCerts = (seminar_id) => {
    swal({
        title: "Do you want to send all certificates for this seminar?",
        showCancelButton: true,
        confirmButtonText: "Send",
    }).then((result) => {
        if (result.isConfirmed) {
            sendAllCerts(seminar_id)
        } else if (result.isDenied) {
            swal("Changes are not saved", "", "info");
        }
    });
}

</script>

<template>
    <div class="main-content">
        <div class="content">
            <div class="column-1">
                <div class="table-card">
                    <div class="content-text">Participants</div>
                    <table id="dailyTimeLog" class="table table-striped table-hover" width="100%;">
                        <thead>
                            <tr>
                                <th>Seminar Topic</th>
                                <th>Speaker</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="seminar in allSeminars" :key="seminar.id">
                                <td>{{ seminar.topic }}</td>
                                <td>{{ seminar.speaker }}</td>
                                <td>
                                    <button class="card14" @click="handleSendAllCerts(seminar.id)">
                                        <span class="send-text">Send Certificates</span>
                                        <i class="img-8"><font-awesome-icon style="color: #7AA5D2; height: 16px;"
                                                class="icon" :icon="['fas', 'fa-paper-plane']" /></i>
                                    </button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
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

.table-card {
    display: flex;
    margin-top: 5px;
    flex-direction: column;
    font-size: 14px;
    color: #000;
    font-weight: 500;
    white-space: nowrap;
}

@media (max-width: 991px) {
    .table-card {
        max-width: 100%;
        margin-top: 7px;
        white-space: initial;
    }
}

.content-text {
    color: rgba(60, 54, 51, 0.7);
    font: 400 20px Inter, sans-serif;
    margin-bottom: 20px;
}

@media (max-width: 991px) {
    .content-text {
        max-width: 100%;
    }
}

.card14 {
    justify-content: space-between;
    border-radius: 20px;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    background-color: #fff;
    display: flex;
    gap: 5px;
    align-items: center;
    border: none;
}

@media (max-width: 991px) {
    .card14 {
        white-space: initial;
    }
}

.send-text {
    font-family: Montserrat, sans-serif;
    align-self: start;
    margin-left: 6px;
    margin-top: 6px;
    margin-bottom: 6px;
}

@media (max-width: 991px) {
    .send-text {
        white-space: initial;
    }
}

.img-8 {
    aspect-ratio: 1.1;
    object-fit: auto;
    object-position: center;
    width: 22px;
    margin-right: 6px;
}
</style>
