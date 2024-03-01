<template>
    <div class="body">
        <div class="landing-page-container">
            <div class="landing-page-rectangle29">
                <div class="logo-container">
                    <img src="../../../../public/external/C-Logo.png" class="logo" alt="">
                </div>
                <div class="landing-page-text">
                    <h1 class="landing-page-title">CertiCode</h1>
                    <p class="text-content">Empower Your Achievements with CertiCode. Redefining Recognition in a
                        Click
                    </p>
                </div>
                <div class="buttons">
                    <RouterLink to="/login">
                        <div class="landing-page-signin">
                            <span>SIGN IN</span>
                        </div>
                    </RouterLink>
                    <RouterLink to="/register">
                        <div class="landing-page-signup">
                            <span>SIGN UP</span>
                        </div>
                    </RouterLink>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'LandingPage',
    props: {},
}
</script>

<style>
.body {
    background-image: url('../../../../public/external/BackgroundImage425-mnj.png');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    height: 100vh;
    overflow: hidden;
}

.landing-page-container {
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.landing-page-rectangle29 {
    width: 570px;
    height: 550px;
    position: absolute;
    border-radius: 10px;
    background-color: #ffffff;
    z-index: 1;
    box-shadow: rgba(0, 0, 0, 0.4) 0px 2px 4px, rgba(0, 0, 0, 0.3) 0px 7px 13px -3px, rgba(0, 0, 0, 0.2) 0px -3px 0px inset;
}

.logo-container {
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    padding-top: 50px;
}

.logo-container img {
    width: 125px;
}

.landing-page-text {
    width: 100%;
    padding-left: 15%;
    padding-top: 25px;
}

.landing-page-title {
    width: 100%;
    color: black;
    font-family: Inter, sans-serif;
    font-weight: 800;
    padding-bottom: 10px;
    font-size: 35px;
    letter-spacing: 3px;
}

.landing-page-text .text-content {
    width: 85%;
    font-size: 16px;
    font-family: Inter, sans-serif;
}

.buttons {
    width: 100%;
    padding-left: 15%;
    padding-top: 8%;
}

.buttons a {
    text-decoration: none;
}

.landing-page-signin {
    width: 400px;
    height: 46px;
    border-radius: 10px;
    background: #303841;
    border: 3px solid #303841;
    font-family: "Inter", sans-serif;
    margin-bottom: 20px;
    font-weight: 600;
    display: flex;
    justify-content: center;
    align-items: center;
    color: #ffffff;
    text-decoration: none;
    transition: all 0.3s ease-in-out;
}

.landing-page-signin:hover {
    background: transparent;
    border: 3px solid #303841;
    color: #303841 !important;
}

.landing-page-signup {
    width: 400px;
    height: 46px;
    border-radius: 10px;
    background: transparent;
    border: 3px solid #303841;
    font-family: "Inter", sans-serif;
    font-weight: 600;
    text-decoration: none;
    color: #303841;
    display: flex;
    justify-content: center;
    align-items: center;
    transition: all 0.3s ease-in-out;
}

.landing-page-signup a,
.landing-page-signin a {
    text-decoration: none;
}

.landing-page-signup:hover {
    background: #303841;
    border: 3px solid #303841;
    color: #ffffff;
}

@media screen and (max-width: 360px) {
    .landing-page-rectangle29 {
        width: 100%;
        height: 80vh;
    }

    .landing-page-title {
        font-size: 25px;
    }

    .text-content {
        width: 80%;
    }

    .buttons {
        padding-top: 5%;
    }

    .landing-page-signin,
    .landing-page-signup {
        width: 250px;
    }
}
</style>
