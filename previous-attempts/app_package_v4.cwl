cwlVersion: v1.0
$graph:
  - id: execute
    class: Workflow
    label: launchscript
    inputs:
      - id: aoi
        label: AreaOfInterest
        doc: BBOX of the AoI
        type: string
    outputs:
      - id: calculated
        outputSource:
          - pyexec_step/calculated
        type: File
        outputBinding: {}
    steps:
      - id: pyexec_step
        in:
          - id: aoi
            source:
              - aoi
        out:
          - calculated
        run: '#pyexec'
    doc: ADD LATER
  - id: pyexec
    class: CommandLineTool
    baseCommand:
      - python
      - '-m'
      - app
    label: ExecuteScript
    doc: ADD LATER
    inputs:
      - id: aoi
        type: string
        inputBinding:
          prefix: '--aoi'
    outputs:
      - id: calculated
        format: .txt
        type: File
        outputBinding: {}
    requirements:
      DockerRequirement:
        dockerPull: potato55/app-package
$namespaces:
  s: https://schema.org/
s:softwareVersion: 0.0.1
s:dateCreated: '2023-07-13'