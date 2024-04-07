APP_BASE_NAME=govelte-app1
APP_MYSQL_DATABASE_NAME=$(APP_BASE_NAME)-db1
GOOGLE_CLOUD_PROJECT=$(APP_BASE_NAME)-gcp-project1
APP_FIREBASE_API_KEY?=firebase-api-key-dummy1

PATH_TO_GOVELTE=$(PATH_TO_PROJECT)/vendor/govelte
include $(PATH_TO_GOVELTE)/makefiles/default/app_stage.mk
include $(PATH_TO_GOVELTE)/makefiles/default/ports.mk
include $(PATH_TO_GOVELTE)/makefiles/default/directories.mk
