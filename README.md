# Hello World OGC Application Package

This repository contains an example Application Package written in Python. It is intended to be used as a template for creating new Application Packages. It is also a good starting point for learning how to write an Application Package. The Application Package is written in Python, but the concepts are applicable to any programming language.

## Getting Started

The 'src' directory contains 4 files:

1. **ap_test.cwl** - This is a CWL file describing the application package. It is the entry point for the application package. It describes the inputs, outputs, and steps of the application package. More information can be found here: [OGC Application Package best practices](https://docs.ogc.org/bp/20-089r1.html#toc26)

2. **Dockerfile** - This Dockerfile is used to build the environment. It is possible to build it yourself or use a prebuilt image which can be found here: [potato55/hello-world-app:7.0](https://hub.docker.com/repository/docker/potato55/hello-world-app/general)

3. **hello_world.py** - This is the actual script that will be run. It is a simple script that takes a string as input in a form of --param argument and uses it to generate a STAC Catalogue. STAC Catalogue is a standard output of EOEPCA processes, more information can be found here: [STAC Specification](https://github.com/radiantearth/stac-spec/tree/master)

4. **requests.http** - This file makes it easy to deploy and execute Application Packages with a Visual Studio Code plugin called [REST Client](https://marketplace.visualstudio.com/items?itemName=humao.rest-client), which makes it easy to send requests to the processing service. 

**NOTE**: The requests are preconfigured for an EOEPCA simple local deployment which can be found in the [official deployment guide](https://deployment-guide.docs.eoepca.org/current/)

