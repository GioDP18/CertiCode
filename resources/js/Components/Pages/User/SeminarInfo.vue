<script setup>
import { BaseTransitionPropsValidators, ref } from 'vue';
import { onMounted } from 'vue';
import { inject } from 'vue';
import axios from 'axios';
import moment from 'moment';
import store from '../../../State/index.js';

const swal = inject('$swal');
const checkRegistrationObjects = ref([]);
const seminarInfoObjects = ref([]);
const firstName = ref('');
const middleName = ref('');
const lastName = ref('');
const gender = ref('');
const school = ref('');
const email = ref('');

const currentUrl = window.location.href;

const props = defineProps({
  id: {
    type: String,
    required: true 
  }
});

onMounted(async () => {
    checkRegistration();
    seminarInfo();
});

const checkRegistration = async () => {
    try {
        await axios.post('http://127.0.0.1:8000/api/auth/check-registration', {
            user_id: localStorage.getItem('user_id'),
            seminar_id: props.id,
        })
        .then((response) => {
            checkRegistrationObjects.value = response.data.registered;
            console.log(response.data.registered);
        })
    } catch (error) {
        console.error(error);
    }
}

const seminarInfo = async () => {
    try {
        await axios.post('http://127.0.0.1:8000/api/auth/get-seminar-topic', {
            seminar_id: props.id,
        })
        .then((response) => {
            seminarInfoObjects.value = response.data;
            console.log(response.data.topic);
        })
    } catch (error) {
        console.error(error);
    }
}

const saveInformation = async() => {
    store.commit('setLoading', true);
    try {
        await axios.post('http://127.0.0.1:8000/api/auth/register-seminar', {
            userID: localStorage.getItem('user_id'),
            seminarID: props.id,
            url: currentUrl,
            firstname: firstName.value,
            middlename: middleName.value,
            lastname: lastName.value,
            gender: gender.value,
            email: email.value,
            school: school.value
        })
        .then((response) => {
            store.commit('setLoading', false);
            if(response.data.success){
                swal({
                    title: 'Success',
                    text: response.data.message,
                    icon: 'success',
                });

                setTimeout(() =>{
                    router.push({name: 'seminars'});
                }, 3000)
            }
            else{
                swal({
                    title: 'Error',
                    text: response.data.message,
                    icon: 'error',
                });
            }
        })
    } catch (error) {
        console.error(error)
    }
}

const formatTime = (timeString) => {
  try {
    const formattedTime = moment(timeString, 'HH:mm:ss').format('hh:mm A');
    return formattedTime;
  } catch (error) {
    console.error(error);
    return 'Invalid Time';
  }
};

const formatDate = (dateString) => {
  try {
    const formattedDate = moment(dateString).format('MMM D, YYYY');
    return formattedDate;
  } catch (error) {
    console.error(error);
    return 'Invalid Date';
  }
};


</script>

