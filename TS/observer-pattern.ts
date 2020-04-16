/** Subject Interface */
interface Subject{
    registerObserver(o: Observer);
    removeObserver(o: Observer);
    notifyObservers();
}

/** Observer Interface */
interface Observer{
    update(temperature: number);
}

/**
 * Weather Station Class
 */
class WeatherStation implements Subject {
    private observers: Observer[] = [];
    private temperature: number;

    registerObserver(o: Observer) {
        this.observers.push(o);
    }

    removeObserver(o: Observer) {
        let index = this.observers.indexOf(o);
        this.observers.splice(index, 1);
    }

    notifyObservers() {
        for (let observer of this.observers) {
            observer.update(this.temperature);
        }
    }

    setTemperature(temp: number) {
        console.log('WeatherStation: new temperature measurement: ' + temp);
        this.temperature = temp;
        this.notifyObservers();
    }
}

/**
 * Temperature Display Class
 */
class TemperatureDisplay implements Observer {
    private subject: Subject;

    constructor(weatherStation: Subject) {
        this.subject = weatherStation;
        weatherStation.registerObserver(this);
    }

    update(temperature: number) {
        console.log(`TemperatureDisplay: The temperature is now: ${temperature}. Updating my display...`);
    }
}

/**
 * Fan Class
 */
class Fan implements Observer {
    private subject: Subject;

    constructor(weatherStation: Subject) {
        this.subject = weatherStation;
        weatherStation.registerObserver(this);
    }

    update(temperature: number) {
        if (temperature > 25) {
            console.log(`Fan: The temperature is now: ${temperature}. It's hot! Turning myself on...`);
        } else {
            console.log(`Fan: The temperature is now: ${temperature}. It's nice and cool! Turning myself off...`);
        }
    }
}

let weatherStation = new WeatherStation(); // create Weather Station

let tempDisplay = new TemperatureDisplay(weatherStation); // create Temperature Display (and subscribe to Weather Station)
let fan = new Fan(weatherStation); // create Fan (and subscribe to Weather Station)

weatherStation.setTemperature(20);
weatherStation.setTemperature(30);

// WeatherStation: new temperature measurement: 20
// TemperatureDisplay: The temperature is now: 20. Updating my display...
// Fan: The temperature is now: 20. It's nice and cool! Turning myself off...
// WeatherStation: new temperature measurement: 30
// TemperatureDisplay: The temperature is now: 30. Updating my display...
// Fan: The temperature is now: 30. It's hot! Turning myself on...