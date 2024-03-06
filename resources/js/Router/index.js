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
import AdminSeminarInfo from "../Components/Pages/Admin/SeminarInfo.vue";
// User View
import UserView from "../Components/Views/UserView.vue";
import UserDashboard from "../Components/Pages/User/UserDashboard.vue";
import SeminarInfo from "../Components/Pages/User/SeminarInfo.vue";
import SeminarPage from "../Components/Pages/SeminarPage.vue";

const routes = [
    {
        path: "/",
        component: LandingPage,
        name: "",
    },
    {
        path: "/login",
        component: LoginView,
        name: "login",
    },
    {
        path: "/register",
        component: RegisterView,
        name: "register",
    },
    {
        path: "/admin",
        component: AdminView,
        children: [
            {
                path: "sendCertificates",
                component: SendCertificates,
                name: "admin-sendCertificates",
            },
            {
                path: "dashboard",
                component: Dashboard,
                name: "admin-dashboard",
            },
            {
                path: "participants",
                component: Participants,
                name: "admin-participants",
            },
            {
                path: "seminars",
                component: Seminars,
                name: "admin-seminars",
            },
            {
                path: "seminarInfo/:id",
                component: AdminSeminarInfo,
                name: "admin-seminarInfo/:id",
            },
            {
                path: "myAccount",
                component: MyAccount,
                name: "admin-myAccount",
            },
            {
                path: "createSeminar",
                component: CreateCertificate,
                name: "admin-createSeminar",
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
            {
                path: "seminarPage",
                component: SeminarPage,
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
