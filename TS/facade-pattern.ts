/** Blue-ray Player Class */
class BlurayPlayer {
    on() {
        console.log('Bluray player turning on...');
    }

    turnOff() {
        console.log('Bluray turning off...');
    }

    play() {
        console.log('Playing bluray disc...');
    }
}

/** Amplifier Class */
class Amplifier {
    on() {
        console.log('Amp is turning on...');
    }

    turnOff() {
        console.log('Amplifier turning off...');
    }

    setSource(source: string) {
        console.log('Setting source to ' + source);
    }

    setVolume(volumeLevel: number) {
        console.log('Setting volume to ' + volumeLevel);
    }
}

/** Lights Class */
class Lights {
    dim() {
        console.log('Lights are dimming...');
    }
}

/** TV Class */
class TV {
    turnOn() {
        console.log('TV turning on...');
    }

    turnOff() {
        console.log('TV turning off...');
    }
}

/** Popcorn Maker Class */
class PopcornMaker {
    turnOn() {
        console.log('Popcorn maker turning on...');
    }

    turnOff() {
        console.log('Popcorn maker turning off...');
    }

    pop() {
        console.log('Popping corn!');
    }
}

/**
 * Home Theater Facade
 */
class HomeTheaterFacade {
    private bluray: BlurayPlayer;
    private amp: Amplifier;
    private lights: Lights;
    private tv: TV;
    private popcornMaker: PopcornMaker;

    constructor(amp: Amplifier, bluray: BlurayPlayer, lights: Lights, tv: TV, popcornMaker: PopcornMaker) {
        this.bluray = bluray;
        this.amp = amp;
        this.lights = lights;
        this.tv = tv;
        this.popcornMaker = popcornMaker;
    }

    public watchMovie() {
        this.popcornMaker.turnOn();
        this.popcornMaker.pop();

        this.lights.dim();

        this.tv.turnOn();

        this.amp.on();
        this.amp.setSource('bluray');
        this.amp.setVolume(11);

        this.bluray.on();
        this.bluray.play();
    }

    unWatchMovie() {
        this.popcornMaker.turnOff();
        this.amp.turnOff();
        this.tv.turnOff();
        this.bluray.turnOff();
    }
}

const bluray = new BlurayPlayer();
const amp = new Amplifier();
const lights = new Lights();
const tv = new TV();
const popcornMaker = new PopcornMaker();

const hometheater = new HomeTheaterFacade(amp, bluray, lights, tv, popcornMaker);
hometheater.watchMovie();

// Popcorn maker turning on...
// Popping corn!
// Lights are dimming...
// TV turning on...
// Amp is turning on...
// Setting source to bluray
// Setting volume to 11
// Bluray player turning on...
// Playing bluray disc...