<script setup>
import axios from 'axios';
import { useRoute } from 'vue-router';
import { ref, onMounted, watch } from 'vue';
import moment from 'moment';
import store from '../../../State/index.js';

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
    } catch (error) {
        console.error("Error Sending Certificates:", error);
    } finally {
        store.commit('setSendingCerts', false);
    }
};

onMounted(() => {
    getSeminarInfo();
})

const getSeminarInfo = async () => {
    try{
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
    catch(err){
        console.log(err);
    }
}

const formatDate = (dateString) => {
  try{
    const formattedTime = moment(dateString, 'HH:mm:ss').format('hh:mm A')
    const formattedDate = moment(dateString).format('MMM D, YYYY');
    return `${formattedTime} | ${formattedDate}`;
  }
  catch(error){
    console.error(error);
    return 'Invalid Date';
  }
};

</script>

<template>
    <div>
        <h1>{{ topic }}</h1>
        <p>{{ about_this_seminar }}</p>
        <h4>Speaker: {{ speaker }}</h4>
        <img :src="speaker_image">
        <p>{{ about_the_speaker }}</p>
        <h5>Date: {{ formatDate(date) }}</h5>
        <hr>
        <h5>Participants:</h5>
        <ul>
            <li v-for="participant in participants" :key="participant.id">
                <input type="checkbox" v-model="selectedParticipants" :value="participant.id">
                <b>{{ participant.firstname }} {{ participant.middlename }} {{ participant.lastname }}</b>
            </li>
        </ul>
        <button @click="sendCertificates" :disabled="selectedParticipants.length === 0">
            Send Certificates
        </button>
    </div>
</template>

<style scoped>

</style>
