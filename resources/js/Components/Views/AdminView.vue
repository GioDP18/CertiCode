<script setup>
import { ref, onMounted, onBeforeUnmount } from 'vue';


const showSidebar = ref(true);
const showMobileSidebar = ref(false);
const screenWidth = ref(window.innerWidth);

const updateScreenWidth = () => {
    screenWidth.value = window.innerWidth;
};

const toggleSidebar = () => {
    showSidebar.value = !showSidebar.value;
};

const toggleMobileSidebar = () => {
    showMobileSidebar.value = !showMobileSidebar.value;
    const mobileHamburger = document.querySelector("#mobile-hamburger");
    const searchInput = document.querySelector(".search-input");
    const logoutButton = document.querySelector(".logout-button");

    if (showMobileSidebar.value) {
        mobileHamburger.style.marginLeft = "250px";
        searchInput.style.display = "none";
        logoutButton.style.display = "none";
    } else {
        mobileHamburger.style.marginLeft = "0";
        searchInput.style.display = "block";
        logoutButton.style.display = "block"
    }
};

const initializeHamburgers = () => {
    const hamburgers = document.querySelectorAll(".hamburger");
    if (hamburgers.length > 0) {
        hamburgers.forEach(hamburger => {
            hamburger.addEventListener("click", function () {
                this.classList.toggle("is-active");
            }, false);
        });
    }
};

onMounted(() => {
    window.addEventListener('resize', updateScreenWidth);
    initializeHamburgers();
});
onBeforeUnmount(() => {
    window.removeEventListener('resize', updateScreenWidth);
});




