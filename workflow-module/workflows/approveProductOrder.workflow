{
	"contents": {
		"f51a4d25-f15d-446b-96e6-110202c96d6b": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "mcaf.approveProductOrder",
			"subject": "ProductOrder",
			"customAttributes": [],
			"name": "approveProductOrder",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Initiate request"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "End"
				}
			},
			"activities": {
				"82f6a6dc-0075-4179-a7fe-2cffdaf0a0ac": {
					"name": "Send To Approval"
				}
			},
			"sequenceFlows": {
				"de876e7a-b432-4a1a-9e37-5fa4507b3cd1": {
					"name": "SequenceFlow10"
				},
				"b737dd19-c930-4e2c-866d-eacadef17a63": {
					"name": "SequenceFlow11"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Initiate request"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "End"
		},
		"82f6a6dc-0075-4179-a7fe-2cffdaf0a0ac": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Product order for approval ",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "andrei_kryvets@epam.com",
			"formReference": "/forms/approveProductOrder/productApproval.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "productapproval"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"id": "usertask2",
			"name": "Send To Approval"
		},
		"de876e7a-b432-4a1a-9e37-5fa4507b3cd1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "82f6a6dc-0075-4179-a7fe-2cffdaf0a0ac"
		},
		"b737dd19-c930-4e2c-866d-eacadef17a63": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "82f6a6dc-0075-4179-a7fe-2cffdaf0a0ac",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"551b165a-677a-4dcb-886e-23360974ef4a": {},
				"adf169a7-fabc-4b89-9e10-d254580557f1": {},
				"4f9b448d-01f2-46f1-af65-70da58611176": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 401,
			"y": 98,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"551b165a-677a-4dcb-886e-23360974ef4a": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 221,
			"y": 87,
			"width": 100,
			"height": 60,
			"object": "82f6a6dc-0075-4179-a7fe-2cffdaf0a0ac"
		},
		"adf169a7-fabc-4b89-9e10-d254580557f1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116.5 221.5,116.5",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "551b165a-677a-4dcb-886e-23360974ef4a",
			"object": "de876e7a-b432-4a1a-9e37-5fa4507b3cd1"
		},
		"4f9b448d-01f2-46f1-af65-70da58611176": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "271,117 410,117",
			"sourceSymbol": "551b165a-677a-4dcb-886e-23360974ef4a",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "b737dd19-c930-4e2c-866d-eacadef17a63"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 1,
			"hubapireference": 1,
			"sequenceflow": 11,
			"startevent": 1,
			"boundarytimerevent": 1,
			"endevent": 1,
			"usertask": 2,
			"servicetask": 2,
			"scripttask": 6,
			"exclusivegateway": 1
		}
	}
}