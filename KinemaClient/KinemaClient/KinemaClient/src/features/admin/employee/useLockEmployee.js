import { useMutation } from "@tanstack/react-query";
import { lockEmployee } from "../../../services/apiEmployee";

export function useLockEmployee() {

  return useMutation({
    mutationFn: lockEmployee,
    onSuccess: () => {
    },
  });
}
