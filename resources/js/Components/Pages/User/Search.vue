<template>
    <div>
        <div class="main-content">
            <div style="margin: auto;" class="container">
                <div class="content py-4 mt-4">
                    <div class="container">
                        <div id="availableSeminars" class="scroll content-text">Available Seminars</div>
                        <div class="row row-cols-5">
                            <div v-for="result in searchResults" :key="result.id" class="col py-3">
                                <div class="card-seminar">
                                    <img loading="lazy"
                                        srcSet="https://cdn.builder.io/api/v1/image/assets/TEMP/b828a4cb40f28685339f158df8580e32dfa741bd44904ff46e4c5ef0327cdc26?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=100 100w, https://cdn.builder.io/api/v1/image/assets/TEMP/b828a4cb40f28685339f158df8580e32dfa741bd44904ff46e4c5ef0327cdc26?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=200 200w, https://cdn.builder.io/api/v1/image/assets/TEMP/b828a4cb40f28685339f158df8580e32dfa741bd44904ff46e4c5ef0327cdc26?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=400 400w, https://cdn.builder.io/api/v1/image/assets/TEMP/b828a4cb40f28685339f158df8580e32dfa741bd44904ff46e4c5ef0327cdc26?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=800 800w, https://cdn.builder.io/api/v1/image/assets/TEMP/b828a4cb40f28685339f158df8580e32dfa741bd44904ff46e4c5ef0327cdc26?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=1200 1200w, https://cdn.builder.io/api/v1/image/assets/TEMP/b828a4cb40f28685339f158df8580e32dfa741bd44904ff46e4c5ef0327cdc26?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=1600 1600w, https://cdn.builder.io/api/v1/image/assets/TEMP/b828a4cb40f28685339f158df8580e32dfa741bd44904ff46e4c5ef0327cdc26?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=2000 2000w, https://cdn.builder.io/api/v1/image/assets/TEMP/b828a4cb40f28685339f158df8580e32dfa741bd44904ff46e4c5ef0327cdc26?apiKey=ff3368bd5fd6477688619c390d91ee7a&"
                                        class="img-seminar" />
                                    <div class="header-seminar-card">
                                        <div class="header-seminar">
                                            <img loading="lazy" src="../../../../../public/logo/supsofttech.png"
                                                class="logo-seminar-header" />
                                        </div>
                                        <div class="text-seminar">{{ result.topic }}</div>
                                    </div>
                                    <router-link style="text-decoration: none;" :to="{ name: 'SeminarInfo', params: { id: result.id }}" class="footer-seminar">
                                        <div class="show-more">
                                            <div class="text-footer">Show more</div>
                                            <i><font-awesome-icon style="" class="icon-footer"
                                                    :icon="['fas', 'fa-angles-right']" /></i>
                                        </div>
                                    </router-link>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>
import { ref, defineProps } from 'vue';


const props = defineProps({
  searchResults: {
    type: Array,
    required: true
  }
});


</script>

<style scoped>
.carousel__item {
    width: 95%;
    height: 30vh;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: start;
}

.carousel__slide {
    height: 40vh;
}

.carousel__track {
    transform-style: preserve-3d;
}

.carousel__slide--sliding {
    transition: 0.5s;
}

.carousel__slide {
    opacity: 0.9;
    transform: rotateY(-20deg) scale(0.9);
}

.carousel__slide--active~.carousel__slide {
    transform: rotateY(20deg) scale(0.9);
}

.carousel__slide--prev {
    opacity: 2;
    transform: rotateY(-10deg) scale(0.89);
}

.carousel__slide--next {
    opacity: 2;
    transform: rotateY(10deg) scale(0.95);
}

.carousel__slide--active {
    opacity: 1;
    transform: rotateY(0) scale(1);
}

.carousel__slide--prev,
.carousel__slide--next {
    transition: 0.5s;
}

