let MetricsType = (./MetricsProvider.dhall).Type
in
[
    MetricsType.Gauge { writtenAt="2022-01-07T12:00:00Z", observedAt="2022-01-07T12:00:00Z", value=5 },
    MetricsType.Gauge { writtenAt="2022-01-07T13:00:00Z", observedAt="2022-01-07T13:00:00Z", value=4 }
]