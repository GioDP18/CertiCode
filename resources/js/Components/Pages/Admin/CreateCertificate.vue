<template>
    <div class="main-content">
        <div class="main-container">
            <div class="rectangle">
            </div>
            <form class="form-container">
                <h4>Create New Seminar</h4>
                <div class="parent-container">
                    <div class="container1">
                        <div class="img-container">
                            <img src="../../../../../public/external/Logo527-5lue.png" alt="">
                        </div>
                        <div class="mb-3">
                            <label for="topic" class="form-label">Topic</label>
                            <input type="text" class="form-control" id="exampleInputPassword1">
                        </div>
                        <div class="mb-3">
                            <label for="date" class="form-label">Date</label>
                            <input type="date" class="form-control" id="exampleInputPassword1">
                        </div>
                        <div class="mb-3">
                            <label for="speaker" class="form-label">Speaker</label>
                            <input type="text" class="form-control" id="exampleInputPassword1">
                        </div>
                    </div>
                    <div class="container2">
                        <div class="mb-3">
                            <label for="certificateLogo" class="form-label">Certificate Logo</label>
                            <input type="file" class="form-control" id="" aria-describedby="emailHelp">
                        </div>
                        <div class="mb-3">
                            <label for="issuer" class="form-label">Issuer</label>
                            <input type="text" class="form-control" id="">
                        </div>
                        <div class="mb-3">
                            <label for="topic" class="form-label">Description</label>
                            <textarea type="text" class="form-control" id=""></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="seminar" class="form-label">About this Seminar</label>
                            <textarea class="form-control" id="" rows="1"></textarea>
                        </div>
                    </div>
                </div>
                <div class="submit-button">
                    <button type="submit" class="btn btn-primary button type1"><span class="btn-txt">ADD</span></button>
                </div>
            </form>
            <div class="preview-container">
                <div class="rectangle2">
                    <h4>Preview</h4>
                </div>
                <div class="img-certificate">
                    <img src="../../../../../public/external/certificate.png" alt="">
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>

</script>

<style scoped>
.main-content {
    height: 85vh;
    width: 100%;
    margin: auto;
}

.main-container {
    box-shadow: rgba(0, 0, 0, 0.4) 0px 2px 4px, rgba(0, 0, 0, 0.3) 0px 7px 13px -3px, rgba(0, 0, 0, 0.2) 0px -3px 0px inset;
    width: 100%;
    height: 180vh;
    border-radius: 16px;
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
    height: 70vh;
    margin: auto;
}

.form-container h4 {
    text-align: center;
    margin-top: -5px;
    margin-bottom: 40px;
}

.parent-container {
    width: 90%;
    height: 65vh;
    margin: auto;
    display: flex;
    flex-direction: row;
    gap: 50px;
    margin-bottom: 30px;
    margin-top: 10px;
}

.container1,
.container2 {
    width: 50%;
    display: block;
}

.container2 textarea {
    height: 11vh;
}

.img-container {
    width: 100%;
    padding-bottom: 10px;
    display: flex;
    justify-content: center;
}

.form-container img {
    width: 25%;
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
    margin-bottom: 30px;
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
    height: 80vh;
    margin-top: 13%;
    border-radius: 16px;
}

.preview-container .rectangle2 {
    height: 10vh;
    width: 100%;
    background-color: #303841;
    display: flex;
    justify-content: center;
    align-items: center;
    color: #ffffff;
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
        height: 100%;
    }

    .form-container h4 {
        margin-top: -20px;
    }

    .parent-container {
        flex-direction: column;
    }

    .img-container {
        width: 50%;
        margin: auto;
        margin-top: -20px;
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
        margin-top: 90%;
    }

    .preview-container {
        height: 40vh;
        margin-top: 115%;
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
