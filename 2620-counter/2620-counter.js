const createCounter = (n) => () =>  n++ ;

const counter = createCounter(10);
counter();
counter();
counter();