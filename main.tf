resource "aws_ssm_parameter" "param" {
  count     = length(var.params)
  name      = var.params[count.index].name
  type      = var.params[count.index].type
  value     = var.params[count.index].value
  overwrite = true
  key_id    = "80393f26-f6cd-4ccf-8282-eec198269898"
}

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value = "https://catalogue-dev.sritejadevops.com/", type = "String" },
    { name = "roboshop.dev.frontend.user_url", value = "https://user-dev.sritejadevops.com/", type = "String" },
    { name = "roboshop.dev.frontend.cart_url", value = "https://cart-dev.sritejadevops.com/", type = "String" },
    { name = "roboshop.dev.frontend.payment_url", value = "https://payment-dev.sritejadevops.com/", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url", value = "https://shipping-dev.sritejadevops.com/", type = "String" },

    { name = "roboshop.dev.cart.redis_host", value = "redis-dev.sritejadevops.com", type = "String" },
    { name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.sritejadevops.com", type = "String" },
    { name = "roboshop.dev.cart.catalogue_port", value = "8080", type = "String" },

    { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },

    { name = "roboshop.dev.payment.cart_host", value = "cart-dev.sritejadevops.com", type = "String" },
    { name = "roboshop.dev.payment.cart_port", value = "8080", type = "String" },
    { name = "roboshop.dev.payment.user_host", value = "user-dev.sritejadevops.com", type = "String" },
    { name = "roboshop.dev.payment.user_port", value = "8080", type = "String" },
    { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.sritejadevops.com", type = "String" },
    { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.shipping.cart_endpoint", value = "cart-dev.sritejadevops.com:8080", type = "String" },
    { name = "roboshop.dev.shipping.db_host", value = "mysql-dev.sritejadevops.com", type = "String" },
    { name = "roboshop.dev.user.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.user.redis_host", value = "redis-dev.sritejadevops.com", type = "String" },
    { name = "roboshop.dev.user.mongo_url", value = "mongodb://mongodb-dev.sritejadevops.com:27017/users", type = "String" },
    { name = "roboshop.dev.rabbitmq.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.mysql.username", value = "roboshop", type = "String" },
    { name = "roboshop.dev.docdb.username", value = "roboshop", type = "String" },


    ## Passwords will never be a part of git repos, usually in organisations, we create them manually. Meaning who ever has access they will provision these secrets in paramter store
    { name = "roboshop.dev.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.mysql.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.docdb.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-czrx5mbvxqcb.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
  ]
}