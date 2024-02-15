import { createRouter, createWebHistory } from "vue-router";
import notFound from "../Components/404.vue";
import LandingPage from "../Components/Views/LandingPage.vue";
import LoginView from "../Components/Views/LoginView.vue";

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
        path: "/:path(.*)*",
        component: notFound,
    },
];

const router = createRouter({
    history: createWebHistory(),
    routes,
});

export default router;
