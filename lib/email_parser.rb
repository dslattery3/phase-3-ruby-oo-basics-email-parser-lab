# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    def initialize(emails)
        @emails = emails
    end
    
    def parse
        split_emails = @emails.split(" ")
        email_arr = split_emails.map do |email|
            if email[email.length - 1] == ","
                email[0, email.length-1]
            else
                email
            end
        end
        
        final_arr = email_arr.uniq()

        return final_arr
    end


end