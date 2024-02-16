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
    try{
        await axios.post(`http://127.0.0.1:8000/api/auth/register`, {
            firstname : firstname.value,
            middlename : middlename.value,
            lastname : lastname.value,
            gender : gender.value,
            email : email.value,
            password : password.value,
            password_confirmation : password_confirmation.value
        })
        .then((response) => {
            if(response.data.success){
                router.push('/')
            }
            else{
                alert(response.data.message)
            }
        })
    }
    catch(error){
        alert(error.response.data.message)
    }
}
</script>

<template>
    <div class="container">
        <div class="signup-card">
            <form class="signup-container" @submit.prevent="register">
                <!-- Fullname Input Field -->
                <div class="input-group mb-3">
                    <span class="input-group-text"><i><font-awesome-icon class="icon"
                                :icon="['fas', 'fa-user']" /></i></span>
                    <div class="form-floating form-floating-group flex-grow-1">
                        <Field name="firstname" v-model="firstname" :rules="validateName" type="text" class="form-control"
                            placeholder="Firstname" />
                        <label class="input-label" for="code1">Firstname</label>
                    </div>
                </div>
                <ErrorMessage class="error-message" name="fullname" />
                <div class="input-group mb-3">
                    <span class="input-group-text"><i><font-awesome-icon class="icon"
                                :icon="['fas', 'fa-user']" /></i></span>
                    <div class="form-floating form-floating-group flex-grow-1">
                        <Field name="middlename" v-model="middlename" :rules="validateName" type="text" class="form-control"
                            placeholder="Middlename" />
                        <label class="input-label" for="code1">Middlename</label>
                    </div>
                </div>
                <ErrorMessage class="error-message" name="middlename" />
                <div class="input-group mb-3">
                    <span class="input-group-text"><i><font-awesome-icon class="icon"
                                :icon="['fas', 'fa-user']" /></i></span>
                    <div class="form-floating form-floating-group flex-grow-1">
                        <Field name="lastname" v-model="lastname" :rules="validateName" type="text" class="form-control"
                            placeholder="Lastname" />
                        <label class="input-label" for="code1">Firstname</label>
                    </div>
                </div>
                <ErrorMessage class="error-message" name="lastname" />
                <div class="input-group mb-3">
                    <span class="input-group-text"><i><font-awesome-icon class="icon"
                                :icon="['fas', 'fa-user']" /></i></span>
                    <div class="form-floating form-floating-group flex-grow-1">
                        <Field name="gender" v-model="gender" :rules="validateName" type="text" class="form-control"
                            placeholder="Gender" />
                        <label class="input-label" for="code1">Gender</label>
                    </div>
                </div>
                <ErrorMessage class="error-message" name="gender" />
                <!-- Username Input Field -->
                <div class="input-group mb-3">
                    <span class="input-group-text"><i><font-awesome-icon class="icon"
                                :icon="['fas', 'fa-circle-user']" /></i></span>
                    <div class="form-floating form-floating-group flex-grow-1">
                        <Field name="email" v-model="email" :rules="validateName" type="text" class="form-control"
                            placeholder="Email" />
                        <label class="input-label" for="code1">Email</label>
                    </div>
                </div>
                <ErrorMessage class="error-message" name="email" />
                <!-- Paddword Input Field -->
                <div class="input-group mb-3">
                    <span class="input-group-text">
                        <i>
                            <font-awesome-icon class="icon" :icon="['fas', 'fa-lock']" />
                        </i>
                    </span>
                    <div class="form-floating form-floating-group flex-grow-1">
                        <Field name="password" v-model="password" :rules="validatePassword" :type="showPassword ? 'text' : 'password'"
                            class="form-control" placeholder="Password" />
                        <label class="input-label" for="code1">Password</label>
                    </div>
                    <span style="cursor: pointer;" class="input-group-text" @click="togglePassword">
                        <i><font-awesome-icon class="icon" :icon="showPassword ? 'fas fa-eye-slash' : 'fas fa-eye'"/></i>
                    </span>
                </div>
                <ErrorMessage class="error-message" name="password" />
                <div class="input-group mb-3">
                    <span class="input-group-text">
                        <i>
                            <font-awesome-icon class="icon" :icon="['fas', 'fa-lock']" />
                        </i>
                    </span>
                    <div class="form-floating form-floating-group flex-grow-1">
                        <Field name="password_confirmation" v-model="password_confirmation" :rules="validatePassword" :type="showPassword ? 'text' : 'password'"
                            class="form-control" placeholder="Password" />
                        <label class="input-label" for="code1">Password</label>
                    </div>
                    <span style="cursor: pointer;" class="input-group-text" @click="togglePassword">
                        <i><font-awesome-icon class="icon" :icon="showPassword ? 'fas fa-eye-slash' : 'fas fa-eye'"/></i>
                    </span>
                </div>
                <ErrorMessage class="error-message" name="password_confirmation" />
                <button class="sign-up-btn">
                    <p class="fw-normal">SIGN UP</p>
                </button>
                <div class="text">
                    <span style="color: rgb(190, 187, 186)">Already have an account? </span>
                    <RouterLink to="/" style="color: rgba(255, 255, 255, 1)">
                        Sign in
                    </RouterLink>
                </div>
            </form>
        </div>
    </div>
