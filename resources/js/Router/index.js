import { createRouter, createWebHistory } from "vue-router";
import notFound from "../Components/404.vue";
import LandingPage from "../Components/Views/LandingPage.vue";
import LoginView from "../Components/Views/LoginView.vue";
import RegisterView from "../Components/Views/RegistrationView.vue";
// Admin View
import AdminView from "../Components/Views/AdminView.vue";
import SendCertificates from "../Components/Pages/Admin/SendCertificates.vue";
import Dashboard from "../Components/Pages/Admin/Dashboard.vue";
import Participants from "../Components/Pages/Admin/Participants.vue";
import Seminars from "../Components/Pages/Admin/SeminarPage.vue";
import MyAccount from "../Components/Pages/Admin/MyAccount.vue";
import CreateCertificate from "../Components/Pages/Admin/CreateCertificate.vue";
// User View
import UserView from "../Components/Views/UserView.vue";
import UserDashboard from "../Components/Pages/User/UserDashboard.vue";
import SeminarInfo from "../Components/Pages/User/SeminarInfo.vue";

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
        path: "/admin",
        component: AdminView,
        children: [
            {
                path: "sendCertificates",
                component: SendCertificates,
            },
            {
                path: "dashboard",
                component: Dashboard,
            },
            {
                path: "participants",
                component: Participants,
            },
            {
                path: "seminars",
                component: Seminars,
            },
            {
                path: "myAccount",
                component: MyAccount,
            },
            {
                path: "createSeminar",
                component: CreateCertificate,
            },
        ],
    },
    {
        path: "/user",
        component: UserView,
        children: [
            {
                path: "dashboard",
                component: UserDashboard,
            },
            {
                path: "seminarInfo",
                component: SeminarInfo,
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
