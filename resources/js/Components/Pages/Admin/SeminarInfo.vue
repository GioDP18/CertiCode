<script setup>
import axios from 'axios';
import { useRoute } from 'vue-router';
import { ref, onMounted, watch } from 'vue';
import moment from 'moment';
import store from '../../../State/index.js';
import $ from 'jquery';

const route = useRoute();
const seminarID = route.params.id;

const topic = ref('');
const about_this_seminar = ref('');
const speaker = ref('');
const speaker_image = ref('');
const about_the_speaker = ref('');
const date = ref('');
const participants = ref([]);

const selectedParticipants = ref([]);

const selectedParticipantDetails = ref([]);

watch(selectedParticipants, (newValue) => {
    selectedParticipantDetails.value = participants.value.filter(participant => newValue.includes(participant.id));
});

const sendCertificates = async () => {
    store.commit('setSendingCerts', true);
    try {
        await Promise.all(selectedParticipantDetails.value.map(async participant => {
            await axios.post(`${localStorage.getItem('BASE_URL')}/api/auth/send-one-certificate`, {
                seminar_id: seminarID,
                participant_id: participant.id
            });
        }));
    }
    catch (error) {
        console.error("Error Sending Certificates:", error);
    }
    finally {
        store.commit('setSendingCerts', false);
    }
};

onMounted(async () => {
    await getSeminarInfo();
    initializeDataTable();
});

const initializeDataTable = () => {
    $('#dailyTimeLog').DataTable();
};

const getSeminarInfo = async () => {
    try {
        await axios.get(`${localStorage.getItem('BASE_URL')}/api/auth/seminar-info/${seminarID}`)
            .then((response) => {
                console.log(response.data)
                topic.value = response.data.info.topic;
                about_this_seminar.value = response.data.info.about_this_seminar;
                speaker.value = response.data.info.speaker;
                speaker_image.value = response.data.info.speaker_image;
                about_the_speaker.value = response.data.info.about_the_speaker;
                date.value = response.data.info.date;
                participants.value = response.data.info.participants;
            })
    }
    catch (err) {
        console.log(err);
    }
}

const formatDate = (dateString) => {
    try {
        const formattedTime = moment(dateString, 'HH:mm:ss').format('hh:mm A')
        const formattedDate = moment(dateString).format('MMM D, YYYY');
        return `${formattedTime} | ${formattedDate}`;
    }
    catch (error) {
        console.error(error);
        return 'Invalid Date';
    }
};

</script>

<template>
    <div class="main-container">
        <div class="content">
            <div class="cover-photo">
                <img src="../../../../../public/external/sample.jpg" alt="">
                <div class="seminar-topic">
                    <h1>{{ topic }}</h1>
                    <div class="about-seminar">
                        <p>{{ about_this_seminar }}</p>
                    </div>
                    <div class="date-container">
                        <i><font-awesome-icon :icon="['fas', 'calendar-day']" /></i>
                        <h5>{{ formatDate(date) }}</h5>
                    </div>
                </div>
            </div>
            <div class="white-container">
                <div class="left">
                    <div class="speaker-container">
                        <h4>Speaker:</h4>
                        <ul>
                            <li>
                                <h5>{{ speaker }}</h5>
                            </li>
                        </ul>
                        <div class="about-speaker">
                            <p>{{ about_the_speaker }}</p>
                        </div>
                    </div>
                </div>
                <div class="right">
                    <img src="../../../../../public/external/person.jpg" alt="">
                    <!-- <img :src="speaker_image"> -->
                </div>
            </div>
            <div class="table-card">
                <div class="content-text">Participants</div>
                <table id="dailyTimeLog" class="table table-striped table-hover" width="100%">
                    <thead>
                        <tr>
                            <th style="width: 10%; text-align: center;">Select</th>
                            <th>Name</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="participant in participants" :key="participant.id">
                            <td style="width: 10%; text-align: center;"><input type="checkbox"
                                    v-model="selectedParticipants" :value="participant.id"></td>
                            <td><b>{{ participant.firstname }} {{ participant.middlename }} {{
                        participant.lastname }}</b></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="button-container">
                <button class="button type1" @click="sendCertificates" :disabled="selectedParticipants.length === 0">
                    <span class="btn-txt">Send Certificates</span>
                </button>
            </div>
        </div>
    </div>
</template>

<style scoped>
.content {
    width: 100%;
    display: flex;
    justify-content: center;
    flex-direction: column;
    align-items: center;
}

