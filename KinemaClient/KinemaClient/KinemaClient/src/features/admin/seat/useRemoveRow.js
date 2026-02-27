import { useMutation } from "@tanstack/react-query";
import { removeOneRow } from "../../../services/apiSeat";

export const useRemoveRow = () => {

  const { mutate, isPending, error } = useMutation({
    mutationFn: removeOneRow,
    onSuccess: (_, screenId) => {
      // Invalidate and refetch
    },
  });

  return { removeRow: mutate, isPending, error };
};
