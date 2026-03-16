import { useMutation } from "@tanstack/react-query";
import { disablePromotion } from "../../../services/apiPromotion";
import { useDispatch } from "react-redux";
import { notify } from "../../../redux/notificationSlice";
import {
  ERROR_NOTIFICATION,
  SUCCESS_NOTIFICATION,
} from "../../../utils/constant";

export const useDisablePromotion = () => {
  const dispatch = useDispatch();

  return useMutation({
    mutationFn: disablePromotion,
    onSuccess: (data, variables) => {
      dispatch(
        notify({
          type: SUCCESS_NOTIFICATION,
          message: "Promotion disabled successfully",
        })
      );
    },
    onError: (error) => {
      dispatch(
        notify({
          type: ERROR_NOTIFICATION,
          message:
            error.response?.data?.message || "Failed to disable promotion",
        })
      );
    },
  });
};
