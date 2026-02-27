import { useMutation } from "@tanstack/react-query";
import { removeOneColumn } from "../../../services/apiSeat";

export const useRemoveColumn = () => {

  const { mutate, isPending, error } = useMutation({
    mutationFn: removeOneColumn,
    onSuccess: (_, screenId) => {
      // Invalidate and refetch
    },
  });

  return { removeColumn: mutate, isPending, error };
};
