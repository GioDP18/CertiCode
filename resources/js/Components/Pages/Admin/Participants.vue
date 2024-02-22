<script setup>
import axios from 'axios';
import { ref, onMounted } from 'vue';
import DataTable from 'datatables.net-vue3';
import DataTablesCore from 'datatables.net-bs5';

DataTable.use(DataTablesCore);

const isGenerating = ref(false);
const allUsers = ref([]);

onMounted(async () => {
    getUsers();
    initializeDataTables();
});

const getUsers = async () => {
    try {
        await axios.get('http://127.0.0.1:8000/api/auth/get-all-users')
            .then((response) => {
                console.log(response.data);
                allUsers.value = response.data.users;
                // console.log(allUsers.value);
            })
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
                    <table id="dailyTimeLog" class="table table-striped table-hover" width="100%;">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Gender</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="user in allUsers" :key="user.id">
                                <td>{{ user.firstname }} {{ user.middlename }} {{ user.lastname }}</td>
                                <td>{{ user.gender }}</td>
                                <td>
                                    <button class="card14" data-bs-toggle="modal" data-bs-target="#sendUserCertModal">
                                        <span class="send-text">Send a specific Certificate <i><font-awesome-icon
                                                    :icon="['fas', 'paper-plane']" /></i></span>
                                    </button>
                                </td>
                            </tr>
                        </tbody>
                    </table>



                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="sendUserCertModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
            aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <form action="">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="staticBackdropLabel"><i class="fa-solid fa-pen-to-square"></i>
                                Edit Information</h1>
                        </div>
                        <div class="modal-body">
                            <div class="mb-3">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                    tempor incididunt
                                    ut labore et
                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                    ullamco laboris nisi ut aliquip
                                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                                    velit esse cillum dolore eu
                                    fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt
                                    in culpa qui officia
                                    deserunt mollit anim id est laborum.</p>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn save" style="background-color:#303841; color:white;"
                                @click="saveInformation">Save</button>
                            <button type="button" class="btn close" id="closeCreateModal" data-bs-dismiss="modal"
                                style="border: 2px solid #303841;">Close</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</template>

<style scoped>
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
    width: 75%;
}

.card14 i {
    color: #7AA5D2;
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
