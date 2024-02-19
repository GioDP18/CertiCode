import { createRouter, createWebHistory } from "vue-router";
import notFound from "../Components/404.vue";
import LandingPage from "../Components/Views/LandingPage.vue";
import LoginView from "../Components/Views/LoginView.vue";
import UserView from "../Components/Views/UserView.vue";
import RegisterView from "../Components/Views/RegistrationView.vue";
import Dashboard from "../Components/Pages/Dashboard.vue";
import Participants from "../Components/Pages/Participants.vue";
import UserDashboard from "../Components/Pages/UserDashboard.vue";
import MyAccount from "../Components/Pages/MyAccount.vue";
import CreateCertificate from "../Components/Pages/CreateCertificate.vue";

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
        path: "/register",
        component: RegisterView,
    },
    {
        path: "/user-dashboard",
        component: UserDashboard,
    },
    {
        path: "/user",
        component: UserView,
        children: [
            {
                path: "dashboard",
                component: Dashboard,
            },
            {
                path: "participants",
                component: Participants,
            },
            {
                path: "myAccount",
                component: MyAccount,
            },
            {
                path: "createCertificate",
                component: CreateCertificate,
            },
        ],
    },
    {
        path: "/:path(.*)*",
        component: notFound,
    },
];

const router = createRouter({
    history: createWebHistory(),
    routes,
});

export default router;
