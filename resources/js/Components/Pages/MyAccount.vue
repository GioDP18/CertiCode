<template>
    <div class="container">
        <div class="main-content">
            <div class="header-box">
                <div class="avatar-container">
                    <img src="../../../../public/external/avatar.png" alt="">
                    <button><i><font-awesome-icon :icon="['fas', 'camera']" /></i></button>
                </div>
            </div>
            <div class="name-container">
                <h4>Gio Dela Pena</h4>
                <p>Participant</p>
            </div>
            <div class="about-info">
                <p class="about-text">About Info </p>
                <div class="input-container">
                    <div class="first-section">
                        <div class="first">
                            <p>First Name:</p> <span>Gio</span>
                        </div>
                        <div class="first">
                            <p>Middle Name:</p> <span>Secret</span>
                        </div>
                    </div>
                    <div class="second-section">
                        <div class="second">
                            <p>Last Name:</p> <span>Dela Pena</span>
                        </div>
                        <div class="second">
                            <p>Gender:</p> <span>Shemale</span>
                        </div>
                    </div>
                    <div class="third-section">
                        <div class="third">
                            <p>Email:</p> <span>sample@sample.sample</span>
                        </div>
                        <div class="third password-container">
                            <p>Password:</p>
                            <span>••••••••••</span>
                            <span class="toggle-password" @click="togglePasswordInfo">
                                <i style="color: #7AA5D2"><font-awesome-icon
                                        :icon="['fa-solid', passwordShow ? 'fa-eye-slash' : 'fa-eye']" /></i>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="edit-button">
                    <button class="button type1" data-bs-toggle="modal" data-bs-target="#editInformation">
                        <span class="btn-txt">Edit</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="editInformation" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <form action="">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="staticBackdropLabel"><i class="fa-solid fa-pen-to-square"></i>
                            Edit Information</h1>
                    </div>
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="firstName" class="form-label">First Name</label>
                            <input type="text" class="form-control" id="firstName">
                        </div>
                        <div class="mb-3">
                            <label for="middleName" class="form-label">Middle Name</label>
                            <input type="text" class="form-control" id="middleName">
                        </div>
                        <div class="mb-3">
                            <label for="lastName" class="form-label">Last Name</label>
                            <input type="text" class="form-control" id="lastName">
                        </div>
                        <div class="mb-3">
                            <label for="gender" class="form-label">Gender</label>
                            <div class="genderSection">
                                <div class="d-flex align-items-center gender">
                                    <div class="selection mr-3">
                                        <input id="male-gender" name="gender" type="radio" value="male" v-model="gender"
                                            required>
                                        <label for="male-gender">Male</label>
                                    </div>
                                    <div class="selection">
                                        <input id="female-gender" name="gender" type="radio" value="female" v-model="gender"
                                            required>
                                        <label for="female-gender">Female</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="text" class="form-control" id="email">
                        </div>
                        <div class="mb-3 position-relative">
                            <label for="oldPassword" class="form-label">Old Password</label>
                            <input v-if="!showPassword" type="password" required v-model="password" class="form-control">
                            <input v-else type="text" required v-model="password" class="form-control">
                            <span class="toggle-password" @click="togglePassword">
                                <i class="eye position-absolute end-0 top-70 translate-middle-y" style="color: #7AA5D2">
                                    <font-awesome-icon :icon="['fa-solid', showPassword ? 'fa-eye-slash' : 'fa-eye']" />
                                </i>
                            </span>
                        </div>
                        <div class="mb-3 position-relative">
                            <label for="newPassword" class="form-label">New Password</label>
                            <input v-if="!showPassword" type="password" required v-model="newPassword" class="form-control">
                            <input v-else type="text" required v-model="newPassword" class="form-control">
                            <span class="toggle-password" @click="togglePassword">
                                <i class="eye position-absolute end-0 top-70 translate-middle-y" style="color: #7AA5D2">
                                    <font-awesome-icon :icon="['fa-solid', showPassword ? 'fa-eye-slash' : 'fa-eye']" />
                                </i>
                            </span>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn save" style="background-color:#303841; color:white;"
                            @click="saveInformation">Save</button>
                        <button type="button" class="btn close" id="closeCreateModal" data-bs-dismiss="modal"
                            style="border: 2px solid #303841;">Close</button>
                    </div>
                </div>
            </form>

        </div>
    </div>
