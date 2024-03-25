# prevent_destroy  = true/false
* will prevent it from destroying when you do terraform destroy it throws , resoruce cannot be destroyed as it is  prevent by lifecycle prevent_destroy


# ignore_changes = true/false

```HCL
lifecycle {
    ignore_changes = [tag]
}
```
```HCL
lifecycle {
    ignore_changes = [tag, instance_type]
}
```
```HCL
lifecycle {
    ignore_changes = all
}
```