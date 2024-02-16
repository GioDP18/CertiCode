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
    try{
        await axios.post(`http://127.0.0.1:8000/api/auth/login`, {
            email : email.value,
            password : password.value
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
        console.log(error)
        alert(error.response.data.error)
    }

}
</script>

<template>
    <div class="container">
        <div class="form-box">
            <div class="form-value">
                <form @submit.prevent="login" method="POST">
                    <h2>Login</h2>
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
                    <button class="submit" type="submit">SIGN IN</button>
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
</template>

<style scoped>
.container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.form-box {
    position: relative;
    width: 400px;
    height: 500px;
    background: transparent;
    border: none;
    border-radius: 20px;
    background: #41644A;
    display: flex;
    justify-content: center;
    align-items: center;
    margin: auto;
}

h2 {
    font-size: 2em;
    color: #fff;
    text-align: center;
}

.inputbox {
    position: relative;
    margin: 30px 0;
    width: 310px;
    border-bottom: 2px solid #fff;
    display: flex;
    align-items: center;
}

.inputbox.active label,
.inputbox input:focus+label {
    top: -5px;
}

.inputbox label {
    position: absolute;
    top: 50%;
    left: 30px;
    transform: translateY(-50%);
    color: #fff;
    font-size: 1em;
    pointer-events: none;
    transition: 0.5s;
}

.inputbox input {
    width: calc(100% - 30px);
    height: 50px;
    background: transparent;
    border: none;
    outline: none;
    font-size: 1em;
    padding: 0 35px 0 30px;
    color: #fff;
}

.inputbox i {
    position: absolute;
    left: 5px;
    color: #fff;
    font-size: 1.2em;
}

.toggle-password {
    position: absolute;
    right: 30px;
    cursor: pointer;
    color: #fff;
    bottom: 35px;
}

button {
    width: 100%;
    height: 40px;
    border-radius: 16px;
    background-color: #fff;
    border: none;
    outline: none;
    cursor: pointer;
    font-size: 1em;
    font-weight: 600;
    margin-bottom: 15px;
}

.separator {
    display: flex;
    gap: 20px;
    align-items: center;
    justify-content: center;
    color: white;
}

.separator>.line {
    width: 30%;
    height: 1px;
    background-color: #ccc;
}

.separator>p {
    padding-top: 10px;
}

.social-icons {
    margin: 10px 0;
    display: flex;
    justify-content: center;
    align-items: center;
}

.social-icons>a {
    border: 1px solid #ccc;
    border-radius: 20%;
    display: inline-flex;
    justify-content: center;
    align-items: center;
    margin: 0 15px;
    width: 40px;
    height: 40px;
    transition: all 0.3s;
    text-decoration: none;
    color: #ffffff;
}

.social-icons>a:hover {
    scale: 1.3;
    border: 1px solid #ffffff;
    text-decoration: none;
}

.register {
    font-size: 0.9em;
    color: #fff;
    text-align: center;
    margin: 25px 0 10px;
}

.register p a {
    text-decoration: none;
    color: #fff;
    font-weight: 600;
}

.register p a:hover {
    text-decoration: underline;
}

/* Responsiveness:Start */
@media screen and (max-width: 480px) {
    .form-box {
        width: 100%;
        border-radius: 0px;
    }
}
</style>
