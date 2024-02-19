
<script setup>

</script>

<template>
    <div>
        <nav class="header sticky-top">
            <RouterLink to="" style="text-decoration: none; display: flex;">
                <img loading="lazy" src="../../../../public/external/C-Logo.png" class="img" />
                <p class="logo-text">CertiCode</p>
            </RouterLink>
            <form class="search-input">
                <div class="input-group">
                    <input style="padding: 5px;" type="text" class="form-control" placeholder="Search">
                    <div class="input-group-btn">
                        <button style="padding: 5px 8px; box-shadow:0px 0px 0px 2px #e2e0e0 inset; border-radius: 0px 5px 5px 0px;"
                            class="btn btn-default" type="submit">
                            <i><font-awesome-icon style="color: #000; height: 18px;" class="icon"
                                    :icon="['fas', 'fa-search']" /></i>
                        </button>
                    </div>
                </div>
            </form>
            <div class="logout-button">
                <i><font-awesome-icon style="color: #000; height: 18px;" class="icon" :icon="['fas', 'fa-power-off']" /></i>
            </div>
        </nav>
        <div class="main-content">
            <div style="margin: auto;" class="container">
                <div class="dashboard-header">
                    <div class="header-text">Track Your Recognitions Here</div>
                    <div class="header-subcontent">
                        <div class="header-sub-text">
                            Empower Your Achievements with CertiCode. Redefining Recognition in a
                            Click
                        </div>
                        <div class="ellipsis-card">
                            <div class="ellipsis"></div>
                            <div class="ellipsis"></div>
                            <div class="ellipsis"></div>
                        </div>
                    </div>
                </div>
                <div class="container1">
                    <div class="container2">
                        <div class="column">
                            <div class="content-1">
                                <div class="card-1">
                                    <div class="count-card">
                                        <div class="count-text">100</div>
                                        <div class="count-sub-text">Total Seminars Attended</div>
                                    </div>
                                    <div class="count-logo">
                                        <img loading="lazy"
                                            srcSet="https://cdn.builder.io/api/v1/image/assets/TEMP/a0c13314b6c67eb8d18069f7f20c303fff19d43b1d6448f3bd941729bc5157fc?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=100 100w, https://cdn.builder.io/api/v1/image/assets/TEMP/a0c13314b6c67eb8d18069f7f20c303fff19d43b1d6448f3bd941729bc5157fc?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=200 200w, https://cdn.builder.io/api/v1/image/assets/TEMP/a0c13314b6c67eb8d18069f7f20c303fff19d43b1d6448f3bd941729bc5157fc?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=400 400w, https://cdn.builder.io/api/v1/image/assets/TEMP/a0c13314b6c67eb8d18069f7f20c303fff19d43b1d6448f3bd941729bc5157fc?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=800 800w, https://cdn.builder.io/api/v1/image/assets/TEMP/a0c13314b6c67eb8d18069f7f20c303fff19d43b1d6448f3bd941729bc5157fc?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=1200 1200w, https://cdn.builder.io/api/v1/image/assets/TEMP/a0c13314b6c67eb8d18069f7f20c303fff19d43b1d6448f3bd941729bc5157fc?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=1600 1600w, https://cdn.builder.io/api/v1/image/assets/TEMP/a0c13314b6c67eb8d18069f7f20c303fff19d43b1d6448f3bd941729bc5157fc?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=2000 2000w, https://cdn.builder.io/api/v1/image/assets/TEMP/a0c13314b6c67eb8d18069f7f20c303fff19d43b1d6448f3bd941729bc5157fc?apiKey=ff3368bd5fd6477688619c390d91ee7a&"
                                            class="count-img" />
                                    </div>
                                </div>
                                <div class="card-1">
                                    <div class="count-card">
                                        <div class="count-text">100</div>
                                        <div class="count-sub-text">Total Certificates</div>
                                    </div>
                                    <div class="count-logo">
                                        <img loading="lazy"
                                            srcSet="https://cdn.builder.io/api/v1/image/assets/TEMP/652f85d1288d122f50fac5b2b59acef0c3862fd50b522fdf0d56c17f0b6b7476?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=100 100w, https://cdn.builder.io/api/v1/image/assets/TEMP/652f85d1288d122f50fac5b2b59acef0c3862fd50b522fdf0d56c17f0b6b7476?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=200 200w, https://cdn.builder.io/api/v1/image/assets/TEMP/652f85d1288d122f50fac5b2b59acef0c3862fd50b522fdf0d56c17f0b6b7476?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=400 400w, https://cdn.builder.io/api/v1/image/assets/TEMP/652f85d1288d122f50fac5b2b59acef0c3862fd50b522fdf0d56c17f0b6b7476?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=800 800w, https://cdn.builder.io/api/v1/image/assets/TEMP/652f85d1288d122f50fac5b2b59acef0c3862fd50b522fdf0d56c17f0b6b7476?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=1200 1200w, https://cdn.builder.io/api/v1/image/assets/TEMP/652f85d1288d122f50fac5b2b59acef0c3862fd50b522fdf0d56c17f0b6b7476?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=1600 1600w, https://cdn.builder.io/api/v1/image/assets/TEMP/652f85d1288d122f50fac5b2b59acef0c3862fd50b522fdf0d56c17f0b6b7476?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=2000 2000w, https://cdn.builder.io/api/v1/image/assets/TEMP/652f85d1288d122f50fac5b2b59acef0c3862fd50b522fdf0d56c17f0b6b7476?apiKey=ff3368bd5fd6477688619c390d91ee7a&"
                                            class="count-img" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="column-1">
                            <div class="content-2">
                                <div class="seminar-container">
                                    <div class="seminar-cards">
                                        <div class="seminar-card">
                                            <div class="seminar-card-1">
                                                <div class="seminar-header">
                                                    <div class="seminar-logo">logo</div>
                                                    <div class="seminar-text">Seminar 1</div>
                                                </div>
                                                <div class="seminar-subtext">
                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                                    sed do eiusmod tempor
                                                </div>
                                                <div class="seminar-date">February 18, 2024</div>
                                                <div class="seminar-time">8:00 AM</div>
                                            </div>
                                        </div>
                                        <div class="seminar-card">
                                            <div class="seminar-card-1 ">
                                                <div class="seminar-header">
                                                    <div class="seminar-logo">logo</div>
                                                    <div class="seminar-text">Seminar 2</div>
                                                </div>
                                                <div class="seminar-subtext">
                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                                    sed do eiusmod tempor
                                                </div>
                                                <div class="seminar-date">February 18, 2024</div>
                                                <div class="seminar-time">8:00 AM</div>
                                            </div>
                                        </div>
                                        <div class="seminar-card">
                                            <div class="seminar-card-1 ">
                                                <div class="seminar-header">
                                                    <div class="seminar-logo">logo</div>
                                                    <div class="seminar-text">Seminar 3</div>
                                                </div>
                                                <div class="seminar-subtext">
                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                                    sed do eiusmod tempor
                                                </div>
                                                <div class="seminar-date">February 18, 2024</div>
                                                <div class="seminar-time">8:00 AM</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <img loading="lazy"
                                    src="https://cdn.builder.io/api/v1/image/assets/TEMP/a75083db1f0d26c24088d5108b6e70715bb52191aefc3bc3db5fc7dbf0ddaf42?apiKey=ff3368bd5fd6477688619c390d91ee7a&"
                                    class="img-2" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="content py-4 mt-4">
                    <div class="container">
                        <div class="row row-cols-4">
                            <div class="col py-3">
                                <div class="cert-card">
                                    <img loading="lazy" src="../../../../public/external/certificate.png"
                                        class="cert-img" />
                                    <div class="org-card">
                                        <div class="org-logo">
                                            <img style="height: 30px;" loading="lazy"
                                                src="../../../../public/logo/supsofttech.png" class="img" />
                                        </div>
                                        <div class="org-name">Organization Name</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col py-3">
                                <div class="cert-card">
                                    <img loading="lazy" src="../../../../public/external/certificate.png"
                                        class="cert-img" />
                                    <div class="org-card">
                                        <div class="org-logo">
                                            <img style="height: 30px;" loading="lazy"
                                                src="../../../../public/logo/supsofttech.png" class="img" />
                                        </div>
                                        <div class="org-name">Organization Name</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col py-3">
                                <div class="cert-card">
                                    <img loading="lazy" src="../../../../public/external/certificate.png"
                                        class="cert-img" />
                                    <div class="org-card">
                                        <div class="org-logo">
                                            <img style="height: 30px;" loading="lazy"
                                                src="../../../../public/logo/supsofttech.png" class="img" />
                                        </div>
                                        <div class="org-name">Organization Name</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col py-3">
                                <div class="cert-card">
                                    <img loading="lazy" src="../../../../public/external/certificate.png"
                                        class="cert-img" />
                                    <div class="org-card">
                                        <div class="org-logo">
                                            <img style="height: 30px;" loading="lazy"
                                                src="../../../../public/logo/supsofttech.png" class="img" />
                                        </div>
                                        <div class="org-name">Organization Name</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col py-3">
                                <div class="cert-card">
                                    <img loading="lazy" src="../../../../public/external/certificate.png"
                                        class="cert-img" />
                                    <div class="org-card">
                                        <div class="org-logo">
                                            <img style="height: 30px;" loading="lazy"
                                                src="../../../../public/logo/supsofttech.png" class="img" />
                                        </div>
                                        <div class="org-name">Organization Name</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col py-3">
                                <div class="cert-card">
                                    <img loading="lazy" src="../../../../public/external/certificate.png"
                                        class="cert-img" />
                                    <div class="org-card">
                                        <div class="org-logo">
                                            <img style="height: 30px;" loading="lazy"
                                                src="../../../../public/logo/supsofttech.png" class="img" />
                                        </div>
                                        <div class="org-name">Organization Name</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <i><font-awesome-icon style="color: white; margin-right: 10px;" class="icon"
                    :icon="['far', 'fa-copyright']" /></i>
            2024 CertiCode. All rights reserved.
        </div>
    </div>
