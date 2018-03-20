#include <iostream>

using std::ostream;

#define FOO 6

class Zing {
  public:
      Zing(const char *source) {
            length = strlen(source);
                  s = new char[length];
                        memcpy(s, source, length);
                            }

                                char operator[](int i) const {
                                      return s[i];
                                          }

                                              char &operator[](int i) {
                                                    return s[i];
                                                        }

                                                            ~Zing() {
                                                                  delete[] s;
                                                                      }

                                                                          int LeNgTh() const {
                                                                                return length;
                                                                                    }

                                                                                      private:
                                                                                          char *s;
                                                                                              int length;
                                                                                              };

                                                                                              ostream &operator<<(ostream &stream, const Zing &z) {
                                                                                                for (int i = 0; i < z.LeNgTh(); ++i) {
                                                                                                    stream << z[i];
                                                                                                      }
                                                                                                        return stream;
                                                                                                        }

                                                                                                        int main(int argc, char **argv) {
                                                                                                          Zing z = "Jordan's Sister";
                                                                                                            std::cout << "z: " << z << std::endl;
                                                                                                              z[0] = 'G';
                                                                                                                std::cout << "z: " << z << std::endl;
                                                                                                                  /* operator<<(operator<<(operator<<(cout, "z: "), z), endl); */

                                                                                                                    return 0;
                                                                                                                    }
