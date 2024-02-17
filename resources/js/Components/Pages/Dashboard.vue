<script setup>
import DataTable from 'datatables.net-vue3';
import DataTablesCore from 'datatables.net-bs5';

DataTable.use(DataTablesCore);

</script>

<template>
    <div class="container">
        <div class="main-content">
            <div class="content-1">
                <div class="column">
                    <div class="card1">
                        <img loading="lazy"
                            srcSet="https://cdn.builder.io/api/v1/image/assets/TEMP/02bdb4e946b4c0c7e69bfd5a4c1b3d3dc4b8593c3bd02e7a5bf30bb2085a71ee?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=100 100w, https://cdn.builder.io/api/v1/image/assets/TEMP/02bdb4e946b4c0c7e69bfd5a4c1b3d3dc4b8593c3bd02e7a5bf30bb2085a71ee?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=200 200w, https://cdn.builder.io/api/v1/image/assets/TEMP/02bdb4e946b4c0c7e69bfd5a4c1b3d3dc4b8593c3bd02e7a5bf30bb2085a71ee?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=400 400w, https://cdn.builder.io/api/v1/image/assets/TEMP/02bdb4e946b4c0c7e69bfd5a4c1b3d3dc4b8593c3bd02e7a5bf30bb2085a71ee?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=800 800w, https://cdn.builder.io/api/v1/image/assets/TEMP/02bdb4e946b4c0c7e69bfd5a4c1b3d3dc4b8593c3bd02e7a5bf30bb2085a71ee?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=1200 1200w, https://cdn.builder.io/api/v1/image/assets/TEMP/02bdb4e946b4c0c7e69bfd5a4c1b3d3dc4b8593c3bd02e7a5bf30bb2085a71ee?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=1600 1600w, https://cdn.builder.io/api/v1/image/assets/TEMP/02bdb4e946b4c0c7e69bfd5a4c1b3d3dc4b8593c3bd02e7a5bf30bb2085a71ee?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=2000 2000w, https://cdn.builder.io/api/v1/image/assets/TEMP/02bdb4e946b4c0c7e69bfd5a4c1b3d3dc4b8593c3bd02e7a5bf30bb2085a71ee?apiKey=ff3368bd5fd6477688619c390d91ee7a&"
                            class="img" />
                        <div class="card-content">
                            <div class="card-text">100</div>
                            <div class="card-subtext">Total Certificates</div>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card1">
                        <img loading="lazy"
                            srcSet="https://cdn.builder.io/api/v1/image/assets/TEMP/a2469712bd306cdeef86c5e610f61bfb5eb8e045be1adcadd256ef5b54f3921f?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=100 100w, https://cdn.builder.io/api/v1/image/assets/TEMP/a2469712bd306cdeef86c5e610f61bfb5eb8e045be1adcadd256ef5b54f3921f?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=200 200w, https://cdn.builder.io/api/v1/image/assets/TEMP/a2469712bd306cdeef86c5e610f61bfb5eb8e045be1adcadd256ef5b54f3921f?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=400 400w, https://cdn.builder.io/api/v1/image/assets/TEMP/a2469712bd306cdeef86c5e610f61bfb5eb8e045be1adcadd256ef5b54f3921f?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=800 800w, https://cdn.builder.io/api/v1/image/assets/TEMP/a2469712bd306cdeef86c5e610f61bfb5eb8e045be1adcadd256ef5b54f3921f?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=1200 1200w, https://cdn.builder.io/api/v1/image/assets/TEMP/a2469712bd306cdeef86c5e610f61bfb5eb8e045be1adcadd256ef5b54f3921f?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=1600 1600w, https://cdn.builder.io/api/v1/image/assets/TEMP/a2469712bd306cdeef86c5e610f61bfb5eb8e045be1adcadd256ef5b54f3921f?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=2000 2000w, https://cdn.builder.io/api/v1/image/assets/TEMP/a2469712bd306cdeef86c5e610f61bfb5eb8e045be1adcadd256ef5b54f3921f?apiKey=ff3368bd5fd6477688619c390d91ee7a&"
                            class="img" />
                        <div class="card-content">
                            <div class="card-text">100</div>
                            <div class="card-subtext">Total Seminars</div>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card1">
                        <img loading="lazy"
                            srcSet="https://cdn.builder.io/api/v1/image/assets/TEMP/b4bd21d304c15182b5e61fb2657003a3621df867a59334d3709f1bfa25274c79?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=100 100w, https://cdn.builder.io/api/v1/image/assets/TEMP/b4bd21d304c15182b5e61fb2657003a3621df867a59334d3709f1bfa25274c79?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=200 200w, https://cdn.builder.io/api/v1/image/assets/TEMP/b4bd21d304c15182b5e61fb2657003a3621df867a59334d3709f1bfa25274c79?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=400 400w, https://cdn.builder.io/api/v1/image/assets/TEMP/b4bd21d304c15182b5e61fb2657003a3621df867a59334d3709f1bfa25274c79?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=800 800w, https://cdn.builder.io/api/v1/image/assets/TEMP/b4bd21d304c15182b5e61fb2657003a3621df867a59334d3709f1bfa25274c79?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=1200 1200w, https://cdn.builder.io/api/v1/image/assets/TEMP/b4bd21d304c15182b5e61fb2657003a3621df867a59334d3709f1bfa25274c79?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=1600 1600w, https://cdn.builder.io/api/v1/image/assets/TEMP/b4bd21d304c15182b5e61fb2657003a3621df867a59334d3709f1bfa25274c79?apiKey=ff3368bd5fd6477688619c390d91ee7a&width=2000 2000w, https://cdn.builder.io/api/v1/image/assets/TEMP/b4bd21d304c15182b5e61fb2657003a3621df867a59334d3709f1bfa25274c79?apiKey=ff3368bd5fd6477688619c390d91ee7a&"
                            class="img" />
                        <div class="card-content">
                            <div class="card-text">100</div>
                            <div class="card-subtext">Total Participants</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main-content">
            <div sty class="content-1">
                <div class="column-1">
                    <div class="table-card">
                        <div class="content-text">Participants</div>
                        <DataTable id="dailyTimeLog" class="table table-striped table-hover" width="100%;">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Gender</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Gio O. Dela Pena</td>
                                    <td>Male</td>
                                    <td>
                                        <button class="card14">
                                            <span class="send-text">Send Certificate</span>
                                            <i class="img-8"><font-awesome-icon style="color: #7AA5D2; height: 16px;"
                                                    class="icon" :icon="['fas', 'fa-paper-plane']" /></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Jhon Vincent Ramada</td>
                                    <td>Male</td>
                                    <td>
                                        <button class="card14">
                                            <span class="send-text">Send Certificate</span>
                                            <i class="img-8"><font-awesome-icon style="color: #7AA5D2; height: 16px;"
                                                    class="icon" :icon="['fas', 'fa-paper-plane']" /></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Christian Kit V. Rotairo</td>
                                    <td>Male</td>
                                    <td>
                                        <button class="card14">
                                            <span class="send-text">Send Certificate</span>
                                            <i class="img-8"><font-awesome-icon style="color: #7AA5D2; height: 16px;"
                                                    class="icon" :icon="['fas', 'fa-paper-plane']" /></i>
                                        </button>
                                    </td>
                                </tr>
                            </tbody>
                        </DataTable>
                    </div>
                </div>
                <div class="column-2">
                    <div class="card-text0"></div>
                </div>
            </div>
        </div>
    </div>
