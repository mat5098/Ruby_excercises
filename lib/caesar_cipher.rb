
class CaesarCipher 
    def translate(message, shift)
    result=''
    shifted = message.split("")
    shifted.each do |char|
        if char.ord.between?(65,90)
            charindex = char.ord - 65
            character = ((charindex + shift) % 26) + 65
            result << character
        end
        if char.ord.between?(97,122)
            charindex = char.ord - 97
            character = ((charindex + shift) % 26) + 97
            result << character
        end
    end
    result
    end
end

caesar = CaesarCipher.new
print caesar.translate("GrzegorzBrzenczyszczykiewicz",5)