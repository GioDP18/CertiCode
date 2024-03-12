<script setup>

</script>

<template>
    <div class="main-container">
        <div class="sub-container">
            <div class="top page">
                <div class="image-container">
                    <img src="../../../../../public/external/sample.jpg" class="animated-image" alt="">
                    <div class="filter-container">
                        <div class="dark-filter">
                            <div class="overlay-text">
                                <h1>Laravel and Vue Tutorial</h1>
                                <p class="about">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                    tempor incididunt
                                    ut labore et
                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                    laboris
                                    nisi ut aliquip
                                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit
                                    esse
                                    cillum dolore eu
                                    fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa
                                    qui
                                    officia
                                    deserunt mollit anim id est laborum.</p>
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
                        <h1>Laravel and Vue Tutorial</h1>
                    </div>
                    <div class="date-time">
                        <div class="date-container">
                            <i><font-awesome-icon :icon="['fas', 'calendar-day']" /></i>
                            <p class="time-date">July 10, 2100</p>
                        </div>
                        <div class="time-container">
                            <i><font-awesome-icon :icon="['fas', 'clock']" /></i>
                            <p class="time-date">8: 30 PM</p>
                        </div>
                    </div>
                    <div class="left-right">
                        <div class="left">
                            <div class="speaker-container">
                                <h3>Speaker:</h3>
                                <ul>
                                    <li>
                                        <h5>Tom Oliver Chua</h5>
                                    </li>
                                </ul>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                    incididunt
                                    ut labore et
                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                    laboris
                                    nisi
                                    ut
                                    aliquip
                                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit
                                    esse
                                    cillum
                                    dolore eu
                                    fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa
                                    qui
                                    officia
                                    deserunt mollit anim id est laborum.</p>
                            </div>
                        </div>
                        <div class="right">
                            <img src="../../../../../public/external/person.jpg" alt="">
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <div class="bottom">
            <div class="container-button">
                <button class="register-button" data-bs-toggle="modal"
                    data-bs-target="#registerSeminar"><i><font-awesome-icon
                            :icon="['fas', 'user-plus']" /></i>REGISTER</button>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="registerSeminar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
            aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <form action="">
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
                                        <input type="text" class="form-control" id="firstName" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="middleName" class="form-label">Middle Name</label>
                                        <input type="text" class="form-control" id="middleName" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="lastName" class="form-label">Last Name</label>
                                        <input type="text" class="form-control" id="lastName" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="age" class="form-label">Age</label>
                                        <input type="number" class="form-control" id="age" required>
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
                                        <input type="text" class="form-control" id="soc" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="position" class="form-label">Position</label>
                                        <input type="text" class="form-control" id="position" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="email" class="form-label">Email</label>
                                        <input type="text" class="form-control" id="email" required>
                                    </div>
                                </div>
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
    gap: 83%;
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

    .modal-header {
        gap: 59%;
    }

    .right-modal {
        margin-top: -40px;
    }

    .gender .selection label {
        width: auto;
    }
}
</style>
