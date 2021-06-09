# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    attr_accessor :emails

    def initialize(email_address)
        @emails = email_address
    end

    def parse
        final = Array.new
        self.emails.split(', ').map do |email|
            email.split(' ').each{|elt|
                if !final.include?(elt)
                    final.push(elt)
                end
            }
        end
        final
    end

end