</template>

<style scoped>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

.header {
    background-color: #EEEEEE;
    display: flex;
    align-items: center;
    justify-content: space-between;
    color: var(--Black, #191919);
    height: 85px;
    margin: auto;
    padding: 0px 30px 0px 30px;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
}

@media (max-width: 991px) {
    .header {
        max-width: 100%;
        padding: 0px 5px 0px 5px;
    }
}

.logo-text {
    font-family: Inter, sans-serif;
    flex-grow: 1;
    font-size: 25px;
    color: var(--Black, #191919);
    font-weight: 600;
    margin-left: 5px;
}

@media (max-width: 991px) {
    .logo-text {
        font-size: 15px;
    }
}

@media (max-width: 991px) {
    .img {
        height: 30px;
        width: 30px;
    }
}

.search-input {
    width: 500px;
}

@media (max-width: 991px) {
    .search-input {
        width: 150px;
    }
}

.logout-button {
    border-radius: 8px;
    border: 2px solid #e2e0e0;
    padding: 8px 10px;
    cursor: pointer;
}

.logout-button:hover {
    border: 2px solid #929699;
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
    align-self: start;
    display: flex;
    gap: 9px;
}

.ellipsis {
    background-color: rgba(238, 238, 238, 0.5);
    border-radius: 50%;
    width: 12px;
    height: 12px;
}

.container1 {
    margin-top: 87px;
    width: 100%;
}

@media (max-width: 991px) {
    .container1 {
        max-width: 100%;
        margin-top: 40px;
    }
}

.container2 {
    gap: 20px;
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
    width: 70%;
    margin-left: 20px;
}

@media (max-width: 991px) {
    .column-1 {
        width: 100%;
    }
}

.content-2 {
    display: flex;
    flex-grow: 1;
    flex-direction: column;
}

@media (max-width: 991px) {
    .content-2 {
        max-width: 100%;
        margin-top: 40px;
    }
}

.seminar-container {
    padding: 0;
    margin-left: 20px;
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
    flex-direction: column;
    font-weight: 400;
    margin: 0 auto;
    padding: 29px 29px 29px 14px;
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
</style>