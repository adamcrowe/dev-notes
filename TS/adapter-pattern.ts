/** iPhone Interface */
interface IPhone {
    useLightning();
}

/** Android Interface */
interface Android {
    useMicroUSB();
}

/**
 * iPhone 7 Class
 */
class iPhone7 implements IPhone {
    useLightning() {
        console.log('Using lightning port...');
    }
}

/**
 * Google Pixel Class
 */
class GooglePixel implements Android {
    useMicroUSB() {
        console.log('Using micro USB...');
    }
}

/**
 * Adapter Class
 */
class LightningToMicroUSBAdapter implements Android {
    iphoneDevice: IPhone;

    constructor(iphone: IPhone) {
        this.iphoneDevice = iphone;
    }

    useMicroUSB() {
        console.log('Want to use micro USB, converting...');
        this.iphoneDevice.useLightning();
    }
}

let iphone = new iPhone7();
let chargeAdaptor = new LightningToMicroUSBAdapter(iphone);

chargeAdaptor.useMicroUSB();

// Want to use micro USB, converting...
// Using lightning port...