</template>

<style>
.container {
    display: flex;
    flex-direction: column;
    margin-top: 15px;
}

.main-content {
    padding: 0 20px;
    width: 100%;
}

@media (max-width: 991px) {
    .main-content {
        max-width: 100%;
        padding: 0 5px;
    }
}

.column {
    display: flex;
    flex-direction: column;
    width: 100%;
}

@media (max-width: 991px) {
    .column {
        width: 100%;
    }
}

.card1 {
    border-radius: 10px;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    background-color: #fff;
    display: flex;
    justify-content: space-between;
    gap: 10px;
    width: 100%;
    padding: 15px 35px;
}

@media (max-width: 991px) {
    .card1 {
        margin-top: 40px;
        padding: 2px 20px;
    }
}

.img {
    aspect-ratio: 1;
    object-fit: auto;
    object-position: center;
    width: 42px;
    margin: auto 0;
}

.card-content {
    display: flex;
    flex-grow: 1;
    flex-basis: 0%;
    flex-direction: column;
}

.card-text {
    color: var(--Black, #191919);
    font: 700 28px Inter, sans-serif;
}

.card-subtext {
    color: rgba(60, 54, 51, 0.7);
    margin-top: 23px;
    font: 500 20px Inter, sans-serif;
}

.content-1 {
    margin-top: 20px;
    width: 100%;
    gap: 30px;
    display: flex;
}

@media (max-width: 991px) {
    .content-1 {
        max-width: 100%;
        margin-top: 40px;
        flex-direction: column;
        align-items: stretch;
        gap: 5px;
    }
}

.column-1 {
    display: flex;
    flex-direction: column;
    line-height: normal;
    width: 71%;
    margin-left: 0px;
    margin-top: 30px;
}

@media (max-width: 991px) {
    .column-1 {
        width: 100%;
    }
}

.table-card {
    display: flex;
    margin-top: 5px;
    flex-direction: column;
    font-size: 14px;
    color: #000;
    font-weight: 500;
    white-space: nowrap;
}

@media (max-width: 991px) {
    .table-card {
        max-width: 100%;
        margin-top: 7px;
        white-space: initial;
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

.card14 {
    justify-content: space-between;
    border-radius: 20px;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    background-color: #fff;
    display: flex;
    gap: 5px;
    align-items: center;
    border: none;
}

@media (max-width: 991px) {
    .card14 {
        white-space: initial;
    }
}

.send-text {
    font-family: Montserrat, sans-serif;
    align-self: start;
    margin-left: 6px;
    margin-top: 6px;
    margin-bottom: 6px;
}

@media (max-width: 991px) {
    .send-text {
        white-space: initial;
    }
}

.img-8 {
    aspect-ratio: 1.1;
    object-fit: auto;
    object-position: center;
    width: 22px;
    margin-right: 6px;
}

.column-2 {
    display: flex;
    flex-direction: column;
    line-height: normal;
    margin-top: 30px;
}

@media (max-width: 991px) {
    .column-2 {
        width: 100%;
    }
}

.card-text0 {
    border-radius: 10px;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    background-color: #47555e;
    width: 315px;
    max-width: 100%;
    height: 340px;
    margin: 0 auto;
}
</style>