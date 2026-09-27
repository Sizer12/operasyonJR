const ptp = require("pdf-to-printer");
ptp.getPrinters().then(printers => console.log(printers));