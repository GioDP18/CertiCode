<script setup>
import DataTable from 'datatables.net-vue3';
import DataTablesCore from 'datatables.net-bs5';

DataTable.use(DataTablesCore);

</script>

<template>
    <div class="main-panel">
        <div class="content">
            <div class="page-inner mt--5">
                <div class="card bg-light">
                    <div class="card-body">
                        <div class="table-responsive">
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
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>
                                            <button class="btn">
                                                <span class="link-text" style="color: black; font-weight: 700;">Send
                                                    Certificate</span>
                                                <i
                                                    style="width: 30px; height: 30px; margin-left: 6px; background-color: #41644A; display: flex; align-items: center; justify-content: center; border-radius: 50%; color: white;">
                                                    <font-awesome-icon :icon="['fas', 'paper-plane']" /></i>
                                            </button>
                                        </td>
                                    </tr>
                                </tbody>
                            </DataTable>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container-fluid">
            </div>
        </footer>
    </div>
</template>

<style scoped>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    background-color: transparent;
}

.main-panel {
    margin: auto;
    background-color: transparent;
}

.content {
    margin-top: 10%;
    background-color: transparent;
    padding: 20px;
}

.btn {
    display: flex;
    justify-content: center;
    align-items: center;
}

.table-responsive {
    padding: 20px;
}
</style>