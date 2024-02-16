<template>
    <div :class="{ 'nav-is-default': !isNavToggled, 'nav-is-toggled': isNavToggled }"
        style="display:flex; justify-content:center; align-items:center; height:100vh;">
        <header class="nav-top">
            <button type="button" class="nav-toggle" id="navSideToggle" @click="toggleNav()">
                <span class="sr-only">Menu</span> <span class="ham-bars"></span>
            </button>
        </header>
        <aside class="nav-side">
            <ul class="nav-side-links">
                <div style="display: flex; align-items: center; justify-content: center; gap: 10px; padding-bottom: 30px;">
                    <img src="../../../../public/external/logo.png" alt=""
                        style="width: 50px; height: 50px; border-radius: 50%;">
                    <h1 v-if="!isNavToggled"
                        style="text-align: center; font-family: Aref Ruqaa, serif; color: black; font-weight: 700;">
                        <span class="link-text">CertiCode</span>
                    </h1>
                </div>
                <li class="nav-side-button">
                    <button class="button" href="#"
                        style="height: 70px; border-radius: 20px; display: flex; align-items: center; justify-content: center; text-decoration: none; font-size: 15px; gap: 10px; border: none; margin-bottom: 50px;">
                        <span class="link-text" style="color: black; font-weight: 700;">Send All Certificates</span><i
                            style="width: 40px; height: 40px; background-color: #41644A; display: flex; align-items: center; justify-content: center; border-radius: 50%; color: white;"><font-awesome-icon
                                :icon="['fas', 'paper-plane']" /></i></button>
                </li>
                <li class="nav-side-item active" active-class="active">
                    <RouterLink class="nav-link" to="#"><i class="icon"><font-awesome-icon
                                :icon="['fas', 'house']" /></i><span class="link-text" style="font-weight: 700;">Home</span>
                    </RouterLink>
                </li>
                <li class="nav-side-item active" active-class="active">
                    <RouterLink class="nav-link" to="#"><i class="icon"><font-awesome-icon :icon="['fas', 'user']" /></i>
                        <span class="link-text" style="font-weight: 700;">My
                            Account</span>
                    </RouterLink>
                </li>
                <li class="nav-side-button" style="padding-top: 50%; text-align: center;">
                    <div
                        style="background-color: #F2E3DB; height: 85px; border-radius: 20px; display: flex; align-items: center; justify-content: center; text-decoration: none; font-size: 20px; gap: 10px; border: none; margin-bottom: -15px;">
                        <span class="link-text" style="color: black; font-weight: 700;">View
                            All
                            Certificates</span>
                    </div>
                    <button class="btn"
                        style="width: 50px; height:40px; border-radius: 10px; background-color: #263A29; color: white; border: none;"><i><font-awesome-icon
                                :icon="['fas', 'plus']" /></i></button>
                </li>
                <hr>
            </ul>
        </aside>
        <section class=" main-content">
            <!-- Your main content here -->
        </section>
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
            <div class="text" data-text="Generating Certificates, Please Wait.."></div>
        </div>
    </div>
</template>
  

<script>
export default {
    data() {
        return {
            isNavToggled: false
        };
    },
    methods: {
        toggleNav() {
            this.isNavToggled = !this.isNavToggled;
        }
    }
}
</script>
  

<script setup>
</script>

<style lang="scss">
@import 'https://fonts.googleapis.com/css?family=Roboto+Condensed:300';
@import 'https://fonts.googleapis.com/icon?family=Material+Icons';
$primary-color: #94deb4;
$primary-color-dark: darken($primary-color, 15%);
$primary-color-tint: lighten($primary-color, 15%);
$secondary-color: #5abd8b;
$secondary-color-dark: darken($secondary-color, 8%);
$secondary-color-tint: lighten($secondary-color, 10%);
$primary-font: "Roboto Condensed", sans-serif;
$black: #444;
$white: #fff;
$cubic-bezier: cubic-bezier(0, 0.51, 0.31, 1.51);
$xs: 480px;
$sm: 768px;
$md: 992px;
$lg: 1200px;

* {
    box-sizing: border-box;
}

.nav-is-default {
    background-color: $primary-color-tint;
    font-family: $primary-font;
    line-height: 1.875em;
}

h1 {
    color: $primary-color-dark;
    font-size: 1.75em;
}

