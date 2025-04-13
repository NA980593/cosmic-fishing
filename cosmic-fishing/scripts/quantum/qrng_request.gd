extends Node

@onready var http_request: HTTPRequest = $HTTPRequest

signal got_number

func _ready() -> void:
	http_request.request_completed.connect(_on_request_completed)

func send_request():
	var headers = ["Content-Type: application/json"]
	http_request.request("https://quantum-flask.onrender.com/home",headers,HTTPClient.METHOD_GET)

func _on_request_completed(result, response_code, headers, body):
	var json = JSON.parse_string(body.get_string_from_utf8())
	emit_signal("got_number",int(json))
