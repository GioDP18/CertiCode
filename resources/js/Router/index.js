import { createRouter, createWebHistory } from "vue-router";
import notFound from '../Components/404.vue';
import LoginView from '../Components/Views/LoginView.vue';
import RegisterView from '../Components/Views/RegistrationView.vue';
import Dashboard from '../Components/Pages/Dashboard.vue';

const routes = [
    {
        path : '/',
        component : LoginView,
    },
    {
        path : '/register',
        component : RegisterView,
    },
    {
        path : '/dashboard',
        component : Dashboard,
    },
    {
        path : '/:path(.*)*',
        component : notFound
    }
]

const router = createRouter({
    history: createWebHistory(),
    routes
});

export default router