.dashboard-header {
    border-radius: 16px 16px 0px 0px;
    background-color: rgba(48, 56, 65, 1);
    display: flex;
    width: 100%;
    flex-direction: column;
    padding: 20px 47px;
    margin-top: 70px;
}

@media (max-width: 991px) {
    .dashboard-header {
        max-width: 100%;
        padding: 0 20px;
    }
}

.header-text {
    color: #fff;
    font: 600 25px Inter, sans-serif;
}

@media (max-width: 991px) {
    .header-text {
        max-width: 100%;
    }
}

.header-subcontent {
    display: flex;
    margin-top: 12px;
    width: 100%;
    justify-content: space-between;
    gap: 20px;
}

@media (max-width: 991px) {
    .header-subcontent {
        max-width: 100%;
        flex-wrap: wrap;
    }
}

.header-sub-text {
    color: var(--White, #c9c9c9);
    flex-grow: 1;
    flex-basis: auto;
    font: 100 16px Inter, sans-serif;
}

@media (max-width: 991px) {
    .header-sub-text {
        max-width: 100%;
    }
}

.ellipsis-card {
    position: relative;
    display: flex;
    gap: 10px;
}

.ellipsis {
    width: 13px;
    height: 13px;
    background-color: #8f8f8f;
    border-radius: 50%;
    cursor: pointer;
}

.dropdown-options {
    position: absolute;
    top: calc(100% + 5px);
    left: 0;
    background-color: white;
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    z-index: 1000;
}

.dropdown-option {
    cursor: pointer;
    padding: 5px 10px;
    width: 100px;
    text-align: start;
    border: none;
    background-color: white;
}

.dropdown-option:hover {
    background-color: #f0f0f0;
}

.container1 {
    margin-top: 87px;
    width: 100%;
    display: block;
}

@media (max-width: 991px) {
    .container1 {
        max-width: 100%;
        margin-top: 40px;
    }
}

.container2 {
    gap: 60px;
    display: flex;
}

@media (max-width: 991px) {
    .container2 {
        flex-direction: column;
        align-items: stretch;
        gap: 0px;
    }
}

.column {
    display: flex;
    flex-direction: column;
    line-height: normal;
    width: 41%;
    margin-left: 0px;
}

@media (max-width: 991px) {
    .column {
        width: 100%;
    }
}

.content-1 {
    display: flex;
    flex-direction: column;
}

@media (max-width: 991px) {
    .content-1 {
        max-width: 100%;
        margin-top: 40px;
    }
}

.card-1 {
    display: flex;
    justify-content: space-between;
    gap: 0px;
}

@media (max-width: 991px) {
    .card-1 {
        max-width: 100%;
        flex-wrap: wrap;
    }
}

.count-card {
    border-radius: 10px 0px 0px 10px;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    background-color: #fff;
    display: flex;
    flex-grow: 1;
    flex-basis: 0%;
    flex-direction: column;
    padding: 5px 25px;
}

@media (max-width: 991px) {
    .count-card {
        padding: 0 20px;
    }
}

.count-text {
    color: var(--Black, #191919);
    font: 700 26px Inter, sans-serif;
    margin-top: 5px;
}

.count-sub-text {
    color: rgba(60, 54, 51, 0.7);
    margin-top: 15px;
    font: 500 18px Inter, sans-serif;
    margin-bottom: 5px;
}

.count-logo {
    border-radius: 0px 10px 10px 0px;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    background-color: #47555e;
    display: flex;
    flex-basis: 0%;
    justify-content: center;
    align-items: center;
    padding: 20px 35px;
}

@media (max-width: 991px) {
    .count-logo {
        padding: 0 20px;
    }
}

.count-img {
    aspect-ratio: 1;
    object-fit: auto;
    object-position: center;
    width: 35px;
}

.column-1 {
    display: flex;
    flex-direction: column;
    width: 60%;
    margin-top: 10px;
}

@media (max-width: 991px) {
    .column-1 {
        width: 100%;
    }
}

.content-2 {
    flex-grow: 1;
    flex-direction: column;
    width: 100%;

}

@media (max-width: 991px) {
    .content-2 {
        max-width: 100%;
        margin-top: 40px;
    }
}

.seminar-container {
    width: 100%;
    align-items: center;
    justify-content: center;
    margin-top: -25px;
    cursor: grab;
}

.seminar-container:active {
    cursor: grabbing;
}

@media (max-width: 991px) {
    .seminar-container {
        max-width: 100%;
    }
}

.seminar-cards {
    gap: 28px;
    display: flex;
}

@media (max-width: 991px) {
    .seminar-cards {
        flex-direction: column;
        align-items: stretch;
        gap: 0px;
    }
}

.seminar-card {
    display: flex;
    flex-direction: column;
    line-height: normal;
    width: 33%;
    margin-left: 0px;
}

@media (max-width: 991px) {
    .seminar-card {
        width: 100%;
    }
}

.seminar-card-1 {
    border-radius: 10px;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    background-color: #fff;
    display: flex;
    width: 100%;
    flex-grow: 1;
    height: 35vh;
    flex-direction: column;
    font-weight: 400;
    margin: 0 auto;
    padding: 10px 29px 29px 14px;
}

@media (max-width: 991px) {
    .seminar-card-1 {
        margin-top: 34px;
        padding-right: 20px;
    }
}

.seminar-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    align-content: center;
    gap: 9px;
    font-weight: 500;
    white-space: nowrap;
}

@media (max-width: 991px) {
    .seminar-header {
        white-space: initial;
    }
}

.seminar-logo {
    background-color: #47555e;
    border-radius: 50%;
    aspect-ratio: 1;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 30px;
    color: var(--White, #eee);
    padding: 0 7px;
    font: 8px Inter, sans-serif;
}

@media (max-width: 991px) {
    .seminar-logo {
        white-space: initial;
    }
}

.seminar-text {
    color: rgba(60, 54, 51, 0.7);
    align-self: start;
    margin: auto;
    flex-grow: 1;
    font: 20px Inter, sans-serif;
}

@media (max-width: 991px) {
    .seminar-text {
        white-space: initial;
    }
}

.seminar-date {
    color: rgba(60, 54, 51, 0.7);
    margin-top: 20px;
    white-space: nowrap;
    font: 12px Inter, sans-serif;
}

@media (max-width: 991px) {
    .seminar-date {
        white-space: initial;
    }
}

.seminar-time {
    color: rgba(60, 54, 51, 0.7);
    margin-top: 4px;
    white-space: nowrap;
    font: 12px Inter, sans-serif;
}

@media (max-width: 991px) {
    .seminar-time {
        white-space: initial;
    }
}

.seminar-subtext {
    color: rgba(60, 54, 51, 0.7);
    margin-top: 20px;
    font: 300 14px Inter, sans-serif;
}

.img-2 {
    aspect-ratio: 4.35;
    object-fit: auto;
    object-position: center;
    width: 60px;
    align-self: center;
    margin-top: 28px;
}

.cert-card {
    display: flex;
    flex-direction: column;
    overflow: hidden;
    position: relative;
    display: flex;
    aspect-ratio: 1.69;
    max-width: 262px;
    font-weight: 500;
    white-space: nowrap;
    padding: 50px 26px 15px;
}

.cert-img {
    position: absolute;
    inset: 0;
    height: 100%;
    width: 100%;
    object-position: center;
}

.org-card {
    position: relative;
    border-radius: 20px;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    background-color: #fff;
    display: flex;
    margin-top: 58px;
    justify-content: space-between;
    gap: 16px;
    padding: 1px;
}

.org-logo {
    background-color: var(--Secondary, #47555e);
    border-radius: 50%;
    aspect-ratio: 1;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 30px;
    color: var(--White, #eee);
    padding: 0 6px;
    font: 8px Montserrat, sans-serif;
}

.org-name {
    color: rgba(60, 54, 51, 0.8);
    align-self: start;
    margin: auto;
    flex-grow: 1;
    font: 14px Montserrat, sans-serif;
}

.footer {
    background-color: #47555E;
    display: flex;
    justify-content: center;
    align-items: center;
    color: #EEEEEE;
    max-width: 100%;
    width: 100%;
    font-size: 14px;
    padding: 6px;
}

.card-seminar {
    display: flex;
    flex-direction: column;
    overflow: hidden;
    position: relative;
    display: flex;
    aspect-ratio: 0.88;
    max-width: 213px;
    padding-top: 11px;
    border-radius: 10px;
}

.img-seminar {
    position: absolute;
    inset: 0;
    height: 100%;
    width: 100%;
    object-fit: cover;
    object-position: center;
}

.header-seminar-card {
    position: relative;
    border-radius: 50px;
    background-color: rgba(60, 54, 51, 0.6);
    display: flex;
    gap: 6px;
    padding: 3px 3px;
    width: 80%;
    margin-left: 10px;
}

.header-seminar {
    filter: drop-shadow(0px 4px 4px rgba(255, 255, 255, 0.1));
    background-color: #d9d9d9;
    border-radius: 50%;
    display: flex;
    aspect-ratio: 0.94;
    justify-content: center;
    align-items: center;
}

.logo-seminar-header {
    aspect-ratio: 0.94;
    object-fit: auto;
    object-position: center;
    width: 16px;
}

.text-seminar {
    color: #fff;
    display: flex;
    align-items: center;
    margin-left: 2px;
    font: 500 11px Inter, sans-serif;
}

.footer-seminar {
    position: relative;
    border-radius: 0px 0px 10px 10px;
    background: linear-gradient(rgba(60, 54, 51, 0), rgba(60, 54, 51, 0.7));
    display: flex;
    margin-top: 148px;
    width: 100%;
    justify-content: space-between;
    font-size: 10.5px;
    color: #fff;
    font-weight: 500;
    padding: 32px;
    backdrop-filter: blur(2px);
    cursor: pointer;
}

.show-more {
    display: flex;
    gap: 15px;
    margin: auto;
    margin-top: -10px;
}


.text-footer {
    font-family: 500 900px Inter, sans-serif;
}

.img-footer {
    aspect-ratio: 5;
    object-fit: auto;
    object-position: center;
    width: 100%;
    flex: 1;
}

@keyframes moveLeft {
    0% {
        transform: translateX(0);
    }

    50% {
        transform: translateX(-10px);
    }

    100% {
        transform: translateX(0);
    }
}

@keyframes moveRight {
    0% {
        transform: translateX(0);
    }

    50% {
        transform: translateX(10px);
    }

    100% {
        transform: translateX(0);
    }
}

.icon-footer {
    animation: moveLeftRight 2s infinite alternate;
    height: 12px;
}

/* Bootstrap classes for animation */
@keyframes moveLeftRight {
    0% {
        transform: translateX(0);
    }

    50% {
        transform: translateX(-10px);
    }

    100% {
        transform: translateX(0);
    }
}

.content-text {
    color: rgba(60, 54, 51, 0.7);
    font: 400 20px Inter, sans-serif;
    margin-bottom: 20px;
}

@media (max-width: 991px) {
    .content-text {
        max-width: 100%;
    }
}


.floating-button {
    position: fixed;
    left: 3%;
    transform: translateX(-50%) rotate(180deg);
    margin: 0;
    padding: 0;
    display: flex;
    align-items: center;
    height: 100vh;
}

.floating-button a {
    padding: 10px;
    background-color: #7AA5D2;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transform: rotate(-90deg);
    text-decoration: none;
}

.scroll {
    scroll-behavior: smooth;
    animation-duration: 100px;
}
</style>