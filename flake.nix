{
  description = "flake templates";

  outputs = { self }: {

    templates = {

      infra = {
        path = ./infra;
        description = "Basic infra deployment";
      };

    };

    defaultTemplate = self.templates.infra;

  };
}
