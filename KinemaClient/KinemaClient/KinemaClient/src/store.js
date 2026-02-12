import { configureStore } from "@reduxjs/toolkit";
import userReducer from "./redux/userSlice";
import notificationReducer from "./redux/notificationSlice";
import employeeReducer from "./redux/employeeSlice";

const store = configureStore({
  reducer: {
    // Add your reducers here
    user: userReducer,
    notification: notificationReducer,
    employee: employeeReducer,
  },
  middleware: (getDefaultMiddleware) =>
    getDefaultMiddleware({
      serializableCheck: false, // Disable serializable check for non-serializable data
    }),
});
export default store;
