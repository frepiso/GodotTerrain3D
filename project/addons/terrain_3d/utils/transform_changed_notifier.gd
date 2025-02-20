# Copyright © 2025 Cory Petkovsek, Roope Palmroos, and Contributors.
# Transform Changed Notifier for Terrain3D
@tool
extends Node3D

signal transform_changed


func _ready() -> void:
	assert(Engine.is_editor_hint())
	set_notify_transform(true)


func _notification(what: int) -> void:
	if what == NOTIFICATION_TRANSFORM_CHANGED:
		transform_changed.emit()