</script>
<template>
    <div class="container1">
        <div v-if="$store.state.sendingCerts" class="loader-container">
            <div class="text-center" id="wifi-loader">
        <div class="loader-container">
            <div id="wifi-loader">
                <svg class="circle-outer" viewBox="0 0 86 86">
                    <circle class="back" cx="43" cy="43" r="40"></circle>
                    <circle class="front" cx="43" cy="43" r="40"></circle>
                    <circle class="new" cx="43" cy="43" r="40"></circle>
                </svg>
                <svg class="circle-middle" viewBox="0 0 60 60">
                    <circle class="back" cx="30" cy="30" r="27"></circle>
                    <circle class="front" cx="30" cy="30" r="27"></circle>
                </svg>
                <svg class="circle-inner" viewBox="0 0 34 34">
                    <circle class="back" cx="17" cy="17" r="14"></circle>
                    <circle class="front" cx="17" cy="17" r="14"></circle>
                </svg>
                <div class="text tex-center" data-text="Generating Certificates.."></div>
                <div class="text" data-text="Sending Certificates.."></div>
            </div>
        </div>
        <!-- Web Sidebar -->
        <div class="sidebar sticky-top" v-show="screenWidth > 991" :class="{ 'minimized': !showSidebar }">
            <RouterLink to="" class="sidebar-logo" style="text-decoration: none;">
                <img loading="lazy" src="../../../../public/external/C-Logo.png" class="img" />
                <div v-if="showSidebar" class="logo-text">CertiCode</div>
            </RouterLink>
            <div class="menu">
                <div style="width:90%; margin: auto;">
                    <RouterLink to="sendCertificates" style="text-decoration: none;">
                        <div class="send-button" title="send certificate">
                            <div v-if="showSidebar" class="sidebar-text">Send Certificates</div>
                            <i><font-awesome-icon style="" class="icon" :icon="['fas', 'fa-paper-plane']" /></i>
                        </div>
                    </RouterLink>
                </div>

                <RouterLink to="dashboard" class="sidebar-menu" active-class="active" style="text-decoration: none;"
                    title="home">
                    <i><font-awesome-icon style="" class="icon" :icon="['fas', 'fa-home']" /></i>
                    <div v-if="showSidebar" class="sidebar-text">Home</div>
                </RouterLink>
                <RouterLink to="participants" class="sidebar-menu" style="text-decoration: none;" title="participants">
                    <i><font-awesome-icon style="" class="icon" :icon="['fas', 'fa-table-list']" /></i>
                    <div v-if="showSidebar" class="sidebar-text">Participants</div>
                </RouterLink>
                <RouterLink to="myAccount" class="sidebar-menu" style="text-decoration: none;" title="my acount">
                    <i><font-awesome-icon style="" class="icon" :icon="['fas', 'fa-user-circle']" /></i>
                    <div v-if="showSidebar" class="sidebar-text">My Account</div>
                </RouterLink>
            </div>
            <div v-if="showSidebar" class="add-button">
                <RouterLink to="seminars"  style="text-decoration: none; color: white;">
                    <div style="margin: auto;" class="sidebar-text text-center">Seminars</div>
                </RouterLink>
                <RouterLink to="createSeminar" class="add">
                    <i><font-awesome-icon style="color: #000;" class="icon" :icon="['fas', 'fa-plus']" /></i>
                </RouterLink>
            </div>
            <div v-if="!showSidebar" style="background-color: #fff; height: 30px;" class="send-button"
                title="add certificate">
                <i><font-awesome-icon style="color: #000; height: 15px;" class="icon" :icon="['fas', 'fa-plus']" /></i>
            </div>
        </div>
        <!-- Mobile Sidebar -->
        <div class="mobile-sidebar sticky-top" v-show="screenWidth < 991" :class="{ 'show': showMobileSidebar }">
            <RouterLink to="" class="sidebar-logo" style="text-decoration: none;">
                <img loading="lazy" src="../../../../public/external/C-Logo.png" class="img" />
                <div class="logo-text">CertiCode</div>
            </RouterLink>
            <div class="send-button" title="send certificate">
                <div class="sidebar-text">Send Certificates</div>
                <i><font-awesome-icon style="" class="icon" :icon="['fas', 'fa-paper-plane']" /></i>
            </div>
            <div class="menu">
                <RouterLink to="dashboard" class="sidebar-menu" active-class="active" style="text-decoration: none;"
                    title="home">
                    <i><font-awesome-icon style="" class="icon" :icon="['fas', 'fa-home']" /></i>
                    <div class="sidebar-text">Home</div>
                </RouterLink>
                <RouterLink to="participants" class="sidebar-menu" style="text-decoration: none;" title="participants">
                    <i><font-awesome-icon style="" class="icon" :icon="['fas', 'fa-table-list']" /></i>
                    <div class="sidebar-text">Participants</div>
                </RouterLink>
                <RouterLink to="myAccount" class="sidebar-menu" style="text-decoration: none;" title="my acount">
                    <i><font-awesome-icon style="" class="icon" :icon="['fas', 'fa-user-circle']" /></i>
                    <div class="sidebar-text">My Account</div>
                </RouterLink>
            </div>
            <div class="add-button">
                <RouterLink to="seminars"  style="text-decoration: none; color: white;">
                    <div style="margin: auto;" class="sidebar-text">Seminars</div>
                </RouterLink>
                <RouterLink to="createSeminar" class="add">
                    <i><font-awesome-icon style="color: #000;" class="icon" :icon="['fas', 'fa-plus']" /></i>
                </RouterLink>
            </div>
            <div v-show="screenWidth > 991" style="background-color: #fff; height: 30px;" class="send-button"
                title="add certificate">
                <i><font-awesome-icon style="color: #000; height: 15px;" class="icon" :icon="['fas', 'fa-plus']" /></i>
            </div>
        </div>
        <div class="main-content">
            <nav class="header sticky-top z-1">
                <div class="burger-container" v-show="screenWidth > 991">
                    <button class="hamburger hamburger--collapse" type="button" @click="toggleSidebar">
                        <span class="hamburger-box">
                            <span class="hamburger-inner"></span>
                        </span>
                    </button>
                </div>
                <div class="burger-container" v-show="screenWidth < 991">
                    <button id="mobile-hamburger" class="hamburger hamburger--collapse" type="button"
                        @click="toggleMobileSidebar">
                        <span class="hamburger-box">
                            <span class="hamburger-inner"></span>
                        </span>
                    </button>
                </div>
                <form class="search-input">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search Participant">
                        <div class="input-group-btn">
                            <button style="border: 1.5px solid #EEEEEE;;" class="btn btn-default" type="submit">
                                <i><font-awesome-icon style="color: #000; height: 18px;" class="icon"
                                        :icon="['fas', 'fa-search']" /></i>
                            </button>
                        </div>
                    </div>
                </form>
                <div class="logout-button">
                    <i><font-awesome-icon style="color: #000; height: 18px;" class="icon"
                            :icon="['fas', 'fa-power-off']" /></i>
                </div>
            </nav>
            <div class="wrapper">
                <router-view :class="{ 'sidebar-minimized': !showSidebar }"
                    style="overflow: hidden; overflow-y: auto;"></router-view>
            </div>
        </div>
    </div>