.cover-photo {
    position: relative;
    display: inline-block;
    z-index: -1;
}

.cover-photo img {
    display: block;
    width: 100%;
    height: auto;
    filter: brightness(50%)
}

.seminar-topic {
    position: absolute;
    top: 30%;
    left: 50%;
    transform: translate(-50%, -50%);
    color: #fff;
    padding: 10px 20px;
    width: 90%;
    text-align: center;
}

.seminar-topic h1 {
    font-family: "Montserrat", sans-serif;
    font-size: 40px;
}

.about-seminar {
    width: 70%;
    position: absolute;
    left: 50%;
    transform: translate(-50%, 1%);
    font-style: italic;
}

.date-container {
    display: flex;
    position: absolute;
    top: 105%;
    left: 50%;
    transform: translate(-50%, 200%);
    gap: 5px;
    font-size: 18px;
}

.date-container h5 {
    font-family: "Montserrat", sans-serif;
}

.white-container {
    width: 85%;
    background-color: white;
    margin-top: -200px;
    display: flex;
    justify-content: center;
    border-radius: 12px;
    box-shadow: rgba(6, 24, 44, 0.4) 0px 0px 0px 2px, rgba(6, 24, 44, 0.65) 0px 4px 6px -1px, rgba(255, 255, 255, 0.08) 0px 1px 0px inset;
}

.left {
    width: 50%;
    height: 100%;
}

.left .speaker-container {
    width: 91%;
    padding-top: 40px;
    margin-left: 20px;
}

.speaker-container h4 {
    font-family: "Montserrat", sans-serif;
}

.speaker-container ul {
    font-size: 20px;
}

.speaker-container .about-speaker p {
    font-size: 15px;
    margin-left: 15px;
    font-style: italic;
}

.right {
    width: 50%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #303841;
    padding-top: 50px;
    padding-bottom: 50px;
    border-top-right-radius: 11px;
    border-bottom-right-radius: 11px;
}

.right img {
    width: 70%;
    border-radius: 8px;
}

.table-card {
    display: flex;
    margin-top: 30px;
    flex-direction: column;
    font-size: 14px;
    color: #000;
    font-weight: 500;
    white-space: nowrap;
    width: 90%;
}

.button-container {
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    padding-top: 30px;
}

.button {
    height: 40px;
    width: 40%;
    position: relative;
    background-color: transparent;
    cursor: pointer;
    border: 2px solid #303841;
    overflow: hidden;
    border-radius: 8px;
    color: #303841;
    transition: all 0.2s ease-in-out;
    margin-bottom: 30px;
}

.btn-txt {
    z-index: 1;
    font-weight: 800;
    letter-spacing: 4px;
}

.type1::after {
    content: "";
    position: absolute;
    left: 0;
    top: 0;
    transition: all 0.5s ease-in-out;
    background-color: #303841;
    border-radius: 8px;
    visibility: hidden;
    height: 10px;
    width: 10px;
    z-index: -1;
}

.button:hover {
    color: #fff;
    border: none;
}

.type1:hover::after {
    visibility: visible;
    transform: scale(100) translateX(2px);
}

@media only screen and (max-width: 360px) {
    .content {
        width: 100%;
    }

    .cover-photo {
        position: static;
        text-align: center;
    }

    .cover-photo img {
        width: 100%;
        height: auto;
        filter: brightness(50%);
    }

    .seminar-topic {
        color: black;
        width: 100%;
        padding-top: 250px;
        position: static;
        margin-left: 50%;
        text-align: start;
    }

    .seminar-topic h1 {
        font-size: 20px;

    }

    .about-seminar {
        font-size: 15px;
        width: 90%;
    }

    .date-container {
        font-size: 15px;
        margin-left: 50%;
        position: static;
        width: 100%;
        margin-top: 90px;
    }

    .white-container {
        width: 100%;
        margin-top: -50%;
        z-index: 0;
        display: flex;
        flex-direction: column;
    }

    .left,
    .right {
        width: 100%;
        margin: 0;
    }

    .right {
        padding: 20px 0;
        border-top-right-radius: 0;
        border-bottom-left-radius: 11px;
        border-bottom-right-radius: 11px;
    }

    .right img {
        width: 100%;
        border-radius: 0;
    }

    .speaker-container {
        margin: 0;
    }

    .table-card {
        width: 100%;
        margin-top: 20px;
    }

    .button-container {
        padding-top: 20px;
        margin-bottom: 20px;
    }

    .button {
        width: 80%;
    }
}
</style>
