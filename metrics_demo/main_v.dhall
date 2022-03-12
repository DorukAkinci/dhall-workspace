let MetricsType = (./MetricsProvider.dhall).Type
let MetricData = (./MetricsData.dhall)

let output: MetricData = {
    serviceInstanceId = "test",
    resource = "test-res",
    values = ./values.dhall
}
in output