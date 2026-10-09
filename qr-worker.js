// Decodes QR codes off the main thread so the camera preview stays smooth.
importScripts('vendor/jsQR.js');
self.onmessage = e => {
  const { id, buf, w, h, invert } = e.data;
  let text = null;
  try {
    const code = jsQR(new Uint8ClampedArray(buf), w, h, { inversionAttempts: invert ? 'onlyInvert' : 'dontInvert' });
    text = code ? code.data : null;
  } catch (err) {}
  self.postMessage({ id, text });
};