a {
    &:hover {
        text-decoration: none;
    }
}

.button {
    display: inline-block;
    padding: 6px 20px;
    border-radius: 3px;
    background-color: #F2E3DB;
    background-image: linear-gradient(to right, $primary-color 50%, #F2E3DB 50%);
    background-size: 200%;
    background-position: 100% 0;
    font-size: 0.75rem;
    line-height: 20px;
    color: $primary-color-dark;
    text-align: center;
    white-space: nowrap;
    transition: 0.15s;

    &:hover {
        text-decoration: none;
        background-color: $primary-color;
        background-position: 0 0;
        color: #ffffff;
    }

    .icon {
        font-size: 1.25em;
        vertical-align: middle;
    }
}

.b-white {
    background-color: $white;
}


// NAV

$nav-top-height: 50px;
$nav-side-expanded-width: 270px;
$nav-side-condensed-width: 60px;
$nav-side-pad-x: 30px;

.nav {
    &-top {
        position: fixed;
        z-index: 101;
        top: 0;
        left: 0;
        width: 100%;
        height: $nav-top-height;
        box-shadow: 0px 5px 0 rgba($secondary-color-dark, 0.5);
        background-color: $white;
    }

    &-side {
        position: fixed;
        z-index: 100;
        left: 0;
        top: 0;
        padding-top: 70px;
        height: 100%;
        background-color: $secondary-color;
        // transition: width 0.35s $cubic-bezier;
        transition: width 0.35s, transform 0.35s;

        .nav-side-button {
            transition: padding 0.35s;
        }

        .nav-link {
            position: relative;
            display: block;
            padding: 10px $nav-side-pad-x;
            color: $white;
            white-space: nowrap;
            transition: background-color 0.35s, padding 0.35s;

            &:not(.active):hover {
                background-color: rgba($primary-color-tint, 0.2);
            }

            &.active {
                border-right: solid 5px rgba($primary-color-tint, 0.2);
            }

            .icon {
                height: 20px;
                width: 20px;
                font-size: 1.25em;
                text-align: center;
            }
        }

        .button {
            position: relative;
            width: 100%;
            box-shadow: 5px 5px 0 $secondary-color-dark;

            &:first-of-type {
                margin-top: 10px;
            }
        }

        .link-text {
            white-space: nowrap;
        }
    }
}

.nav-toggle {
    position: relative;
    margin-left: $nav-side-pad-x;
    height: 100%;
    border: none;
    background-color: transparent;
    cursor: pointer;

    &:focus {
        outline: none;
    }
}

%ham-bars {
    position: absolute;
    top: 50%;
    left: 0;
    height: 2px;
    width: 17px;
    border-radius: 2px;
    background-color: $primary-color;
}

.ham-bars {
    @extend %ham-bars;
    transition: 0.4s;

    &::before,
    &::after {
        content: '';
        @extend %ham-bars;
        transition: 0.4s;
    }

    &::before {
        top: -6px;
    }

    &::after {
        top: 6px;
    }
}

.nav-is-default {
    .nav-side {
        width: $nav-side-expanded-width;
        // transition: width 0.35s 0.2s;

        @media (max-width: 767px) {
            transform: translateX(-100%);
        }

        &-button {
            padding: 0 $nav-side-pad-x;
        }

        .nav-link {

            // transition: background-color 0.35s, padding 0.35s 0.35s;
            .icon {
                margin-right: 0.75em;
                transition: width 0.5s 0.1s;
            }
        }

        .link-text {
            opacity: 1;
            transition: opacity 0.2s 0.35s;
        }
    }

    @media (min-width: $sm) {
        .nav-toggle {
            &:hover {
                .ham-bars {
                    &::before {
                        transform: translateX(-50%) translateY(3px) rotate(-45deg) scaleX(0.5);
                    }

                    &::after {
                        transform: translateX(-50%) translateY(-3px) rotate(45deg) scaleX(0.5);
                    }
                }
            }
        }
    }
}

.nav-side-links {
    list-style-type: none;
    margin-left: -35px;
}

.nav-is-toggled {
    @media (min-width: $sm) {
        .nav-side {
            width: $nav-side-condensed-width;
            // transition: width 0.35s 0.25s;

            .nav-side-button {
                padding: 0 10px;
            }

            .nav-side-button .btn {
                width: 10px;
            }

            .button,
            .nav-link {
                &:hover {
                    .link-text {
                        visibility: visible;
                        opacity: 1;
                        transform: translateX(0);
                        transition: 0.3s ease-in;
                    }
                }

                .link-text {
                    position: absolute;
                    padding: 7px 15px;
                    max-width: 175px;
                    width: auto;
                    border-radius: 15px;
                    box-shadow: 5px 5px 0 $primary-color-dark;
                    background-color: $white;
                    color: $secondary-color;
                    font-size: 0.75rem;
                    line-height: 1.25em;
                    letter-spacing: 0.03em;
                    display: inline-block;
                    visibility: hidden;
                    opacity: 0;
                    transform: translateX(-10px);
                    transition: opacity 0.2s 0.35s;
                }
            }

            .nav-link {
                padding-left: 20px;
                padding-right: 20px;
                transition: background-color 0.35s, padding 0.35s 0.1s;

                .link-text {
                    top: 10px;
                    left: calc(100% + 10px);
                }
            }

            .button {
                padding-left: 0;
                padding-right: 0;

                .link-text {
                    top: 0;
                    left: calc(100% + 20px);
                }
            }
        }

        .nav-toggle {
            &:hover {
                .ham-bars {
                    &::before {
                        transform: translateX(50%) translateY(3px) rotate(45deg) scaleX(0.5);
                    }

                    &::after {
                        transform: translateX(50%) translateY(-3px) rotate(-45deg) scaleX(0.5);
                    }
                }
            }
        }
    }

    @media (max-width: 767px) {
        .nav-side {
            width: $nav-side-expanded-width;
            transform: translateX(0);

            .nav-side-button {
                padding: 0 $nav-side-pad-x;
            }

            .nav-side-button .btn {
                width: 10px;
            }

            .nav-link {
                .icon {
                    margin-right: 0.75em;
                    transition: width 0.5s 0.1s;
                }
            }
        }

        .ham-bars {
            background-color: transparent;

            &::before,
            &::after {
                top: 0;
                transition: top 0.2s, transform 0.4s 0.35s $cubic-bezier;
            }

            &::before {
                transform: rotate(45deg);
            }

            &::after {
                transform: rotate(-45deg);
            }
        }
    }
}

.hidden {
    display: none;
}

// CONTENT

.main-content {
    transition: 0.35s;
}

@media (min-width: $sm) {
    .nav-is-default {
        .main-content {
            padding-left: $nav-side-expanded-width;
        }
    }

    .nav-is-toggled {
        .main-content {
            padding-left: $nav-side-condensed-width;
        }
    }

    .main-content {
        .container-fluid {
            padding-left: 30px;
            padding-right: 30px;
        }
    }
}

@media (max-width: 767px) {
    body {
        &::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            background-color: rgba(white, 0.6);
            opacity: 0;
            visibility: hidden;
            transition: opacity 0.2s;
        }
    }

    .nav-is-toggled {
        height: 100%;
        overflow: hidden;

        &::after {
            opacity: 1;
            visibility: visible;
        }

        .main-content {
            transform: translateX($nav-side-expanded-width);
        }
    }
}

// FO STYLIN'
.hero {
    padding-top: $nav-top-height + 30px;
    padding-bottom: 10px;
    min-height: 120px;
    background-color: $primary-color;
}

.content-block {
    margin-bottom: 30px;
    height: 150px;
    box-shadow: 5px 5px 0 $primary-color;
    background-color: $white;
}

.module-row {
    display: flex;
    flex-wrap: wrap;

    .module {
        display: flex;
        flex-grow: 1;
        min-width: 250px;

        .content-block {
            width: 100%;
        }
    }
}

#wifi-loader {
    --background: #62abff;
    --front-color: #4f29f0;
    --back-color: #c3c8de;
    --text-color: #414856;
    width: 300px;
    height: 300px;
    border-radius: 50px;
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #5abd8ba4;
}

#wifi-loader svg {
    position: absolute;
    display: flex;
    justify-content: center;
    align-items: center;
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
    bottom: 70px;
    display: flex;
    justify-content: center;
    align-items: center;
    font-weight: 500;
    font-size: 14px;
    letter-spacing: 0.2px;
}

#wifi-loader .text::before,
#wifi-loader .text::after {
    content: attr(data-text);
}

#wifi-loader .text::before {
    color: white;
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
  
