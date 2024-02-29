<script setup>
import axios from 'axios';
import { ref } from 'vue';
import { inject } from 'vue';
import { useRouter } from 'vue-router';

// Inject swal and BASE_URL
const swal = inject('$swal');
const router = useRouter();

const topic = ref('');
const date = ref('');
const speaker = ref('');
const about_the_speaker = ref('');
const logo = ref('');
const issuer = ref('');
const description = ref('');
const about_this_seminar = ref('');


const handleAddSeminar = async () => {
    try {
        await axios.post('http://localhost:8000/api/auth/add-new-seminar', {
            topic: topic.value,
            date: date.value,
            speaker: speaker.value,
            about_the_speaker: about_the_speaker.value,
            logo: "https://via.placeholder.com/100x100.png/007766?text=logo+et",
            issuer: issuer.value,
            description: description.value,
            about_this_seminar: about_this_seminar.value,
        })
            .then((response) => {
                if (response.data.success) {
                    swal({
                        title: 'Success',
                        text: response.data.message,
                        icon: 'success',
                    });

                    setTimeout(() => {
                        router.push({ name: 'seminars' });
                    }, 3000)
                }
                else {
                    swal({
                        title: 'Error',
                        text: response.data.message,
                        icon: 'error',
                    });
                }
            })
    }
    catch (error) {
        console.log(error);
    }
}
</script>

<template>
    <div class="main-content">
        <div class="main-container">
            <div class="rectangle">
            </div>
            <form class="form-container" @submit.prevent="handleAddSeminar">
                <h4>Create New Seminar</h4>
                <div class="preview-container">
                    <div class="img-certificate">
                        <img src="../../../../../public/external/certificate.png" alt="">
                    </div>
                </div>
                <div class="img-container">
                    <img src="../../../../../public/external/Logo527-5lue.png" alt="">
                </div>
                <div class="parent-container">
                    <div class="container1">
                        <div class="mb-3">
                            <label for="topic" class="form-label">Topic</label>
                            <input type="text" v-model="topic" class="form-control" id="exampleInputPassword1">
                        </div>
                        <div class="mb-3">
                            <label for="date" class="form-label">Date</label>
                            <input type="date" v-model="date" class="form-control" id="exampleInputPassword1">
                        </div>
                        <div class="mb-3">
                            <label for="speaker" class="form-label">Speaker</label>
                            <input type="text" v-model="speaker" class="form-control" id="exampleInputPassword1">
                        </div>
                        <div class="mb-3 about-speak">
                            <label for="seminar" class="form-label">About the Speaker</label>
                            <textarea class="form-control" v-model="about_the_speaker" id="" row="1"></textarea>
                        </div>
                    </div>
                    <div class="container2">
                        <div class="mb-3">
                            <label for="certificateLogo" class="form-label">Certificate Logo</label>
                            <input type="file" @change="handleLogoChange" class="form-control" id=""
                                aria-describedby="emailHelp">
                        </div>
                        <div class="mb-3">
                            <label for="issuer" class="form-label">Issuer</label>
                            <input type="text" v-model="issuer" class="form-control" id="">
                        </div>
                        <div class="mb-3">
                            <label for="topic" class="form-label">Description</label>
                            <textarea type="text" v-model="description" class="form-control" id=""></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="seminar" class="form-label">About this Seminar</label>
                            <textarea class="form-control" v-model="about_this_seminar" id="" rows="1"></textarea>
                        </div>
                    </div>
                </div>
                <div class="submit-button">
                    <button type="submit" class="btn btn-primary button type1"><span class="btn-txt">ADD</span></button>
                </div>
            </form>
        </div>
    </div>
</template>

<style scoped>
.main-content {
    height: 85vh;
    width: 100%;
    bottom: 0;
}

.main-container {
    box-shadow: rgba(0, 0, 0, 0.4) 0px 2px 4px, rgba(0, 0, 0, 0.3) 0px 7px 13px -3px, rgba(0, 0, 0, 0.2) 0px -3px 0px inset;
    width: 100%;
    height: 215vh;
    border-radius: 16px;
    padding-bottom: 0;
}

.main-container .rectangle {
    height: 5vh;
    width: 100%;
    border-top-right-radius: 13px;
    border-top-left-radius: 13px;
    background-color: #303841;
}

.form-container {
    padding-top: 35px;
    width: 100%;
    margin: auto;
}

.form-container h4 {
    text-align: center;
    margin-top: -5px;
    margin-bottom: 40px;
}

.parent-container {
    width: 90%;
    height: 90vh;
    margin: auto;
    display: flex;
    flex-direction: row;
    gap: 50px;
}

.container1,
.container2 {
    width: 50%;
    display: block;
}

.about-speak textarea {
    height: 100px;
}

.container2 textarea {
    height: 11vh;
}

.img-container {
    width: 100%;
    display: flex;
    justify-content: center;
    margin-bottom: 50px;
    margin-top: -50px;
}

.img-container img {
    width: 10%;
    border: 3px solid #303841;
    border-radius: 50%;
}

.form-container input,
.form-container textarea {
    border: 1px solid #303841;
}

.submit-button {
    width: 100%;
    display: flex;
    justify-content: center;
}

.button {
    height: 40px;
    width: 150px;
    position: relative;
    background-color: transparent;
    cursor: pointer;
    border: 2px solid #303841;
    overflow: hidden;
    border-radius: 8px;
    color: #303841;
    transition: all 0.5s ease-in-out;
    margin-top: -130px;
}

.btn-txt {
    z-index: 1;
    font-weight: 800;
    letter-spacing: 4px;
}

.type1::after {
    content: "";
    position: absolute;
    left: 0;
    top: 0;
    transition: all 0.5s ease-in-out;
    background-color: #303841;
    border-radius: 8px;
    visibility: hidden;
    height: 10px;
    width: 10px;
    z-index: -1;
}

.button:hover {
    color: #fff;
    border: none;
}

.type1:hover::after {
    visibility: visible;
    transform: scale(100) translateX(2px);
}

.preview-container {
    width: 100%;
    height: 50vh;
    border-radius: 16px;
    margin-bottom: 25%;
}

.preview-container h4 {
    margin-top: 37px;
}

.img-certificate {
    width: 100%;
    padding-bottom: 10px;
    display: flex;
    justify-content: center;

}

.img-certificate img {
    width: 74%;
    height: 74vh;
}

@media screen and (max-width: 360px) {

    .main-content {
        height: 180vh;
    }

    .main-container {
        width: 100%;
        height: 113%;
    }

    .form-container h4 {
        margin-top: -20px;
    }

    .parent-container {
        flex-direction: column;
    }

    .preview-container h4 {
        margin-top: 10px;
    }

    .img-container {
        width: 100%;
        margin: auto;
        margin-top: -30px;
    }

    .img-container img {
        width: 20%;
    }

    .container1 {
        margin-bottom: -55px;
    }

    .container2 textarea {
        height: 65px;
    }

    .container1,
    .container2 {
        width: 100%;
    }

    .submit-button {
        margin-top: 110%;
    }

    .preview-container {
        height: 10vh;
        margin-top: -5%;
        margin-bottom: 60%;
    }

    .img-certificate {
        width: 100%;
        height: 75%;
    }

    .img-certificate img {
        width: 95%;
        height: 32vh;
    }
}
</style>
