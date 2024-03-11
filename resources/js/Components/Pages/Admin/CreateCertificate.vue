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
const speaker_image = ref(null);
const about_the_speaker = ref('');
const certificate_logo = ref(null);
const issuer = ref('');
const description = ref('');
const about_this_seminar = ref('');
const selectedImage = ref('');
const isDropdownOpen = ref(false);
const selectedDropdown = ref('Default Certificate');

const openDropdown = () => {
    isDropdownOpen.value = !isDropdownOpen.value;
};

const selectOption = (option) => {
    selectedDropdown.value = option === 'default' ? 'Default Certificate' : option === 'upload' ? 'Upload Certificate' : '';
    isDropdownOpen.value = false; // Close the dropdown menu
};

const openFilePicker = () => {
    const fileInput = $refs.fileInput;
    fileInput.click();
}

const handleDrop = (event) => {
    event.preventDefault();
    const file = event.dataTransfer.files[0];
    handleImage(file);
}

const handleCertificateUpload = (event) => {
    const file = event.target.files[0];
    handleImage(file);
}

const handleImage = (file) => {
    const reader = new FileReader();
    reader.onload = (e) => {
        selectedImage.value = e.target.result;
    };
    reader.readAsDataURL(file);
}

const handleChangeSpeakerImage = (event) => {
    const file = event.target.files[0];
    speaker_image.value = file;
    console.log(file.name)
}

const handleChangeCertificateLogo = (event) => {
    const file = event.target.files[0];
    certificate_logo.value = file;
    console.log(file.name)
}


const handleAddSeminar = async () => {
    try {
        await axios.post('http://localhost:8000/api/auth/add-new-seminar', {
            topic: topic.value,
            date: date.value,
            speaker: speaker.value,
            speaker_image: speaker_image.value,
            about_the_speaker: about_the_speaker.value,
            certificate_logo: certificate_logo.value,
            issuer: issuer.value,
            description: description.value,
            about_this_seminar: about_this_seminar.value,
        }, {
            headers: {
                'Content-Type': 'multipart/form-data'
            }
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
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" @click="openDropdown">
                        {{ selectedDropdown }}
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton"
                        :style="{ display: isDropdownOpen ? 'block' : 'none' }">
                        <a class="dropdown-item" href="#" @click="selectOption('default')">Default Certificate</a>
                        <a class="dropdown-item" href="#" @click="selectOption('upload')">Upload Certificate</a>
                    </div>
                </div>
                <div class="preview-container" v-if="selectedDropdown === 'Default Certificate'">
                    <div class="img-certificate">
                        <img src="../../../../../public/external/certificate.png" alt="">
                    </div>
                </div>
                <div class="preview-container2" v-if="selectedDropdown === 'Upload Certificate'">
                    <div class="img-certificate2">
                        <img :src="selectedImage" alt="">
                    </div>
                </div>
                <div class="file-input-container" v-if="selectedDropdown === 'Upload Certificate'">
                    <label for="certificateFile" class="drag-drop-area" @dragover.prevent @drop="handleDrop"
                        @click="openFilePicker">
                        <i><font-awesome-icon :icon="['fas', 'file']" /></i>
                        Drag & Drop or Click to Upload Certificate
                        <input type="file" id="certificateFile" accept=".pdf" style="display: none;" ref="fileInput"
                            @change="handleCertificateUpload">
                    </label>
                </div>
                <div class="parent-container" v-if="selectedDropdown === 'Default Certificate'">
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
                            <label for="certificateLogo" class="form-label">Speaker Image</label>
                            <input type="file" @change="handleChangeSpeakerImage" class="form-control" id=""
                                aria-describedby="emailHelp">
                        </div>
                        <div class="mb-3">
                            <label for="certificateLogo" class="form-label">Certificate Logo</label>
                            <input type="file" @change="handleChangeCertificateLogo" class="form-control" id=""
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
    height: 100%;
    width: 100%;
    bottom: 0;
}

.main-container {
    box-shadow: rgba(0, 0, 0, 0.4) 0px 2px 4px, rgba(0, 0, 0, 0.3) 0px 7px 13px -3px, rgba(0, 0, 0, 0.2) 0px -3px 0px inset;
    width: 100%;
    height: 100%;
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
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

.form-container h4 {
    text-align: center;
    margin-top: -5px;
    margin-bottom: 40px;
    font-size: 30px;
    font-family: "Montserrat", sans-serif;
}

.dropdown {
    margin-bottom: 40px;
    width: 100%;
    display: flex;
    justify-content: center;
}

.dropdown button {
    width: 30%;
    letter-spacing: 5px;
}

.dropdown .dropdown-menu {
    width: 30%;
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
    height: 190px;
}

.container2 textarea {
    height: 11vh;
}

.form-container input,
.form-container textarea {
    border: 1px solid #303841;
}

.submit-button {
    width: 100%;
    display: flex;
    justify-content: center;
    padding-bottom: 50px;
}

.button {
    height: 40px;
    width: 330px;
    position: relative;
    background-color: transparent;
    cursor: pointer;
    border: 2px solid #303841;
    overflow: hidden;
    border-radius: 8px;
    color: #303841;
    transition: all 0.1s ease-in-out;
    margin-top: -50px;
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

.preview-container2 {
    width: 100%;
    height: 100%;
    border-radius: 16px;
    margin-bottom: 5%;
}

.file-input-container {
    margin-bottom: 100px;
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
}

.drag-drop-area {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    border: 2px dashed #b6b6b6;
    padding: 20px;
    cursor: pointer;
    width: 70%;
    height: 200px;
    border-radius: 10px;
    background-color: #ebebeb;
}

.drag-drop-area i {
    font-size: 50px;
    color: #b6b6b6;
}

.drag-drop-area:hover {
    background-color: #f0f0f0;
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

.img-certificate2 {
    width: 100%;
    padding-bottom: 10px;
    display: flex;
    justify-content: center;

}

.img-certificate2 img {
    width: 74%;
    height: 78vh;
    border: 3px solid #303841;
    box-shadow: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px, rgba(14, 30, 37, 0.32) 0px 2px 16px 0px;
}

.img-certificate img {
    width: 74%;
    height: 78vh;
    border: 3px solid #303841;
    box-shadow: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px, rgba(14, 30, 37, 0.32) 0px 2px 16px 0px;
}

@media screen and (max-width: 360px) {

    .main-content {
        height: 100%;
    }

    .main-container {
        width: 100%;
        height: 100%;
    }

    .dropdown {
        width: 100%;
    }

    .dropdown button {
        width: 80%;
        letter-spacing: 5px;
    }

    .dropdown .dropdown-menu {
        width: 80%;
    }

    .form-container h4 {
        margin-top: -20px;
        font-size: 25px;
    }

    .parent-container {
        flex-direction: column;
        height: 100%;
        margin-bottom: 80px;
    }

    .preview-container h4 {
        margin-top: 10px;
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

    .preview-container {
        height: 10vh;
        margin-top: -5%;
        margin-bottom: 50%;
    }

    .img-certificate {
        width: 100%;
        height: 75%;
    }

    .img-certificate img {
        width: 95%;
        height: 34vh;
    }

    .preview-container2 {
        width: 100%;
    }

    .img-certificate2 {
        width: 100%;
        height: 75%;
    }

    .img-certificate2 img {
        width: 95%;
        height: 34vh;
    }

    .drag-drop-area {
        width: 90%;
        margin-bottom: -10px;
    }

    .button {
        width: 300px;
    }
}
</style>
