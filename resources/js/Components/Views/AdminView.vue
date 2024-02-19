<script setup>
import { ref, onMounted, onBeforeUnmount } from 'vue';
import { inject } from 'vue';

// Inject swal and BASE_URL
const swal = inject('$swal');
const store = inject('$store');
const BASE_URL = inject('$swal');

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


const sendAllCerts = async (certificate_id) => {
    store.state.commit('setSendingCerts', true);
    try {
        const response = await axios.post(BASE_URL + '/api/auth/send-all-certificate', {
            certificate_id: certificate_id
        })
            .then((response) => {
                if (response.data.success) {
                    swal({
                        title: 'Success',
                        text: 'All certificates have been sent',
                        icon: 'success',
                    });
                }
                else {
                    swal({
                        title: 'Error',
                        text: response.data.message,
                        icon: 'error',
                    });
                }
            })
            .finally(() => {
                store.state.commit('setSendingCerts', false);
            });
    }
    catch (error) {
        swal({
            title: 'Error',
            text: error.response.data.message,
            icon: 'error',
        });
    }
}


const handleSendAllCerts = () => {
    swal({
        title: "Do you want to send all certificates?",
        showCancelButton: true,
        confirmButtonText: "Send",
    }).then((result) => {
        if (result.isConfirmed) {
            swal("Saved!", "", "success");
        } else if (result.isDenied) {
            swal("Changes are not saved", "", "info");
        }
    });
}

</script>
<template>
    <div class="container1">
        <!-- Web Sidebar -->
        <div class="sidebar" v-show="screenWidth > 991" :class="{ 'minimized': !showSidebar }">
            <RouterLink to="" class="sidebar-logo" style="text-decoration: none;">
                <img loading="lazy" src="../../../../public/external/C-Logo.png" class="img" />
                <div v-if="showSidebar" class="logo-text">CertiCode</div>
            </RouterLink>
            <div class="send-button" title="send certificate" @click="handleSendAllCerts">
                <div v-if="showSidebar" class="sidebar-text">Send Certificates</div>
                <i><font-awesome-icon style="" class="icon" :icon="['fas', 'fa-paper-plane']" /></i>
            </div>
            <div class="menu">
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
                <div style="margin: auto;" class="sidebar-text text-center">Seminars</div>
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
        <div class="mobile-sidebar" v-show="screenWidth < 991" :class="{ 'show': showMobileSidebar }">
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
                <div style="margin: auto;" class="sidebar-text">Seminars</div>
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
            <nav class="header">
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
</style>