<template>
    <div class="main-container">
        <div v-for="seminar in seminarInfoObjects" :key="seminar.id" class="sub-container">
            <div class="top page">
                <div class="image-container">
                    <img src="../../../../../public/external/sample.jpg" class="animated-image" alt="">
                    <div class="filter-container">
                        <div class="dark-filter">
                            <div class="overlay-text">
                                <h1>{{ seminar.topic }}</h1>
                                <p class="about">{{ seminar.about_this_seminar }}</p>
                                <div class="strong-hr">
                                </div>
                                <button class="read-button">
                                    <a href="#read-more">Read More</a>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="line">
                <div class="divider"></div>
            </div>
            <section class="more-info page" id="read-more">
                <div class="other-info">
                    <div class="seminar-header">
                        <h1>{{ seminar.topic }}</h1>
                    </div>
                    <div class="date-time">
                        <div class="date-container">
                            <i><font-awesome-icon :icon="['fas', 'calendar-day']" /></i>
                            <p class="time-date">{{ formatDate(seminar.date) }}</p>
                        </div>
                        <div class="time-container">
                            <i><font-awesome-icon :icon="['fas', 'clock']" /></i>
                            <p class="time-date">{{ formatTime(seminar.date) }}</p>
                        </div>
                    </div>
                    <div class="left-right">
                        <div class="left">
                            <div class="speaker-container">
                                <h3>Speaker:</h3>
                                <ul>
                                    <li>
                                        <h5>{{ seminar.speaker }}</h5>
                                    </li>
                                </ul>
                                <p>{{ seminar.about_the_speaker }}</p>
                            </div>
                        </div>
                        <div class="right">
                            <img src="../../../../../public/external/person.jpg" alt="">
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <div v-if="checkRegistrationObjects == false" class="bottom">
            <div class="container-button">
                <button class="register-button" data-bs-toggle="modal"
                    data-bs-target="#registerSeminar"><i><font-awesome-icon
                            :icon="['fas', 'user-plus']" /></i>REGISTER</button>
            </div>
        </div>

        <div v-if="$store.state.loading == true" class="loader-container">
            <div class="text-center" id="wifi-loader">
                <svg class="circle-outer" viewBox="0 0 86 86">
                    <circle class="back" cx="43" cy="43" r="40"></circle>
                    <circle class="front" cx="43" cy="43" r="40"></circle>
                    <circle class="new" cx="43" cy="43" r="40"></circle>
                </svg>
                <svg class="circle-middle" viewBox="0 0 60 60">
                    <circle class="back" cx="30" cy="30" r="27"></circle>
                    <circle class="front" cx="30" cy="30" r="27"></circle>
                </svg>
                <svg class="circle-inner" viewBox="0 0 34 34">
                    <circle class="back" cx="17" cy="17" r="14"></circle>
                    <circle class="front" cx="17" cy="17" r="14"></circle>
                </svg>
                <div class="text tex-center" data-text="Saving Informations.."></div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="registerSeminar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
            aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <form @submit.prevent="saveInformation">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="staticBackdropLabel"><i><font-awesome-icon
                                        :icon="['fas', 'address-card']" /></i>Register</h1>
                            <button type="button" class="button-close" data-bs-dismiss="modal"
                                aria-label="Close"><font-awesome-icon :icon="['fas', 'xmark']" /></button>
                        </div>
                        <div class="modal-body">
                            <div class="modal-container d-flex">
                                <div class="left-modal flex-grow-1">
                                    <div class="mb-3">
                                        <label for="firstName" class="form-label">First Name</label>
                                        <input v-model="firstName" type="text" class="form-control" id="firstName" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="middleName" class="form-label">Middle Name</label>
                                        <input v-model="middleName" type="text" class="form-control" id="middleName" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="lastName" class="form-label">Last Name</label>
                                        <input v-model="lastName" type="text" class="form-control" id="lastName" required>
                                    </div>
                                </div>
                                <div class="right-modal flex-grow-1">
                                    <div class="mb-3">
                                        <label for="gender" class="form-label">Gender</label>
                                        <div class="genderSection">
                                            <div class="d-flex align-items-center gender">
                                                <div class="selection mr-3">
                                                    <input id="male-gender" name="gender" type="radio" value="male"
                                                        v-model="gender" required>
                                                    <label for="male-gender">Male</label>
                                                </div>
                                                <div class="selection">
                                                    <input id="female-gender" name="gender" type="radio" value="female"
                                                        v-model="gender" required>
                                                    <label for="female-gender">Female</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="soc" class="form-label">School/Organization/Company</label>
                                        <input v-model="school" type="text" class="form-control" id="soc">
                                    </div>
                                    <!-- <div class="mb-3">
                                        <label for="position" class="form-label">Position</label>
                                        <input type="text" class="form-control" id="position" required>
                                    </div> -->
                                    <div class="mb-3">
                                        <label for="email" class="form-label">Email</label>
                                        <input v-model="email" type="text" class="form-control" id="email" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn save" style="background-color:#303841; color:white;"
                                >Save</button>
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
.main-container {
    width: 100%;
    position: relative;
    padding: 0;
    margin: 0;
}

.sub-container {
    width: 100%;
}

.page {
    display: grid;
    min-height: 100vh;
    font-size: 4rem;
    background: var(--background-main);
    color: var(--text-main);
    text-shadow: 3px 3px 10px var(--shadow);
}

.top {
    width: 100%;
}

.image-container {
    position: relative;
    display: inline-block;
}

.image-container img {
    display: block;
    width: 100%;
    height: auto;
}

.animated-image {
    animation: circle-in-top-right 1s ease-out forwards;
    clip-path: inset(0 0 100% 100%);
}

@keyframes circle-in-top-right {
    from {
        clip-path: circle(0%);
    }

    to {
        clip-path: circle(150% at top right);
    }
}

[transition-style="in:circle:top-right"] {
    animation: 2.5s cubic-bezier(.25, 1, .30, 1) circle-in-top-right both;
}

.dark-filter {
    position: absolute;
    top: 0;
    left: 0;
    width: 50%;
    height: 100%;
    background: #303841a6;
    z-index: 1;
    display: flex;
    align-items: center;
    padding-left: 30px;
}

