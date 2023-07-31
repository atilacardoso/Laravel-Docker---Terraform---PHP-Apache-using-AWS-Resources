[
    {
        "name": "api",
        "image": "${app_image}",
        "essential": true,
        "memoryReservation": 512,
        "environment": [
            {"name": "DB_HOST", "value": "${db_host}"},
            {"name": "DB_NAME", "value": "${db_name}"},
            {"name": "DB_USER", "value": "${db_user}"},
            {"name": "DB_PASS", "value": "${db_pass}"},
            {"name": "ALLOWED_HOSTS", "value": "${allowed_hosts}"}
        ],
        "logConfiguration": {
            "logDriver": "awslogs",
            "options": {
                "awslogs-group": "${log_group_name}",
                "awslogs-region": "${log_group_region}",
                "awslogs-stream-prefix": "api"
            }
        },
        "portMappings": [
            {
                "containerPort": 80,
                "hostPort": 80
            }
        ],
        "mountPoints": [
            {
                "readOnly": false,
                "containerPath": "/vol/static",
                "sourceVolume": "static"
            }
        ]
    }
]
