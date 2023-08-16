# ホストゾーンの参照
data "aws_route53_zone" "example" {
  name = "hisui-app.com"

}

# CNAMEレコードを定義
resource "aws_route53_record" "example" {
  zone_id = data.aws_route53_zone.example.zone_id
  name    = "test"
  type    = "CNAME"
  ttl     = 300
  records = ["cname.vercel-dns.com"]
}
