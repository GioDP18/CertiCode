<script setup>
import { ref } from 'vue';
import { onMounted } from 'vue';
import { inject } from 'vue';
import axios from 'axios';

const swal = inject('$swal');
const info = ref([]);
const firstName = ref('');
const middleName = ref('');
const lastName = ref('');
const gender = ref('');
const school = ref('');
const email = ref('');

onMounted(async () => {
    seminarInfo();
});

const seminarInfo = async () => {
    try {
        await axios.get('http://127.0.0.1:8000/api/auth/get-seminar-topic', {
            seminar_id: 1,
        })
        .then((response) => {
            info.value = response.data;
            console.log(info.value);
        })
    } catch (error) {
        console.error(error);
    }
}

const saveInformation = async() => {
    try {
        await axios.post('http://127.0.0.1:8000/api/auth/register-seminar', {
            userID: localStorage.getItem('user_id'),
            seminarID: 1,
            firstname: firstName.value,
            middlename: middleName.value,
            lastname: lastName.value,
            gender: gender.value,
            email: email.value,
            school: school.value
        })
        .then((response) => {
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

</script>

<template>
    <div class="main-container">
        <div class="sub-container">
            <div class="left">
                <img src="../../../../../public/external/sample.jpg" alt="">
                <div class="button-container">
                    <button data-bs-toggle="modal" data-bs-target="#registerSeminar"><i><font-awesome-icon
                                :icon="['fas', 'user-plus']" /></i>REGISTER</button>
                </div>
            </div>
            <div class="right">
                <h2>Panahon ni Kupong-Kupong</h2>
                <div class="date-container">
                    <i><font-awesome-icon :icon="['fas', 'calendar-day']" /></i>
                    <p class="time-date">July 10, 2100</p>
                </div>
                <div class="time-container">
                    <i><font-awesome-icon :icon="['fas', 'clock']" /></i>
                    <p class="time-date">8: 30 PM</p>
                </div>
                <p class="about">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                    ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
                    deserunt mollit anim id est laborum.</p>
                <div class="speaker-container">
                    <i><font-awesome-icon :icon="['fas', 'person-chalkboard']" /></i>
                    <p>Speaker:</p><span>Tom Oliver Chua</span>
                </div>
                <p class="about">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                    ut labore et
                    dolore magna aliqua. Duis ut diam quam nulla porttitor massa id. Et malesuada fames ac turpis egestas
                    maecenas.</p>
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
                                        <input v-model="firstName" type="text" class="form-control" id="firstName">
                                    </div>
                                    <div class="mb-3">
                                        <label for="middleName" class="form-label">Middle Name</label>
                                        <input v-model="middleName" type="text" class="form-control" id="middleName">
                                    </div>
                                    <div class="mb-3">
                                        <label for="lastName" class="form-label">Last Name</label>
                                        <input v-model="lastName" type="text" class="form-control" id="lastName">
                                    </div>
                                    <div class="mb-3">
                                        <label for="age" class="form-label">Age</label>
                                        <input type="number" class="form-control" id="age">
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
                                    <div class="mb-3">
                                        <label for="position" class="form-label">Position</label>
                                        <input type="text" class="form-control" id="position">
                                    </div>
                                    <div class="mb-3">
                                        <label for="email" class="form-label">Email</label>
                                        <input v-model="email" type="text" class="form-control" id="email">
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

<script setup>
</script>

<style scoped>
.main-container {
    height: 88vh;
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
}

.sub-container {
    height: 100%;
    width: 85%;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 15px;
}

.left {
    height: 80%;
    width: 50%;
    display: flex;
    flex-direction: column;
    align-items: center;
}

.button-container {
    width: 65%;
    display: flex;
    justify-content: center;
    height: 15%;
    background-color: white;
    margin-top: -37px;
    align-items: center;
    border-radius: 4px;
}

.button-container button {
    background-color: #303841;
    height: 70%;
    width: 90%;
    border: none;
    border-radius: 4px;
    letter-spacing: 10px;
    color: white;
}

.button-container i {
    margin-right: 15px;
}

.left img {
    width: 90%;
    border-radius: 10px;
    height: 80%;
}

.right {
    height: 80%;
    width: 40%;
    margin-top: 60px;
}

.right h2 {
    text-transform: uppercase;
    font-size: 20px;
}

.date-container,
.time-container,
.speaker-container {
    display: flex;
    gap: 8px;
    font-size: 15px;
}

.time-date {
    font-size: 13px;
}

.speaker-container p {
    font-weight: 600;
}

.right .about {
    font-size: 13px;
    font-style: italic;
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
        height: auto;
        padding: 10px;
    }

    .sub-container {
        flex-direction: column;
        width: 100%;
        gap: 10px;
    }

    .left,
    .right {
        width: 100%;
    }

    .left img {
        width: 100%;
        height: auto;
    }

    .button-container {
        width: 80%;
        margin-top: -30px;
        height: 10vh;
    }

    .right {
        margin-top: 0;
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
</style>