
    def buckaroo_workspace(package):
      return "buckaroo_" + str(hash(package))

    def buckaroo_setup():
      
        native.local_repository(
          name = buckaroo_workspace("GitHub {Owner = "njlr";
        Project = "bazel-test-a";}"),
          path = "./buckaroo/github/njlr/bazel-test-a",
        )
        
    