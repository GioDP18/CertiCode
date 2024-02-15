<script setup>
import { ref } from 'vue';
import { Form, Field, ErrorMessage } from 'vee-validate';

const fullname = ref('');
const username = ref('');
const email = ref('');
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
</script>

<template>
    <div class="container">
        <div class="signup-card">
            <Form class="signup-container">
                <!-- Fullname Input Field -->
                <div class="input-group mb-3">
                    <span class="input-group-text"><i><font-awesome-icon class="icon"
                                :icon="['fas', 'fa-user']" /></i></span>
                    <div class="form-floating form-floating-group flex-grow-1">
                        <Field name="fullname" :rules="validateName" type="text" class="form-control"
                            placeholder="Fullname" />
                        <label class="input-label" for="code1">Fullname</label>
                    </div>
                </div>
                <ErrorMessage class="error-message" name="fullname" />
                <!-- Username Input Field -->
                <div class="input-group mb-3">
                    <span class="input-group-text"><i><font-awesome-icon class="icon"
                                :icon="['fas', 'fa-circle-user']" /></i></span>
                    <div class="form-floating form-floating-group flex-grow-1">
                        <Field name="username" :rules="validateName" type="text" class="form-control"
                            placeholder="Username" />
                        <label class="input-label" for="code1">Username</label>
                    </div>
                </div>
                <ErrorMessage class="error-message" name="username" />
                <!-- Email Input Field -->
                <div class="input-group mb-3">
                    <span class="input-group-text"><i><font-awesome-icon class="icon"
                                :icon="['fas', 'fa-envelope']" /></i></span>
                    <div class="form-floating form-floating-group flex-grow-1">
                        <Field name="email" :rules="validateName" type="text" class="form-control" placeholder="Email" />
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
                        <Field name="password" :rules="validatePassword" :type="showPassword ? 'text' : 'password'"
                            class="form-control" placeholder="Password" />
                        <label class="input-label" for="code1">Password</label>
                    </div>
                    <span style="cursor: pointer;" class="input-group-text" @click="togglePassword">
                        <i><font-awesome-icon class="icon" :icon="showPassword ? 'fas fa-eye-slash' : 'fas fa-eye'"/></i>
                    </span>
                </div>
                <ErrorMessage class="error-message" name="password" />
                <button class="sign-up-btn">
                    <p class="fw-normal">SIGN UP</p>
                </button>
                <div class="text">
                    <span style="color: rgb(190, 187, 186)">Already have an account? </span>
                    <RouterLink to="/" style="color: rgba(255, 255, 255, 1)">
                        Sign in
                    </RouterLink>
                </div>
            </Form>
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
