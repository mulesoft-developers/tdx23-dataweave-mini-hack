%dw 2.0
output application/json
//These 3 dashes are the seperator between the header and body of your DataWeave code
---
//This is where you need to specify the DataWeave needed to transform the inbound payload into the desired output
//At the moment we are just taking the raw payload and converting to json
//Hint: Follow the challenge and open the example DataWeave linked to see a comparable example
payload