</template>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

.container1 {
    display: flex;
}

.sidebar {
    box-shadow: 4px 0px 10px 2px rgba(0, 0, 0, 0.25);
    background-color: #303841;
    display: flex;
    max-width: 250px;
    height: 100vh;
    flex-direction: column;
    padding: 0px;
    margin: 0px;
}

.mobile-sidebar {
    box-shadow: 4px 0px 10px 2px rgba(0, 0, 0, 0.25);
    background-color: #303841;
    display: flex;
    max-width: 250px;
    height: 100vh;
    flex-direction: column;
    padding: 0px;
    margin: 0px;
    position: fixed;
    top: 0;
    left: -250px;
    /* Initial position off-screen */
    z-index: 1000;
    /* Ensure it's above other content */
    transition: left 0.3s ease;
    /* Add a smooth transition */
}

.show {
    left: 0;
}

.main-content {
    margin-left: 0;
    transition: margin-left 0.3s ease;
}

.show-mobile-sidebar {
    margin-left: 250px;
}

.sidebar-logo {
    background-color: #fff;
    display: flex;
    justify-content: center;
    font-size: 25px;
    color: var(--Black, #191919);
    font-weight: 600;
    padding: 18px 48px;
}

.header {
    background-color: #fff;
    display: flex;
    align-items: center;
    justify-content: space-between;
    color: var(--Black, #191919);
    height: 85px;
    padding: 10px;
}

.img {
    aspect-ratio: 1;
    object-fit: auto;
    object-position: center;
    width: 49px;
}

.menu {
    margin-top: 50px;
    transition: margin-left 0.3s ease;
}

.logo-text {
    font-family: Inter, sans-serif;
    flex-grow: 1;
    margin: auto 0;
}

.send-button {
    border-radius: 8px;
    border: 1.5px solid #fff;
    align-self: center;
    display: flex;
    margin-top: 40px;
    margin-bottom: 0px;
    justify-content: center;
    align-items: center;
    margin-top: 60px;
    gap: 20px;
    font-size: 16px;
    color: #fff;
    padding: 8px 20px;
    cursor: pointer;
}

.logout-button {
    border-radius: 8px;
    border: 1.5px solid #EEEEEE;
    align-self: center;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 8px 10px;
    cursor: pointer;
}

.logout-button:hover {
    border: 2px solid #929699;
}

.sidebar-menu {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 15px;
    gap: 20px;
    font-size: 16px;
    color: #fff;
    padding: 8px 25px;
    cursor: pointer;
}

.sidebar-text {
    font-family: Inter, sans-serif;
    align-self: start;
    margin-top: 4px;
    flex-grow: 1;
    flex-basis: auto;
}

.add-button {
    border-radius: 8px;
    border: 1.5px solid #fff;
    align-self: center;
    display: flex;
    margin-top: 40px;
    margin-bottom: 0px;
    justify-content: center;
    align-items: center;
    margin-top: 100px;
    font-size: 16px;
    color: #fff;
    padding: 5px 45px;
    flex-direction: column;
    cursor: pointer;
}

.add {
    border-radius: 8px;
    background-color: #fff;
    align-self: center;
    z-index: 10;
    display: flex;
    width: 109px;
    max-width: 100%;
    justify-content: center;
    align-items: center;
    margin: 10px 0 -21px;
    padding: 4px 45px;
}

.search-input {
    width: 500px;
}

.minimized {
    width: 80px;
}

.sidebar-minimized {
    max-width: 100%;
}

.loader-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 9999;
}


#wifi-loader {
    --background: #303841;
    --front-color: #7AA5D2;
    --back-color: #c3c8de;
    border-radius: 50px;
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 40vh;
    width: 20%;
    background-color: #e1e7ed;
}

