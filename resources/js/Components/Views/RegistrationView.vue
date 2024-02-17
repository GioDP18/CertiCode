<script setup>
import { ref } from 'vue';
import { Form, Field, ErrorMessage } from 'vee-validate';
import axios from 'axios';
import { useRouter } from 'vue-router';

const router = useRouter();

const firstname = ref('');
const middlename = ref('');
const lastname = ref('');
const gender = ref('');
const email = ref('');
const password = ref('');
const password_confirmation = ref('');
const showPassword = ref(false);

function validateName(value) {
    if (!value) {
        return 'This field is required';
    }
    return true;
}

function validatePassword(value) {
    if (!value) {
        return 'This field is required';
    }
    const strongRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*])(?=.{8,})/;
    if (strongRegex.test(value)) {
        return true;
    } else {
        return 'Password is too weak';
    }
}

function togglePassword() {
    showPassword.value = !showPassword.value;
}

const register = async () => {
    try {
        await axios.post(`http://127.0.0.1:8000/api/auth/register`, {
            firstname: firstname.value,
            middlename: middlename.value,
            lastname: lastname.value,
            gender: gender.value,
            email: email.value,
            password: password.value,
            password_confirmation: password_confirmation.value
        })
            .then((response) => {
                if (response.data.success) {
                    router.push('/')
                }
                else {
                    alert(response.data.message)
                }
            })
    }
    catch (error) {
        alert(error.response.data.message)
    }
}
</script>

<template>
    <div class="body">
        <div class="container">
            <div class="form-box">
                <div class="form-value">
                    <form @submit.prevent="register" method="POST">
                        <div class="logo-container">
                            <img src="../../../../public/external/Logo527-5lue.png" class="logo" alt="">
                        </div>
                        <div class="input-container1">
                            <div class="other-inputbox" :class="{ 'active': firstname }">
                                <input type="text" v-model="firstname" required>
                                <label>First Name</label>
                            </div>
                            <div class="other-inputbox" :class="{ 'active': middlename }">
                                <input type="text" v-model="middlename" required>
                                <label>Middle Name</label>
                            </div>
                        </div>
                        <div class="input-container2">
                            <div class="other-inputbox" :class="{ 'active': lastname }">
                                <input type="text" v-model="lastname" required>
                                <label>Last Name</label>
                            </div>
                            <div class="d-flex align-items-center gender">
                                <div class="selection mr-3">
                                    <input id="male-gender" name="gender" type="radio" value="male">
                                    <label for="male-gender">Male</label>
                                </div>
                                <div class="selection">
                                    <input id="female-gender" name="gender" type="radio" value="female">
                                    <label for="female-gender">Female</label>
                                </div>
                            </div>
                        </div>
                        <div class="input-container3">
                            <div class="inputbox" :class="{ 'active': email }">
                                <i><font-awesome-icon :icon="['fas', 'user']" /></i>
                                <input type="email" v-model="email" required>
                                <label>Email</label>
                            </div>
                            <div class="inputbox" :class="{ 'active': password }">
                                <i><font-awesome-icon :icon="['fas', 'lock']" /></i>
                                <input v-if="!showPassword" type="password" required v-model="password">
                                <input v-else type="text" required v-model="password">
                                <span class="toggle-password" @click="togglePassword">
                                    <i><font-awesome-icon
                                            :icon="['fa-solid', showPassword ? 'fa-eye-slash' : 'fa-eye']" /></i>
                                </span>
                                <label>Password</label>
                            </div>
                            <div class="inputbox" :class="{ 'active': password_confirmation }">
                                <i><font-awesome-icon :icon="['fas', 'lock']" /></i>
                                <input v-if="!showPassword" type="password" required v-model="password_confirmation">
                                <input v-else type="text" required v-model="password_confirmation">
                                <span class="toggle-password" @click="togglePassword">
                                    <i><font-awesome-icon
                                            :icon="['fa-solid', showPassword ? 'fa-eye-slash' : 'fa-eye']" /></i>
                                </span>
                                <label>Confirm Password</label>
                            </div>
                        </div>
                        <button class="submit" type="submit"><span class="btn-txt">SIGN UP</span></button>
                        <div class="login">
                            <p>Already have an account? <RouterLink to="/login">Sign in</RouterLink>
                            </p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped>
