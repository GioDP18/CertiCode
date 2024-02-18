<template>
    <div class="main-form-container">
        <form class="form-container">
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
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</template>

<script setup>

</script>

<style scoped>
.form-container {
    width: 400px;
}
</style>
