import types from "../types";

export function langChange(toggle) {
  return {
    type: types.locale,
    payload: toggle
  }
}