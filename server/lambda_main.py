import logging
import json

logger = logging.Logger(__name__)
logger.setLevel(logging.info)

GET_RESOURCE = "/notes"
CREATE_RESOURCE = "/notes/create"
EDIT_RESOURCE = "/notes/edit"
DELETE_RESOURCE = "/notes/delete"

def main(event, context):
    logger.info(event)
    resource = event["resource"]
    body = json.loads(event["body"])

    if resource == GET_RESOURCE:
        logger.error("Help! Someone wants to get notes!")
    elif resource == CREATE_RESOURCE:
        logger.error("Help! Someone wants to create a note!")
    elif resource == EDIT_RESOURCE:
        logger.error("Help! Someone wants to edit a note!")
    elif resource == DELETE_RESOURCE:
        logger.error("Help! Someone wants to delete a note!")
    
    return response(200, {"message": "success"})


def response(statusCode, body=None):
    response = {
        'statusCode':statusCode,
        'headers':{
            'Content-Type': 'application/json',
            'Access-Control-Allow-Origin':'*'
        }
    }

    if body is not None:
        response['body'] = json.dumps(body)
    
    return response
    
