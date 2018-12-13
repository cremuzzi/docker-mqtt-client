# How to use this image

This image contains a sample MQTT client written in GO. The original source code of the client comes from [paho.mqtt.golang](https://github.com/eclipse/paho.mqtt.golang).

## Quickstart

```sh
docker run --rm -i -t cremuzzi/mqtt-client mqtt -action sub -broker tcp://iot.eclipse.org:1883 -topic "#"
```
