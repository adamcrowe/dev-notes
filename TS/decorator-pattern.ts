/**
 * Car Class
 */
abstract class Car {
    public description: string;

    public getDescription(): string {
        return this.description;
    };

    public abstract cost(): number;
}

/**
 * Car Options Class
 */
abstract class CarOptions extends Car {
    decoratedCar: Car;
    public abstract getDescription(): string;
}

/**
 * Model S
 */
class ModelS extends Car {
    public description = "Model S";

    public cost(): number {
        return 73000;
    }
}

/**
 * Model X
 */
class ModelX extends Car {
    public description = "Model X";

    public cost(): number {
        return 77000
    }
}

/**
 * Enhanced Auto Pilot Class
 * Decorates a Car with Enhanced Autopilot option
 */
class EnhancedAutoPilot extends CarOptions {
    constructor(car: Car) {
        super();
        this.decoratedCar = car;
    }

    public getDescription(): string {
        return this.decoratedCar.getDescription() + ', Enhanced Autopilot';
    }

    public cost(): number {
        return this.decoratedCar.cost() + 5000;
    }
}

/**
 * Smart Air Suspension Class
 * Decorates a Car with Smart Air Suspension option
 */
class SmartAirSuspension extends CarOptions {
    constructor(car: Car) {
        super();
        this.decoratedCar = car;
    }

    public getDescription(): string {
        return this.decoratedCar.getDescription() + ', Smart Air Suspension';
    }

    public cost(): number {
        return this.decoratedCar.cost() + 2500;
    }
}

/**
 * Rear Facing Seats Class
 * Decorates a Car with Rear Facing Seats option
 */
class RearFacingSeats extends CarOptions {
    constructor(car: Car) {
        super();
        this.decoratedCar = car;
    }

    public getDescription(): string {
        return this.decoratedCar.getDescription() + ', Rear Facing Seats';
    }

    public cost(): number {
        return this.decoratedCar.cost() + 4000;
    }
}

let myTesla = new ModelS(); // create base tesla
myTesla = new SmartAirSuspension(myTesla); // decorate tesla with option
myTesla = new RearFacingSeats(myTesla); // decorate tesla with option

console.log(myTesla.cost()); // 79500
console.log(myTesla.getDescription()); // Model S, Smart Air Suspension, Rear Facing Seats