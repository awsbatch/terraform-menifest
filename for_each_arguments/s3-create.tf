# Create S3 Buckets

resource "aws_s3_bucket" "mys3buckets" {
  for_each = {
    dev = "dravendrarana.cloud"
    qa  = "qravendrarana.cloud"
    prod = "pravendrarana.cloud"
    stag = "sravendrarana.cloud"
  }


    bucket  = "${each.key}-${each.value}-${each.key}"
    acl = "private"
    tags = {
        Env = each.key
        bucketname = "${each.key}-${each.value}-${each.key}"
        eachvalue = each.value
    }
}
