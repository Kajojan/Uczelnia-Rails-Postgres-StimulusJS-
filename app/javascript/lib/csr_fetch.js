export function csrfFetch(url, options = {}) {
  const token = document.querySelector("meta[name='csrf-token']").content;

  options.headers = {
    ...options.headers,
    "X-CSRF-Token": token
  };

  return fetch(url, options);
}