.overlay-text {
    color: #ffffff;
    width: 90%;
    border: 1px solid white;
    padding: 20px;
    height: 70%;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.overlay-text h1 {
    margin-top: -20px;
    font-size: 60px;
    font-family: "Montserrat", sans-serif;
    animation: fade-right 2s;
}

@keyframes fade-right {
    0% {
        opacity: 0;
        transform: translateX(-100%) scale(0.9);
    }

    100% {
        opacity: 1;
        transform: translateX(0) scale(1);
    }
}

.overlay-text .about {
    font-size: 13px;
    font-style: italic;
    margin-left: 10px;
    animation: fade-left 2s;
}

@keyframes fade-left {
    0% {
        opacity: 0;
        transform: translateX(100%) scale(0.9);
    }

    100% {
        opacity: 1;
        transform: translateX(0) scale(1);
    }
}

.strong-hr {
    height: 0;
    width: 60%;
    border: 2px solid #ffffff;
    margin-bottom: 20px;
}

.read-button {
    margin-left: 10px;
    padding: 5px 20px;
    border: unset;
    color: #212121;
    z-index: 1;
    background: #ffffff;
    position: relative;
    font-weight: bolder;
    font-size: 20px;
    transition: all 250ms;
    overflow: hidden;
    text-align: center;
    box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px 6px;
    width: 30%;
}

.read-button a {
    text-decoration: none;
    color: inherit;
}

.read-button:hover {
    color: #e8e8e8;
}

.read-button::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    height: 100%;
    width: 0;
    background-color: #212121;
    z-index: -1;
    -webkit-box-shadow: 4px 8px 19px -3px rgba(0, 0, 0, 0.27);
    box-shadow: 4px 8px 19px -3px rgba(0, 0, 0, 0.27);
    transition: all 250ms;
}

.read-button a:hover {
    color: #ffffff;
}

.read-button:hover::before {
    width: 100%;
}

.line {
    justify-content: center;
    display: flex;
    align-items: center;
    margin: 50px 0 -30px 0;
}

.line .divider {
    height: 0;
    width: 90%;
    border: 2px solid #000000;
}

.other-info {
    margin-left: 4%;
    margin-top: 80px;
}

.seminar-header h1 {
    width: 50%;
    font-family: "Montserrat", sans-serif;
    font-size: 50px;
}

.date-time {
    display: flex;
    gap: 20px;
    font-size: 15px;
    margin-left: 5px;
}

.date-container,
.time-container {
    display: flex;
    gap: 8px;
}

.left-right {
    width: 100%;
    display: flex;
}

.left {
    width: 50%;
}

.speaker-container h3 {
    font-family: "Montserrat", sans-serif;
}

.speaker-container ul {
    font-size: 20px;
}

.right {
    width: 50%;
    display: flex;
    justify-content: center;
    padding: 0;
}

.right img {
    width: 50%;
    height: auto;
    border-radius: 10px;
}

.speaker-container p {
    font-size: 15px;
    margin-left: 15px;
    font-style: italic;
}

.bottom {
    position: fixed;
    bottom: 20px;
    right: 20px;
    z-index: 100;
    width: 20%;
    height: 10%;
    background-color: white;
    border-radius: 12px;
    animation: fade-up 2s;
}

@keyframes fade-up {
    0% {
        opacity: 0;
        transform: translateY(100%) scale(0.9);
    }

    100% {
        opacity: 1;
        transform: translateY(0) scale(1);
    }
}

.container-button {
    width: 100%;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
}

.container-button button {
    border: none;
    background-color: #212121;
    width: 90%;
    color: white;
    height: 65%;
    letter-spacing: 10px;
}

.register-button i {
    margin-right: 15px;
}

.modal-header {
    background-color: #303841;
    color: #ffffff;
}

.modal-header i {
    margin-right: 15px;
}

.modal-container {
    display: flex;
    gap: 40px;
}

.gender {
    gap: 20px;
}

.gender .selection {
    text-align: center;
    padding-bottom: -100px;
}

.gender .selection label {
    display: inline-block;
    width: 5em;
    border-radius: 6px;
    padding: 0.3em;
    cursor: pointer;
    border: 2px solid #303841;
    color: #000000 !important;
}

.gender .selection label:hover {
    background-color: #303841;
}

.gender .selection input[type=radio] {
    display: none;
}