</template>
  
<script setup>
import { ref } from 'vue';

const showPassword = ref(false);
const passwordShow = ref(false);

function togglePassword() {
    showPassword.value = !showPassword.value;
}

function togglePasswordInfo() {
    passwordShow.value = !passwordShow.value;
}

</script>
  
<style scoped>
.container {
    width: 100%;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 85vh;
}

.main-content {
    height: 85vh;
    width: 90%;
    border-radius: 16px;
    padding: 0;
    box-shadow: rgba(0, 0, 0, 0.4) 0px 2px 4px, rgba(0, 0, 0, 0.3) 0px 7px 13px -3px, rgba(0, 0, 0, 0.2) 0px -3px 0px inset;
}

.header-box {
    height: 15vh;
    width: 100%;
    border-top-right-radius: 16px;
    border-top-left-radius: 16px;
    background-color: #303841;
}

.avatar-container {
    z-index: 1;
    width: 100%;
    padding-top: 40px;
    display: flex;
    justify-content: center;
}

.avatar-container button {
    width: 25px;
    height: 25px;
    background-color: #D9D9D9;
    border-radius: 50%;
    margin-top: 75px;
    margin-left: -30px;
    border: none;
}

.avatar-container img {
    width: 100px;
    height: auto;
    border: 5px solid #303841;
    border-radius: 50%;
}

.name-container {
    text-align: center;
    margin-top: 50px;
    line-height: 5px;
}

.about-info {
    display: flex;
    flex-direction: column;
    margin: auto;
    align-items: center;
    margin-top: 20px;
    width: 80%;
    height: 51vh;
    border-radius: 10px;
    text-align: center;
}

.about-info .about-text {
    font-size: 20px;
    padding: 10px 0;
    border-bottom: 2px solid #303841;
    width: 14%;
    font-weight: 700;
}

.input-container {
    width: 100%;
    margin-top: 10px;
}

.input-container .first-section,
.input-container .second-section,
.input-container .third-section {
    align-items: center;
    gap: 10px;
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: space-around;
    padding-bottom: 20px;
}

.input-container .first-section .first,
.input-container .second-section .second,
.input-container .third-section .third {
    padding: 5px;
    height: 7vh;
    font-size: 20px;
    box-shadow: rgba(0, 0, 0, 0.25) 0px 0.0625em 0.0625em, rgba(0, 0, 0, 0.25) 0px 0.125em 0.5em, rgba(255, 255, 255, 0.1) 0px 0px 0px 1px inset;
    width: 40%;
    border-radius: 6px;
    display: flex;
    gap: 10px;
    background-color: #3038411a;
    position: relative;
}

.input-container .first-section .first p,
.input-container .second-section .second p,
.input-container .third-section .third p {
    font-weight: 500;
}

.toggle-password {
    position: absolute;
    top: 50%;
    right: 10px;
    transform: translateY(-50%);
    cursor: pointer;
}

.edit-button {
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
}

.button {
    height: 40px;
    width: 150px;
    position: relative;
    background-color: transparent;
    cursor: pointer;
    border: 2px solid #303841;
    overflow: hidden;
    border-radius: 8px;
    color: #303841;
    transition: all 0.5s ease-in-out;
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

@media (max-width: 360px) {
    .container {
        height: auto;
        padding: 20px;
    }

    .main-content {
        width: 100%;
        height: 100%;
    }

    .header-box {
        height: 10vh;
    }

    .avatar-container {
        padding-top: 20px;
    }

    .avatar-container button {
        margin-top: 40px;
    }

    .avatar-container img {
        width: 70px;
        border-width: 3px;
    }

    .name-container {
        margin-top: 30px;
    }

    .about-info {
        width: 100%;
        height: auto;
        box-shadow: none;
    }

    .about-info .about-text {
        width: 35%;
    }

    .input-container .first-section,
    .input-container .second-section,
    .input-container .third-section {
        flex-direction: column;
        align-items: flex-start;
        align-items: center;
    }

    .input-container .first-section .first,
    .input-container .second-section .second,
    .input-container .third-section .third {
        width: 90%;
        margin-bottom: 10px;
        font-size: 16px;
        padding-top: 10px;
    }

    .button {
        width: 50%;
    }
}

.modal-header {
    background-color: #303841;
    color: #ffffff;
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

.eye {
    margin-top: 15px;
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
</style>
