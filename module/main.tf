module "mypythonapp" {
  source    = "../terraform"
  name      = "python"
  namespace = "python-namespace"
  chart     = "../myapp"
}