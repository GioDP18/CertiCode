<script setup>
import { ref } from 'vue';
import axios from 'axios';
import { useRouter } from 'vue-router';

const showPassword = ref(false);
const email = ref('');
const password = ref('');
const router = useRouter();

function togglePassword() {
    showPassword.value = !showPassword.value;
}

const login = async () => {
    try {
        await axios.post(`http://127.0.0.1:8000/api/auth/login`, {
            email: email.value,
            password: password.value
        })
        .then((response) => {
            router.push('/user/dashboard')
        })

    }
    catch (error) {
        console.log(error)
        alert(error.response.data.error)
    }

}
</script>

<template>
    <div class="body">
        <div class="container">
            <div class="form-box">
                <div class="form-value">
                    <form @submit.prevent="login" method="POST">
                        <div class="logo-container">
                            <img src="../../../../public/external/Logo527-5lue.png" class="logo" alt="">
                        </div>
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
                                <i><font-awesome-icon :icon="['fa-solid', showPassword ? 'fa-eye-slash' : 'fa-eye']" /></i>
                            </span>
                            <label>Password</label>
                        </div>
                        <button class="submit" type="submit"><span class="btn-txt">SIGN IN</span></button>
                        <div class="separator">
                            <div class="line"></div>
                            <p>Sign in with</p>
                            <div class="line"></div>
                        </div>
                        <div class="social-icons">
                            <RouterLink to="/"><i class="fa-brands fa-google-plus-g"></i></RouterLink>
                            <RouterLink to="/"><i class="fa-brands fa-facebook-f"></i></RouterLink>
                        </div>
                        <div class="register">
                            <p>Don't have an account? <RouterLink to="/register">Sign Up</RouterLink>
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
    height: 550px;
    position: absolute;
    border-radius: 10px;
    background-color: #ffffff;
    box-shadow: rgba(0, 0, 0, 0.4) 0px 2px 4px, rgba(0, 0, 0, 0.3) 0px 7px 13px -3px, rgba(0, 0, 0, 0.2) 0px -3px 0px inset;
    display: flex;
    justify-content: center;
    align-items: center;
}

.logo-container {
    margin-top: -30px;
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
}

.inputbox {
    position: relative;
    margin: 25px 0;
    width: 330px;
    border-bottom: 2px solid #303841;
    display: flex;
    align-items: center;
}

.inputbox.active label,
.inputbox input:focus+label {
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

.submit {
    width: 100%;
    height: 40px;
    border-radius: 10px;
    background-color: #303841;
    font-size: 1em;
    font-weight: 600;
    margin-bottom: 15px;
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

.separator {
    display: flex;
    gap: 20px;
    align-items: center;
    justify-content: center;
    color: #303841;
}

.separator>.line {
    width: 32%;
    height: 1px;
    background-color: #303841;
}

.separator>p {
    padding-top: 10px;
    font-family: Inter, sans-serif;
    font-weight: 700;
    font-size: 14px;
}

.social-icons {
    margin: 10px 0;
    display: flex;
    justify-content: center;
    align-items: center;
}

.social-icons>a {
    border: 1px solid #303841;
    border-radius: 10px;
    display: inline-flex;
    justify-content: center;
    align-items: center;
    margin: 0 15px;
    width: 40px;
    height: 40px;
    transition: all 0.3s;
    text-decoration: none;
    color: #303841;
}

.social-icons>a:hover {
    scale: 1.3;
    border: 1px solid #7AA5D2;
    text-decoration: none;
    color: #7AA5D2;
}

.register {
    font-size: 0.9em;
    color: #303841;
    text-align: center;
    margin: 25px 0 10px;
    font-family: Inter, sans-serif;
}

.register p a {
    text-decoration: none;
    color: #7AA5D2;
}

.register p a:hover {
    text-decoration: underline;
}

@media screen and (max-width: 360px) {
    .form-box {
        width: 100%;
        height: 80vh;
    }

    .logo {
        margin-bottom: -15px;
        margin-top: -10px;
    }
}
</style>
