<script setup>
import { ref, onMounted, onBeforeUnmount } from 'vue';

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
    initializeHamburgers();
});
</script>

<template>
    <div class="div">
        <div class="div-5">
            <ul class="nav nav-tabs" role="tablist">
                <li class="nav-item" role="presentation">
                    <a class="nav-link active" data-bs-toggle="tab" href="#" role="tab"> Tab 1 </a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" data-bs-toggle="tab" href="#" role="tab"> Tab 2 </a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">
                        <span class="dropdown-toggle"> Dropdown </span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                        <li>
                            <hr class="dropdown-divider" />
                        </li>
                        <li><a class="dropdown-item" href="#">Separated link</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="div-10">
            <div class="div-11">
                <div class="column">
                    <div class="div-12">
                        <div class="div-13">Certificate 1</div>
                        <div class="div-14">Certificate 2</div>
                        <div class="div-15">Certificate 3</div>
                        <div class="div-16">Certificate 4</div>
                    </div>
                </div>
                <div class="column-2">
                    <div class="div-17"></div>
                </div>
            </div>
        </div>
        <div class="div-18">Activity Feed</div>
        <div class="div-19">
            <div class="div-20">
                <div class="column-3">
                    <div class="div-21">
                        <div class="div-22">
                            <div class="div-23"></div>
                            <div class="div-24">
                                <div class="div-25">ReactJS Workshop</div>
                                <div class="div-26">02/24/2024</div>
                            </div>
                        </div>
                        <div class="div-27">
                            <div class="div-28"></div>
                            <div class="div-29">
                                <div class="div-30">Training 1</div>
                                <div class="div-31">02/24/2024</div>
                            </div>
                        </div>
                        <div class="div-32">
                            <div class="div-33"></div>
                            <div class="div-34">
                                <div class="div-35">ReactJS Workshop</div>
                                <div class="div-36">02/24/2024</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="column-4">
                    <div class="div-37">
                        <div class="div-38">07:00 AM-12:00 NN</div>
                        <div class="div-39">07:00 AM-12:00 NN</div>
                        <div class="div-40">07:00 AM-12:00 NN</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
  
  
  
<style scoped>

.div {
    background-color: rgba(255, 255, 255, 1);
    display: flex;
    flex-direction: column;
    align-items: start;
    padding: 48px 39px;
}

@media (max-width: 991px) {
    .div {
        padding: 0 20px;
    }
}

.div-2 {
    align-self: stretch;
    display: flex;
    width: 100%;
    align-items: center;
    justify-content: space-between;
    gap: 20px;
    font-size: 20px;
    color: #746161;
    font-weight: 500;
    white-space: nowrap;
}

@media (max-width: 991px) {
    .div-2 {
        max-width: 100%;
        flex-wrap: wrap;
        white-space: initial;
    }
}

.img {
    aspect-ratio: 1.35;
    object-fit: auto;
    object-position: center;
    width: 39px;
    align-self: stretch;
    margin: auto 0;
}

.div-3 {
    border-radius: 6px;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    background-color: rgba(65, 100, 74, 0.1);
    align-self: stretch;
    display: flex;
    justify-content: space-between;
    gap: 20px;
    margin: auto 0;
    padding: 11px 28px;
}

@media (max-width: 991px) {
    .div-3 {
        max-width: 100%;
        flex-wrap: wrap;
        white-space: initial;
        padding: 0 20px;
    }
}

.div-4 {
    font-family: Inter, sans-serif;
    align-self: start;
    margin-top: 13px;
}

.img-2 {
    aspect-ratio: 1;
    object-fit: auto;
    object-position: center;
    width: 33px;
}

.img-3 {
    aspect-ratio: 1.08;
    object-fit: auto;
    object-position: center;
    width: 67px;
    align-self: stretch;
}

