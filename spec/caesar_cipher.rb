require "./lib/caesar_cipher"

describe CaesarCipher do
    describe "#translate" do
        it "Check caesar Cipher" do
            caesar = CaesarCipher.new
            expect(caesar.translate('GrzegorzBrzenczyszczykiewicz',5)).to eql('LwejltweGwejshedxehedpnjbnhe')
        end
        it "Check caesar Cipher" do
            caesar = CaesarCipher.new
            expect(caesar.translate('abc',3)).to eql('def')
        end
    end
    
    
end
