resource "vercel_project" "example" {
  name      = "sample-blog-nextjs-app"
  framework = "nextjs"

  git_repository = {
    type = "github"
    # ユーザー名/リポジトリ名
    repo = "hisuihisui/sample-blog-nextjs-app"
  }
}
