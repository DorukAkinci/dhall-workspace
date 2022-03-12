let MetricsType = (./MetricsProvider.dhall).Type

let MetricsData = {
    serviceInstanceId: Text,
    resource: Text,
    values: List MetricsType
}

in MetricsData