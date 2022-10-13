variable "project_push_sub" {
  type        = string
  description = "The project ID to manage the Pub/Sub subscription"
  default     = null
}

variable "project_pull_sub" {
  type        = string
  description = "The project ID to manage the Pub/Sub subscription"
  default     = null
}

variable "push_subscriptions" {
  type        = list(map(string))
  description = "The list of the push subscriptions"
  default     = []
}

variable "pull_subscriptions" {
  type        = list(object({
     subscription_labels_pull = any
              name             =   string
              topic_id             = string
              project_pull_sub     = string
              ack_deadline_seconds = number
              message_retention_duration = string
              expiration_policy   = string
              }))
                default     = []
              }

variable "subscription_labels_push" {
  type        = map(string)
  description = "A map of labels to assign to every Pub/Sub subscription"
  default     = {}
}

variable "topic_id" {
  type        = string
  description = "The Pub/Sub topic id for subscription"
    default     = null
}


variable "schema_settings" {
  type        = map(any)
  description = "Settings for validating messages published against a schema."
  default     = null
}