.gender .selection input[type=radio]:checked~label {
    background-color: #303841;
    color: #ffffff !important;
    font-weight: 500;
}

.save:hover {
    background-color: white !important;
    color: #303841 !important;
    border: 2px solid #303841 !important;
}

.close:hover {
    background-color: #303841;
    color: #ffffff;
}

.modal-header .button-close {
    color: white !important;
    background-color: transparent;
    border: none;
    font-size: 20px;
}

@media (max-width: 360px) {
    .main-container {
        padding: 10px;
    }

    .dark-filter {
        top: 35%;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 70%;
        padding: 0;
        margin-bottom: -500px;
    }

    .image-container img {
        width: 100%;
    }

    .overlay-text {
        width: 100%;
        border: none;
        margin-top: -100px;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .overlay-text h1 {
        font-size: 30px;
    }

    .about {
        font-size: 12px;
    }

    .strong-hr {
        width: 80%;
    }

    .overlay-text {
        padding: 10px;
    }

    .read-button {
        width: 70%;
        height: 80px;
        margin-bottom: -30px;
        margin-left: -5px;
    }

    .seminar-header h1 {
        font-size: 30px;
        width: 100%;
    }

    .left-right {
        flex-direction: column;
        width: 100%;
    }

    .left {
        width: 100%;
    }

    .left .speaker-container {
        width: 90%;
    }

    .right {
        width: 95%;
    }

    .bottom {
        width: 90%;
        animation: fade-up-360 2s;
    }

    @keyframes fade-up-360 {
        0% {
            opacity: 0;
            transform: translateY(100%) scale(0.9);
        }

        100% {
            opacity: 1;
            transform: translateY(0) scale(1);
        }
    }

    .container-button button {
        width: 90%;
        letter-spacing: 5px;
    }

    .modal-container {
        flex-direction: column;
    }

    .right-modal {
        margin-top: -40px;
    }

    .gender .selection label {
        width: auto;
    }
}

.loader-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 9999;
}


#wifi-loader {
    --background: #303841;
    --front-color: #7AA5D2;
    --back-color: #c3c8de;
    border-radius: 50px;
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 40vh;
    width: 20%;
    background-color: #e1e7ed;
}

#wifi-loader svg {
    position: absolute;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: -50px;
}

#wifi-loader svg circle {
    position: absolute;
    fill: none;
    stroke-width: 6px;
    stroke-linecap: round;
    stroke-linejoin: round;
    transform: rotate(-100deg);
    transform-origin: center;
}

#wifi-loader svg circle.back {
    stroke: var(--back-color);
}

#wifi-loader svg circle.front {
    stroke: var(--front-color);
}

#wifi-loader svg.circle-outer {
    height: 86px;
    width: 86px;
}

#wifi-loader svg.circle-outer circle {
    stroke-dasharray: 62.75 188.25;
}

#wifi-loader svg.circle-outer circle.back {
    animation: circle-outer135 1.8s ease infinite 0.3s;
}

#wifi-loader svg.circle-outer circle.front {
    animation: circle-outer135 1.8s ease infinite 0.15s;
}

#wifi-loader svg.circle-middle {
    height: 60px;
    width: 60px;
}

#wifi-loader svg.circle-middle circle {
    stroke-dasharray: 42.5 127.5;
}

#wifi-loader svg.circle-middle circle.back {
    animation: circle-middle6123 1.8s ease infinite 0.25s;
}

#wifi-loader svg.circle-middle circle.front {
    animation: circle-middle6123 1.8s ease infinite 0.1s;
}

#wifi-loader svg.circle-inner {
    height: 34px;
    width: 34px;
}

#wifi-loader svg.circle-inner circle {
    stroke-dasharray: 22 66;
}

#wifi-loader svg.circle-inner circle.back {
    animation: circle-inner162 1.8s ease infinite 0.2s;
}

#wifi-loader svg.circle-inner circle.front {
    animation: circle-inner162 1.8s ease infinite 0.05s;
}

#wifi-loader .text {
    position: absolute;
    top: 100px;
    display: flex;
    font-weight: 500;
    font-size: 15px;
    letter-spacing: 0.2px;
    width: 175px;
    padding-top: 80px;
    text-align: center;
}

#wifi-loader .text::before,
#wifi-loader .text::after {
    content: attr(data-text);
}

#wifi-loader .text::before {
    color: var(--text-color);
}

#wifi-loader .text::after {
    color: var(--front-color);
    animation: text-animation76 3.6s ease infinite;
    position: absolute;
    left: 0;
}
</style>
