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
                    <p>July 10, 2100</p>
                </div>
                <div class="time-container">
                    <i><font-awesome-icon :icon="['fas', 'clock']" /></i>
                    <p>8: 30 PM</p>
                </div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
                    deserunt mollit anim id est laborum.</p>
                <div class="speaker-container">
                    <i><font-awesome-icon :icon="['fas', 'person-chalkboard']" /></i>
                    <p>Speaker:</p><span>Tom Oliver Chua</span>
                </div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Duis ut diam quam nulla porttitor massa id. Et malesuada fames ac turpis egestas
                    maecenas.</p>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="registerSeminar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
            aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        ....
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Understood</button>
                    </div>
                </div>
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

.speaker-container p {
    font-weight: 600;
}

.right p {
    font-size: 13px;
    font-style: italic;
}
</style>