.body {
    background-image: url('../../../../public/external/BackgroundImage425-mnj.png');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    height: 100vh;
    overflow: hidden;
}

.container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.form-box {
    width: 450px;
    height: 100vh;
    position: absolute;
    border-radius: 10px;
    background-color: #ffffff;
    box-shadow: rgba(0, 0, 0, 0.4) 0px 2px 4px, rgba(0, 0, 0, 0.3) 0px 7px 13px -3px, rgba(0, 0, 0, 0.2) 0px -3px 0px inset;
    display: flex;
    justify-content: center;
    align-items: center;
}

.logo-container {
    margin-top: -40px;
    margin-bottom: 5px;
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
}

.input-container1,
.input-container2 {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 20px;
}

.input-container3 {
    margin-top: -10px;
}

.inputbox {
    position: relative;
    margin: 20px 0;
    width: 340px;
    border-bottom: 2px solid #303841;
    display: flex;
    align-items: center;
}

.other-inputbox {
    position: relative;
    margin: 10px 0;
    width: 160px;
    border-bottom: 2px solid #303841;
    display: flex;
    align-items: center;
}

.inputbox.active label,
.inputbox input:focus+label,
.other-inputbox.active label,
.other-inputbox input:focus+label {
    top: -5px;
    font-size: 13px;
    color: #7c7c7c;
}

.inputbox label {
    position: absolute;
    top: 50%;
    left: 30px;
    transform: translateY(-50%);
    color: #303841;
    font-size: 1em;
    pointer-events: none;
    transition: 0.5s;
}

.other-inputbox label {
    position: absolute;
    top: 50%;
    left: 5px;
    transform: translateY(-50%);
    color: #303841;
    font-size: 1em;
    pointer-events: none;
    transition: 0.5s;
}

.inputbox input {
    width: 100%;
    height: 50px;
    background: transparent;
    border: none;
    outline: none;
    font-size: 1em;
    padding: 0 35px 0 30px;
    color: #303841;
}

.other-inputbox input {
    width: 100%;
    height: 50px;
    background: transparent;
    border: none;
    outline: none;
    font-size: 1em;
    padding: 0 35px 0 5px;
    color: #303841;
}

.inputbox i {
    position: absolute;
    left: 5px;
    color: #303841;
    font-size: 1.2em;
}

.toggle-password {
    position: absolute;
    right: 30px;
    cursor: pointer;
    color: #303841;
    bottom: 35px;
}

.gender {
    gap: 10px;
}

.gender .selection {
    text-align: center;
    padding-bottom: -100px;
}

.gender .selection label {
    display: inline-block;
    width: 5em;
    border-radius: 6px;
    padding: 0.5em;
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

.submit {
    width: 100%;
    height: 40px;
    border-radius: 10px;
    background-color: #303841;
    font-size: 1em;
    font-weight: 600;
    margin-bottom: 5px;
    margin-top: 10px;
    font-family: Inter, sans-serif;
    color: #ffffff;
    transition: all 0.3s ease-in-out;
    border: 3px solid #303841;
}

.submit:hover {
    background-color: #ffffff;
    border: 3px solid #303841;
    color: #000000;
}

.login {
    font-size: 0.9em;
    color: #303841;
    text-align: center;
    margin: 25px 0 10px;
    font-family: Inter, sans-serif;
}

.login p a {
    text-decoration: none;
    color: #7AA5D2;
}

.login p a:hover {
    text-decoration: underline;
}

@media screen and (max-width: 360px) {
    .form-box {
        width: 100%;
        height: 95vh;
    }

    .logo {
        margin-bottom: -15px;
        margin-top: -10px;
    }
}
</style>
