UTF8_3OK = "✓✓✓"

def icy_brace_expand(st)
  counts = 0
    st.scan(/{([^{}]+)}/) do |_|
        counts += 1
          end

            if counts > 6; then
                STDERR.puts "__icy_brace_expand: Too many groups (count: #{counts})"
                    return [st]
                      end

                        # Important: At most one!!!
                          expander = nil
                            st.sub!(/{([^{}]+)}/) do |_|
                                expander = $1
                                    UTF8_3OK
                                      end

                                        if expander
                                            rets = expander.split(",", -1).map do |br|
                                                  st.gsub(UTF8_3OK, br)
                                                      end
                                                        else
                                                            return [st]
                                                              end

                                                                rets.map{|p| icy_brace_expand(p)}.flatten
                                                                end

puts icy_brace_expand("{10,11,12}{i,j,k}{7,8}{1,2}")