#wifi-loader svg {
    position: absolute;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: -50px;
}

#wifi-loader svg circle {
    position: absolute;
    fill: none;
    stroke-width: 6px;
    stroke-linecap: round;
    stroke-linejoin: round;
    transform: rotate(-100deg);
    transform-origin: center;
}

#wifi-loader svg circle.back {
    stroke: var(--back-color);
}

#wifi-loader svg circle.front {
    stroke: var(--front-color);
}

#wifi-loader svg.circle-outer {
    height: 86px;
    width: 86px;
}

#wifi-loader svg.circle-outer circle {
    stroke-dasharray: 62.75 188.25;
}

#wifi-loader svg.circle-outer circle.back {
    animation: circle-outer135 1.8s ease infinite 0.3s;
}

#wifi-loader svg.circle-outer circle.front {
    animation: circle-outer135 1.8s ease infinite 0.15s;
}

#wifi-loader svg.circle-middle {
    height: 60px;
    width: 60px;
}

#wifi-loader svg.circle-middle circle {
    stroke-dasharray: 42.5 127.5;
}

#wifi-loader svg.circle-middle circle.back {
    animation: circle-middle6123 1.8s ease infinite 0.25s;
}

#wifi-loader svg.circle-middle circle.front {
    animation: circle-middle6123 1.8s ease infinite 0.1s;
}

#wifi-loader svg.circle-inner {
    height: 34px;
    width: 34px;
}

#wifi-loader svg.circle-inner circle {
    stroke-dasharray: 22 66;
}

#wifi-loader svg.circle-inner circle.back {
    animation: circle-inner162 1.8s ease infinite 0.2s;
}

#wifi-loader svg.circle-inner circle.front {
    animation: circle-inner162 1.8s ease infinite 0.05s;
}

#wifi-loader .text {
    position: absolute;
    top: 100px;
    display: flex;
    font-weight: 500;
    font-size: 15px;
    letter-spacing: 0.2px;
    width: 175px;
    padding-top: 80px;
    text-align: center;
}

#wifi-loader .text::before,
#wifi-loader .text::after {
    content: attr(data-text);
}

#wifi-loader .text::before {
    color: var(--text-color);
}

#wifi-loader .text::after {
    color: var(--front-color);
    animation: text-animation76 3.6s ease infinite;
    position: absolute;
    left: 0;
}

@keyframes circle-outer135 {
    0% {
        stroke-dashoffset: 25;
    }

    25% {
        stroke-dashoffset: 0;
    }

    65% {
        stroke-dashoffset: 301;
    }

    80% {
        stroke-dashoffset: 276;
    }

    100% {
        stroke-dashoffset: 276;
    }
}

@keyframes circle-middle6123 {
    0% {
        stroke-dashoffset: 17;
    }

    25% {
        stroke-dashoffset: 0;
    }

    65% {
        stroke-dashoffset: 204;
    }

    80% {
        stroke-dashoffset: 187;
    }

    100% {
        stroke-dashoffset: 187;
    }
}

@keyframes circle-inner162 {
    0% {
        stroke-dashoffset: 9;
    }

    25% {
        stroke-dashoffset: 0;
    }

    65% {
        stroke-dashoffset: 106;
    }

    80% {
        stroke-dashoffset: 97;
    }

    100% {
        stroke-dashoffset: 97;
    }
}

@keyframes text-animation76 {
    0% {
        clip-path: inset(0 100% 0 0);
    }

    50% {
        clip-path: inset(0);
    }

    100% {
        clip-path: inset(0 0 0 100%);
    }
}
</style>
