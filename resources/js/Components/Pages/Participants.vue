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
    try{
        await axios.post(`http://127.0.0.1:8000/api/auth/send-one-certificate`, {
            user_id : userID,
            certificate_id : certificateID
        })
        .then((response) => {
            console.log(response.data.message)
        })
        .finally(() => {
            isGenerating.value = false;
            console.log(isGenerating.value)
        })
    }
    catch(error){
        console.log(error.response.data.message)
    }
}


</script>

<template>
    <div class="main-panel">
        <div class="content">
            <div class="page-inner mt--5">
                <div class=" bg-light">
                    <div class="card-body">
                        <div class="table-responsive">
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
                                            <button class="btn" @click="sendCert">
                                                Send Certificate
                                                <i>
                                                    <font-awesome-icon class="icon" :icon="['fas', 'fa-paper-plane']" />
                                                </i>
                                            </button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container-fluid">
            </div>
        </footer>
    </div>
</template>

<style scoped>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    background-color: transparent;
}

.main-panel {
    margin: auto;
    background-color: transparent;
}

.content {
    margin-top: 10%;
    background-color: transparent;
    padding: 20px;
}
</style>
