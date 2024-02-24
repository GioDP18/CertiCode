<script setup>
import axios from 'axios';
import { ref, onMounted } from 'vue';
import store from '../../../State/index.js';
import { inject } from 'vue';
import $ from 'jquery';

// Inject swal and BASE_URL
const swal = inject('$swal');

const allUsers = ref([]);

onMounted(async () => {
    await getUsers();
    initializeDataTable();
});

const initializeDataTable = () => {
    $('#dailyTimeLog').DataTable();
};

const getUsers = async () => {
    try {
        await axios.get('http://127.0.0.1:8000/api/auth/get-all-users')
            .then((response) => {
                allUsers.value = response.data.users;
            })

    } catch (error) {
        console.error(error);
    }
};

const getSeminarsAttended = async (id) => {
    try {
        const response = await axios.post('http://127.0.0.1:8000/api/auth/get-seminars-attended', {
            user_id: id
        });
        console.log(response.data);
        const userIndex = allUsers.value.findIndex(user => user.id === id);
        if (userIndex !== -1) {
            allUsers.value[userIndex].participation = response.data.user.participation;
        }
    } catch (error) {
        console.error(error);
    }
};


const sendCert = async (participantID, certificateID) => {
    store.commit('setSendingCerts', true);
    try {
        await axios.post(`http://127.0.0.1:8000/api/auth/send-one-certificate`, {
            participant_id: participantID,
            certificate_id: certificateID
        })
            .then((response) => {
                if (response.data.success) {
                    swal({
                        title: 'Success',
                        text: response.data.message,
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
    }
    catch (error) {
        console.error(error.response.data.message);
    }
    finally {
        store.commit('setSendingCerts', false);
    }
};
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
                                    <button class="card14" data-bs-toggle="modal"
                                        :data-bs-target="'#sendUserCertModal_' + user.id"
                                        @click="getSeminarsAttended(user.id)">
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
        <div v-for="user in allUsers" :key="user.id" class="modal fade" :id="'sendUserCertModal_' + user.id"
            data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel"
            aria-hidden="true">
            <div class="modal-dialog">
                <form action="">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="staticBackdropLabel">Send Certificate</h1>
                            <button type="button" class="button-close" data-bs-dismiss="modal"
                                aria-label="Close"><font-awesome-icon :icon="['fas', 'xmark']" /></button>
                        </div>
                        <div class="modal-body">
                            <div class="mb-3">
                                <p>Seminars
                                    Attended</p>
                            </div>
                            <!-- <ul v-if="user.participation" class="seminar-list">
                                <li class="d-flex" v-for="participant in user.participation" :key="participant.id"> -->
                            <ul>
                                <li>
                                    <div class="list-item">
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto soluta vitae
                                            accusantium et distinctio nisi dicta</p>
                                        <div class="modal-send">
                                            <button @click="sendCert(participant.id, participant.seminar.id)"
                                                data-toggle="tooltip" data-placement="top" title="Send">
                                                <i><font-awesome-icon :icon="['fas', 'paper-plane']" /></i>
                                            </button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="list-item">
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                                        <div class="modal-send">
                                            <button @click="sendCert(participant.id, participant.seminar.id)"
                                                data-toggle="tooltip" data-placement="top" title="Send">
                                                <i><font-awesome-icon :icon="['fas', 'paper-plane']" /></i>
                                            </button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="list-item">
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto soluta vitae
                                            accusantiu</p>
                                        <div class="modal-send">
                                            <button @click="sendCert(participant.id, participant.seminar.id)"
                                                data-toggle="tooltip" data-placement="top" title="Send">
                                                <i><font-awesome-icon :icon="['fas', 'paper-plane']" /></i>
                                            </button>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <div>
                                <!-- <div v-else> -->
                                <p>No seminars
                                    attended
                                </p>
                            </div>
                        </div>
                        <div class="modal-footer">
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
    margin-right: 6px;
    margin-top: 6px;
    margin-bottom: 6px;
}

.send-text i {
    color: #7AA5D2;
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

.modal-header {
    background-color: #303841;
    color: #ffffff;
}

.modal-header .button-close {
    color: white !important;
    background-color: transparent;
    border: none;
    font-size: 20px;
}

.list-item {
    position: relative;
}

.list-item p {
    margin-right: 20%;
}

.modal-send {
    position: absolute;
    top: 0;
    right: 0;
    width: 13%;
    border-radius: 20px;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
}

.modal-send button {
    background-color: transparent;
    border: none;
    width: 100%;
}

.modal-send i {
    color: #7AA5D2;
}

.close:hover {
    background-color: #303841;
    color: #ffffff;
}
</style>
