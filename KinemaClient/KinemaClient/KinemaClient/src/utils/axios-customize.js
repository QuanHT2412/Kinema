import axios from "axios";

const baseURL = import.meta.env.VITE_BACKEND_URL;

const customAxios = axios.create({
  baseURL: baseURL,
  withCredentials: true,
});

// put access token to request header
customAxios.defaults.headers.common[
  "Authorization"
] = `Bearer ${localStorage.getItem("accessToken")}`;

// Add a response interceptor
customAxios.interceptors.response.use(
  (response) => {
    // If the response is successful, return it
    return response;
  },
  (error) => {
    // If the response is an error, check if it's a 401 Unauthorized error
    if (error.response && error.response.status === 401) {
      // Handle unauthorized access
      console.error("Unauthorized access - authentication required");
      window.location.href = "/login";
    }
    return Promise.reject(error);
  }
);

export default customAxios;
