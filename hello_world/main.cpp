#include "settings/name.hpp"
#include "verifier/name.hpp"

int main() {
  settings::NameSettings nameSettings;
  verifier::NameVerifier nameVerifier;

  nameSettings.Do();
  nameVerifier.Do();

  return 0;
}
