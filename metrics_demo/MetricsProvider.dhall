let Gauge = {
    writtenAt: Text,
    observedAt: Text,
    value: Natural
}

let SamplingCounter = {
    writtenAt: Text,
    observedAt: Text,
    value: Natural
}

let PeriodicCounter = {
    writtenAt: Text,
    periodStart: Text,
    periodEnd: Text,
    countedValue: Natural
}

let MetricsProvider =  < Gauge : Gauge  | Sampling : SamplingCounter | Periodic : PeriodicCounter >

in  { Type = MetricsProvider, Gauge, SamplingCounter, PeriodicCounter }
