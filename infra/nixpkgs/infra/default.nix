# example of infra cli
{ lib, stdenv }:

stdenv.mkDerivation rec {
  pname = "infra";
  version = "0.0.1";

  src = ../../cli/infra;

  installPhase = ''
    mkdir -p $out/bin
    mv main $out/bin/infra
    chmod +x $out/bin/infra

    # do alias
    ln -sF $out/bin/infra $out/bin/i
  '';

  meta = with lib; {
    description = "Infra cli for manage service deploy";
    homepage = "infra-cli";
    license = licenses.wtfpl;
    maintainers = with maintainers; [ zbioe ];
  };
}
