# extend packages in overlay
{ final, prev }: {

  # infra
  infra = prev.callPackage ./infra { };

  # alias to infra
  i = final.infra;
}
