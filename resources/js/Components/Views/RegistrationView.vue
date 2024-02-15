<script setup>
</script>

<template>
    <div class="container">
        <div class="signup-card">
            <div class="signup-container">
                <!-- Fullname Input Field -->
                <div class="input-group mb-3">
                    <span class="input-group-text"><i><font-awesome-icon class="icon"
                                :icon="['fas', 'fa-user']" /></i></span>
                    <div class="form-floating form-floating-group flex-grow-1">
                        <input type="text" class="form-control" name="code1" placeholder="Code 1">
                        <label class="input-label" for="code1">Fullname</label>
                    </div>
                </div>
                <!-- Username Input Field -->
                <div class="input-group mb-3">
                    <span class="input-group-text"><i><font-awesome-icon class="icon"
                                :icon="['fas', 'fa-circle-user']" /></i></span>
                    <div class="form-floating form-floating-group flex-grow-1">
                        <input type="text" class="form-control" name="code1" placeholder="Code 1">
                        <label class="input-label" for="code1">Username</label>
                    </div>
                </div>
                <!-- Email Input Field -->
                <div class="input-group mb-3">
                    <span class="input-group-text"><i><font-awesome-icon class="icon"
                                :icon="['fas', 'fa-envelope']" /></i></span>
                    <div class="form-floating form-floating-group flex-grow-1">
                        <input type="text" class="form-control" name="code1" placeholder="Code 1">
                        <label class="input-label" for="code1">Email</label>
                    </div>
                </div>
                <!-- Paddword Input Field -->
                <div class="input-group mb-3">
                    <span class="input-group-text"><i><font-awesome-icon class="icon"
                                :icon="['fas', 'fa-lock']" /></i></span>
                    <div class="form-floating form-floating-group flex-grow-1">
                        <input type="text" class="form-control" name="code1" placeholder="Code 1">
                        <label class="input-label" for="code1">Password</label>
                    </div>
                    <span class="input-group-text"><i><font-awesome-icon class="icon"
                                :icon="['fas', 'fa-eye']" /></i></span>
                </div>

                <button class="sign-up-btn" type="button">
                    <p class="fw-normal">SIGN UP</p>
                </button>
                <div class="text">
                    <span style="color: rgb(190, 187, 186)">Already have an account? </span>
                    <RouterLink to="" style="color: rgba(255, 255, 255, 1)">
                        Sign in
                    </RouterLink>
                </div>
            </div>
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
</style>
