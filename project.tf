resource "vercel_project" "example" {
  name      = "sample-blog-nextjs-app"
  framework = "nextjs"

  git_repository = {
    type = "github"
    # ユーザー名/リポジトリ名は置き換えてください
    repo = "hisuihisui/sample-blog-nextjs-app"
  }
}

resource "vercel_project_domain" "example" {
  project_id = vercel_project.example.id
  domain     = "test.hisui-app.com"
}
