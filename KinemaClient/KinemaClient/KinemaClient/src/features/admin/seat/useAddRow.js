import { useMutation } from "@tanstack/react-query";
import { addOneRow } from "../../../services/apiSeat";

export const useAddRow = () => {

  const { mutate, isPending, error } = useMutation({
    mutationFn: addOneRow,
    onSuccess: (_, screenId) => {
      // Invalidate and refetch
    },
  });

  return { addRow: mutate, isPending, error };
};
