import { useMutation } from "@tanstack/react-query";
import { addOneColumn } from "../../../services/apiSeat";

export const useAddColumn = () => {

  const { mutate, isPending, error } = useMutation({
    mutationFn: addOneColumn,
    onSuccess: (_, screenId) => {
      // Invalidate and refetch
    },
  });

  return { addColumn: mutate, isPending, error };
};
