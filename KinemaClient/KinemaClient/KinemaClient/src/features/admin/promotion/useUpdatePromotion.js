import { useMutation } from "@tanstack/react-query";
import { updatePromotion } from "../../../services/apiPromotion";
import { useDispatch } from "react-redux";
import { notify } from "../../../redux/notificationSlice";
import {
  ERROR_NOTIFICATION,
  SUCCESS_NOTIFICATION,
} from "../../../utils/constant";

export const useUpdatePromotion = () => {
  const dispatch = useDispatch();

  return useMutation({
    mutationFn: updatePromotion,
    onSuccess: (data, variables) => {
      dispatch(
        notify({
          type: SUCCESS_NOTIFICATION,
          message: "Promotion updated successfully",
        })
      );
    },
    onError: (error) => {
      dispatch(
        notify({
          type: ERROR_NOTIFICATION,
          message:
            error.response?.data?.message || "Failed to update promotion",
        })
      );
    },
  });
};