</template>

<style scoped>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

.input-group {
    border-bottom: 2px solid #fff;
}

.input-group-text,
.input-label,
.form-control {
    background: transparent;
    outline: none;
    border: none;
    color: #fff;
}

.container {
    background-color: rgba(255, 255, 255, 1);
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 50px;
    margin: auto;
}

@media (max-width: 991px) {
    .container {
        padding: 0px;
    }
}

.signup-card {
    border-radius: 15px;
    box-shadow: 8px 8px 15px 0px rgba(0, 0, 0, 0.62);
    background-color: #41644a;
    display: flex;
    width: 40em;
    justify-content: center;
    align-items: center;
    margin: auto;
}

@media (max-width: 991px) {
    .signup-card {
        margin-top: 40px;
        padding: 0;
        width: 85%;
        height: 28em;
        margin: 30%;
    }
}

.signup-container {
    display: flex;
    width: 489px;
    max-width: 100%;
    flex-direction: column;
    margin: 54px 0 42px;
}

@media (max-width: 991px) {
    .signup-container {
        padding: 25px;
        margin-top: 20px;
    }
}

.sign-up-btn {
    border-radius: 16px;
    background-color: #f2e3db;
    margin-top: 43px;
    justify-content: center;
    align-items: center;
    color: #000;
    white-space: nowrap;
    padding: 20px;
    width: 100%;
    border: none;
}

@media (max-width: 991px) {
    .sign-up-btn {
        white-space: initial;
        max-width: 100%;
        margin-top: 10px;
        padding: 0 20px;
        border-radius: 5px;
    }
}

.sign-up-btn p {
    font: 100 20px Inter, sans-serif;
    text-align: center;
    margin: auto;
}

@media (max-width: 991px) {
    .sign-up-btn p {
        font: 100 15px Inter, sans-serif;
        padding: 10px;
    }
}

.sign-up-btn:hover::before {
    transform: scale(1.1);
    box-shadow: 0 0 15px #263A29;
}

.sign-up-btn:hover {
    box-shadow: 0 0 10px #263A29;
}

.text {
    color: var(--ffffff, #fff);
    text-align: center;
    align-self: center;
    margin-top: 26px;
    white-space: nowrap;
    font: 400 19px Inter, sans-serif;
}

@media (max-width: 991px) {
    .text {
        white-space: initial;
        font: 400 15px Inter, sans-serif;
        margin-top: 10px;
    }
}

.error-message {
    color: rgb(238, 203, 203);
    font-size: 0.75rem;
    margin-top: -10px;
}
</style>
