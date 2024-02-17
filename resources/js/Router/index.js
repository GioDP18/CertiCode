import { createRouter, createWebHistory } from "vue-router";
import notFound from "../Components/404.vue";
import LandingPage from "../Components/Views/LandingPage.vue";
import LoginView from "../Components/Views/LoginView.vue";
import Profile from "../Components/Views/Profile.vue";
import UserView from "../Components/Views/UserView.vue";
import RegisterView from '../Components/Views/RegistrationView.vue';
import Dashboard from '../Components/Pages/Dashboard.vue';
import Participants from '../Components/Pages/Participants.vue';
import UserView from "../Components/Views/UserView.vue";

const routes = [
    {
        path: "/",
        component: LandingPage,
    },
    {
        path: "/login",
        component: LoginView,
    },
    {
        path : '/register',
        component : RegisterView,
    },
    {
        path : '/user',
        component : UserView,
        children: [
            {
                path : 'dashboard',
                component : Dashboard,
            },
            {
                path : 'participants',
                component : Participants,
            },
        ]
    },
    {
        path : '/:path(.*)*',
        component : notFound
    }
]

const router = createRouter({
    history: createWebHistory(),
    routes,
});

export default router;