.div-5 {
    display: flex;
    width: 540px;
    max-width: 100%;
    align-items: start;
    justify-content: space-between;
    gap: 20px;
    font-size: 25px;
    color: #746161;
    font-weight: 500;
    white-space: nowrap;
    margin: 95px 0 0 69px;
}

@media (max-width: 991px) {
    .div-5 {
        flex-wrap: wrap;
        margin-top: 40px;
        white-space: initial;
    }
}

.div-6 {
    display: flex;
    flex-grow: 1;
    flex-basis: 0%;
    flex-direction: column;
    color: #242424;
}

@media (max-width: 991px) {
    .div-6 {
        white-space: initial;
    }
}

.div-7 {
    font-family: Inter, sans-serif;
}

.img-4 {
    aspect-ratio: 50;
    object-fit: auto;
    object-position: center;
    width: 190px;
    stroke-width: 3px;
    stroke: var(--Secondary, #e86a33);
    align-self: center;
    margin-top: 14px;
}

.div-8 {
    font-family: Inter, sans-serif;
}

.div-9 {
    font-family: Inter, sans-serif;
}

.div-10 {
    align-self: center;
    margin-top: 57px;
    width: 100%;
    max-width: 1225px;
}

@media (max-width: 991px) {
    .div-10 {
        max-width: 100%;
        margin-top: 40px;
    }
}

.div-11 {
    gap: 20px;
    display: flex;
}

@media (max-width: 991px) {
    .div-11 {
        flex-direction: column;
        align-items: stretch;
        gap: 0px;
    }
}

.column {
    display: flex;
    flex-direction: column;
    line-height: normal;
    width: 50%;
    margin-left: 0px;
}

@media (max-width: 991px) {
    .column {
        width: 100%;
    }
}

.div-12 {
    display: flex;
    flex-direction: column;
    font-size: 20px;
    color: #333;
    font-weight: 500;
}

@media (max-width: 991px) {
    .div-12 {
        max-width: 100%;
        margin-top: 40px;
    }
}

.div-13 {
    font-family: Inter, sans-serif;
    border-radius: 6px;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    background-color: var(--f-2-e-3-db, #f2e3db);
    justify-content: center;
    align-items: start;
    padding: 20px 60px 20px 24px;
}

@media (max-width: 991px) {
    .div-13 {
        max-width: 100%;
        padding: 0 20px;
    }
}

.div-14 {
    font-family: Inter, sans-serif;
    border-radius: 6px;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    background-color: var(--f-2-e-3-db, #f2e3db);
    margin-top: 22px;
    justify-content: center;
    align-items: start;
    padding: 20px 60px 20px 24px;
}

@media (max-width: 991px) {
    .div-14 {
        max-width: 100%;
        padding: 0 20px;
    }
}

.div-15 {
    font-family: Inter, sans-serif;
    border-radius: 6px;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    background-color: var(--f-2-e-3-db, #f2e3db);
    margin-top: 22px;
    justify-content: center;
    align-items: start;
    padding: 20px 60px 20px 24px;
}

@media (max-width: 991px) {
    .div-15 {
        max-width: 100%;
        padding: 0 20px;
    }
}

.div-16 {
    font-family: Inter, sans-serif;
    border-radius: 6px;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    background-color: var(--f-2-e-3-db, #f2e3db);
    margin-top: 22px;
    justify-content: center;
    align-items: start;
    padding: 20px 60px 20px 24px;
}

@media (max-width: 991px) {
    .div-16 {
        max-width: 100%;
        padding: 0 20px;
    }
}

.column-2 {
    display: flex;
    flex-direction: column;
    line-height: normal;
    width: 50%;
    margin-left: 20px;
}

@media (max-width: 991px) {
    .column-2 {
        width: 100%;
    }
}

.div-17 {
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    background-color: #fff;
    width: 563px;
    max-width: 100%;
    height: 291px;
    margin: 0 auto;
}

@media (max-width: 991px) {
    .div-17 {
        margin-top: 40px;
    }
}

.div-18 {
    color: #746161;
    margin: 61px 0 0 71px;
    font: 500 20px Inter, sans-serif;
}

@media (max-width: 991px) {
    .div-18 {
        margin: 40px 0 0 10px;
    }
}

.div-19 {
    border: 1px dashed #000;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    background-color: rgba(217, 217, 217, 0);
    width: 597px;
    max-width: 100%;
    margin: 14px 0 0 71px;
    padding: 48px 63px;
}

@media (max-width: 991px) {
    .div-19 {
        padding: 0 20px;
    }
}

.div-20 {
    gap: 20px;
    display: flex;
}

@media (max-width: 991px) {
    .div-20 {
        flex-direction: column;
        align-items: stretch;
        gap: 0px;
    }
}

.column-3 {
    display: flex;
    flex-direction: column;
    line-height: normal;
    width: 73%;
    margin-left: 0px;
}

@media (max-width: 991px) {
    .column-3 {
        width: 100%;
    }
}

.div-21 {
    display: flex;
    flex-grow: 1;
    flex-direction: column;
    color: #746161;
}

@media (max-width: 991px) {
    .div-21 {
        margin-top: 40px;
    }
}

.div-22 {
    display: flex;
    justify-content: space-between;
    gap: 20px;
}

.div-23 {
    background-color: var(--Secondary, #e86a33);
    border-radius: 50%;
    width: 26px;
    height: 20px;
    margin: auto 0;
}

.div-24 {
    display: flex;
    flex-grow: 1;
    flex-basis: 0%;
    flex-direction: column;
}

.div-25 {
    font: 500 20px Inter, sans-serif;
}

.div-26 {
    margin-top: 8px;
    font: 400 15px Inter, sans-serif;
}

.div-27 {
    display: flex;
    margin-top: 37px;
    padding-right: 80px;
    justify-content: space-between;
    gap: 20px;
}

@media (max-width: 991px) {
    .div-27 {
        padding-right: 20px;
    }
}

.div-28 {
    background-color: var(--Secondary, #e86a33);
    border-radius: 50%;
    width: 26px;
    height: 20px;
    margin: auto 0;
}

.div-29 {
    display: flex;
    flex-grow: 1;
    flex-basis: 0%;
    flex-direction: column;
}

.div-30 {
    font: 500 20px Inter, sans-serif;
}

.div-31 {
    margin-top: 8px;
    font: 400 15px Inter, sans-serif;
}

.div-32 {
    display: flex;
    margin-top: 37px;
    justify-content: space-between;
    gap: 20px;
}

.div-33 {
    background-color: var(--Secondary, #e86a33);
    border-radius: 50%;
    width: 26px;
    height: 20px;
    margin: auto 0;
}

.div-34 {
    display: flex;
    flex-grow: 1;
    flex-basis: 0%;
    flex-direction: column;
}

.div-35 {
    font: 500 20px Inter, sans-serif;
}

.div-36 {
    margin-top: 8px;
    font: 400 15px Inter, sans-serif;
}

.column-4 {
    display: flex;
    flex-direction: column;
    line-height: normal;
    width: 27%;
    margin-left: 20px;
}

@media (max-width: 991px) {
    .column-4 {
        width: 100%;
    }
}

.div-37 {
    display: flex;
    margin-top: 26px;
    flex-direction: column;
    font-size: 12px;
    color: #746161;
    font-weight: 300;
}

@media (max-width: 991px) {
    .div-37 {
        margin-top: 40px;
    }
}

.div-38 {
    font-family: Inter, sans-serif;
}

.div-39 {
    font-family: Inter, sans-serif;
    margin-top: 68px;
}

@media (max-width: 991px) {
    .div-39 {
        margin-top: 40px;
    }
}

.div-40 {
    font-family: Inter, sans-serif;
    margin-top: 68px;
}

@media (max-width: 991px) {
    .div-40 {
        margin-top: 40px;
    }
}
</style>