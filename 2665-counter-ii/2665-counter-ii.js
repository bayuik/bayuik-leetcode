const createCounter = (init) => {
    let initial_value = init;
    return {
        increment: () => ++initial_value,
        reset: () => initial_value = init,
        decrement: () => --initial_value,
    }
}

const counter = createCounter(5)
counter.increment();
counter.reset();
counter.decrement();