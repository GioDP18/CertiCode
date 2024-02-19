<template>
    <div class="main-content">
        <div class="main-container">
            <div class="rectangle">
            </div>
            <form class="form-container">
                <div class="img-container">
                    <img src="../../../../public/external/Logo527-5lue.png" alt="">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Add Logo</label>
                    <input type="file" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Issuer</label>
                    <input type="text" class="form-control" id="exampleInputPassword1">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Description</label>
                    <textarea type="text" class="form-control" id="exampleInputPassword1"></textarea>
                </div>
                <div class="submit-button">
                    <button type="submit" class="btn btn-primary button type1"><span class="btn-txt">SUBMIT</span></button>
                </div>
            </form>
        </div>
    </div>
</template>

<script setup>

</script>

<style scoped>
.main-content {
    height: 85vh;
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
}

.main-container {
    box-shadow: rgba(0, 0, 0, 0.4) 0px 2px 4px, rgba(0, 0, 0, 0.3) 0px 7px 13px -3px, rgba(0, 0, 0, 0.2) 0px -3px 0px inset;
    width: 40%;
    height: 85vh;
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
    width: 80%;
    height: 75vh;
    margin: auto;
}

.img-container {
    width: 100%;
    display: flex;
    justify-content: center;
    padding-bottom: 10px;
}

.form-container img {
    width: 30%;
    border: 3px solid #303841;
    border-radius: 50%;
}

.form-container input,
.form-container textarea {
    border: 1px solid #303841;
}

.submit-button {
    padding-top: 10px;
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

@media screen and (max-width: 360px) {
    .main-container {
        width: 100%;
    }
}
</style>
