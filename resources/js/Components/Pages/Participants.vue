<script setup>
import axios from 'axios';
import 'datatables.net-vue3';
import 'datatables.net-bs5';
import { ref, onMounted } from 'vue';

const isGenerating = ref(false);
const allUsers = ref([]);

onMounted(async () => {
    await getUsers();
    initializeDataTables();
});

const getUsers = async () => {
    try {
        const response = await axios.get('http://127.0.0.1:8000/api/get-all-certificate');
        allUsers.value = response.data.users;
    } catch (error) {
        console.error(error);
    }
};

const sendCert = async (userID, certificateID) => {
    isGenerating.value = true;
    console.log(isGenerating.value)
    try {
        await axios.post(`http://127.0.0.1:8000/api/auth/send-one-certificate`, {
            user_id: userID,
            certificate_id: certificateID
        })
            .then((response) => {
                console.log(response.data.message)
            })
            .finally(() => {
                isGenerating.value = false;
                console.log(isGenerating.value)
            })
    }
    catch (error) {
        console.log(error.response.data.message)
    }
}


</script>

<template>
    <div class="main-content">
        <div class="content">
            <div class="column-1">
                <div class="table-card">
                    <div class="content-text">Participants</div>
                    <DataTable id="dailyTimeLog" class="table table-striped table-hover" width="100%;">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Gender</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Gio O. Dela Pena</td>
                                <td>Male</td>
                                <td>
                                    <button class="card14">
                                        <span class="send-text">Send Certificate</span>
                                        <i class="img-8"><font-awesome-icon style="color: #7AA5D2; height: 16px;"
                                                class="icon" :icon="['fas', 'fa-paper-plane']" /></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>Jhon Vincent Ramada</td>
                                <td>Male</td>
                                <td>
                                    <button class="card14">
                                        <span class="send-text">Send Certificate</span>
                                        <i class="img-8"><font-awesome-icon style="color: #7AA5D2; height: 16px;"
                                                class="icon" :icon="['fas', 'fa-paper-plane']" /></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>Christian Kit V. Rotairo</td>
                                <td>Male</td>
                                <td>
                                    <button class="card14">
                                        <span class="send-text">Send Certificate</span>
                                        <i class="img-8"><font-awesome-icon style="color: #7AA5D2; height: 16px;"
                                                class="icon" :icon="['fas', 'fa-paper-plane']" /></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>Justine Urmeneta</td>
                                <td>Male</td>
                                <td>
                                    <button class="card14">
                                        <span class="send-text">Send Certificate</span>
                                        <i class="img-8"><font-awesome-icon style="color: #7AA5D2; height: 16px;"
                                                class="icon" :icon="['fas', 'fa-paper-plane']" /></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>Tristan Angelo Narido</td>
                                <td>Male</td>
                                <td>
                                    <button class="card14">
                                        <span class="send-text">Send Certificate</span>
                                        <i class="img-8"><font-awesome-icon style="color: #7AA5D2; height: 16px;"
                                                class="icon" :icon="['fas', 'fa-paper-plane']" /></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>Hannah Masana</td>
                                <td>Female</td>
                                <td>
                                    <button class="card14">
                                        <span class="send-text">Send Certificate</span>
                                        <i class="img-8"><font-awesome-icon style="color: #7AA5D2; height: 16px;"
                                                class="icon" :icon="['fas', 'fa-paper-plane']" /></i>
                                    </button>
                                </td>
                            </tr>
                        </tbody>
                    </DataTable>
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
