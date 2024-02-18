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
                <div class="button">
                    <button type="submit" class="btn btn-primary">Submit</button>
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

.button {
    padding-top: 10px;
    width: 100%;
    display: flex;
    justify-content: center;
}

.button button {
    width: 100%;
    background-color: #303841;
    letter-spacing: 7px;
    font-weight: 600;
    border: 2px solid #303841;
}


.button:hover button {
    background-color: #ffffff;
    color: #303841;
    border: 2px solid #303841;
}

@media screen and (max-width: 360px) {
    .main-container {
        width: 100%;
    }
}
</style>
