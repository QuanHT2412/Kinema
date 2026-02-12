import {
  createBrowserRouter,
  Navigate,
  RouterProvider,
} from "react-router-dom";
import { lazy, Suspense, useEffect, useRef } from "react";
import MainLayout from "./layouts/main/MainLayout";
import PageNotFound from "./pages/PageNotFound";
import { SpinnerLarge } from "./components/Spinner";
import { notification } from "antd";
import { useDispatch, useSelector } from "react-redux";
import { clearNotification } from "./redux/notificationSlice";
import FetchUserProfile from "./features/auth/FetchUserProfile";

// Lazy load components to optimize performance
const Login = lazy(() => import("./pages/Login"));
const Register = lazy(() => import("./pages/Register"));
const ControlPanelLayout = lazy(() =>
  import("./layouts/control-panel/ControlPanelLayout")
);
const ProvinceLayout = lazy(() =>
  import("./features/admin/province/ProvinceLayout")
);
const TheaterLayout = lazy(() =>
  import("./features/admin/theater/TheaterLayout")
);
const ManagerLayout = lazy(() =>
  import("./features/admin/manager/ManagerLayout")
);
const EmployeeLayout = lazy(() =>
  import("./features/admin/Employee/EmployeeLayout")
);
const ConfirmEmail = lazy(() => import("./pages/ConfirmEmail"));
const ForgotPassword = lazy(() => import("./pages/ForgotPassword"));
const ResetPassword = lazy(() => import("./pages/ResetPassword"));

const router = createBrowserRouter([
  {
    path: "/",
    element: <MainLayout />,
    errorElement: <PageNotFound />,
    children: [
      {
        index: true,
        element: <Navigate to="/home" replace />,
      },
      {
        path: "login",
        element: (
          <Suspense fallback={<SpinnerLarge />}>
            <Login />
          </Suspense>
        ),
      },
      {
        path: "register",
        element: (
          <Suspense fallback={<SpinnerLarge />}>
            <Register />
          </Suspense>
        ),
      },
      {
        path: "forgot-password",
        element: (
          <Suspense fallback={<SpinnerLarge />}>
            <ForgotPassword />
          </Suspense>
        ),
      },
      {
        path: "reset-password",
        element: (
          <Suspense fallback={<SpinnerLarge />}>
            <ResetPassword />
          </Suspense>
        ),
      },
      {
        path: "confirm-email",
        element: (
          <Suspense fallback={<SpinnerLarge />}>
            <ConfirmEmail />
          </Suspense>
        ),
      },
    ],
  },
  {
    path: "/manage",
    element: (
      <Suspense fallback={<SpinnerLarge />}>
        <ControlPanelLayout />
      </Suspense>
    ),
    errorElement: <PageNotFound />,
    children: [
      {
        path: "managers",
        element: (
          <Suspense fallback={<SpinnerLarge />}>
            <ManagerLayout />
          </Suspense>
        ),
      },
      {
        path: "employees",
        element: (
          <Suspense fallback={<SpinnerLarge />}>
            <EmployeeLayout />
          </Suspense>
        ),
      },
      {
        path: "provinces",
        element: (
          <Suspense fallback={<SpinnerLarge />}>
            <ProvinceLayout />
          </Suspense>
        ),
      },
      {
        path: "theaters",
        element: (
          <Suspense fallback={<SpinnerLarge />}>
            <TheaterLayout />
          </Suspense>
        ),
      },
    ],
  },
]);

function App() {
  const [api, notificationContextHolder] = notification.useNotification();
  const notificationData = useSelector((state) => state.notification);
  const dispatch = useDispatch();

  const lastNotificationId = useRef(null);

  const { type, message, description, id } = notificationData;

  // Handle notifications
  useEffect(() => {
    if (type && message && id != lastNotificationId.current) {
      lastNotificationId.current = id;
      api[type]({
        message: message,
        description: description,
      });

      // Clear notification after displaying
      dispatch(clearNotification());
    }
  }, [type, message, description, id, api, dispatch]);

  return (
    <>
      {notificationContextHolder}
      {/* Render the router */}
      <FetchUserProfile />
      <RouterProvider router={router} />
    </>
  );
}

export default App;
