%dw 2.0
//This is where we specify the output format
output application/json
//This is the seperator between the header and body of your DataWeave code
---
//This is where you need to specify the DataWeave needed to transform the inbound payload into the desired output
//At the moment we are just taking the raw payload and converting to json
//Hint: Follow the challenge and open the example DataWeave linked to see a comparable example
payload