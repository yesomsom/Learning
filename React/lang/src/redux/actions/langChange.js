import types from '../types';

export function langChange(change) {
  return {
    type: types.langChange,
    payload: change
  };
}