<template>
    <div class="loading-container">
        <div class="spinner-border text-dark" role="status">
            <span class="visually-hidden">Loading...</span>
        </div>
    </div>
    <router-view></router-view>
</template>
  
<style scoped>
.loading-container {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: rgba(255, 255, 255, 0.7);
    z-index: 999;
    width: 100%;
}
</style>
  