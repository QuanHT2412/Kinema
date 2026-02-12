import { useMutation } from "@tanstack/react-query";
import { unlockEmployee } from "../../../services/apiEmployee";

export function useUnlockEmployee() {

  return useMutation({
    mutationFn: unlockEmployee,
    onSuccess: () => {
    },
  });
}
