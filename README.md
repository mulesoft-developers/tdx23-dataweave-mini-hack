<h1 align="center">
	<img
	width="150"
	src="/images/max-terminal.gif"></br>
	TDX '23 Mini-Hack Challenge<br>     
</h1>

<h4 align="center">
	<a href="#overview">Overview</a> |
    <a href="#dataweave">DataWeave Scripts</a> |
	<a href="#contributing">Contribute</a>
</h4>
	
<h3 align="center">
	MuleSoft mini-hack challenge and example - created for TDX '23.<br><br>
</h3>

## Overview
This repo contains the DataWeave scripts used at the TDX '23 mini-hack zone. The challenge was to convert xml to json using selectors, string concatenation, string functions and a DataWeave custom function.

### Challenge Description
"We’ve been tasked with integrating with a system that returns its payload as XML. This SOAP based web service returns a payload that needs to be transformed into a JSON payload for a downstream system. As part of the transformation we need to only include fields that are relevant to reduce the payload size and provide some formatting changes to some payload values.

Converting XML to JSON can be challenging. Luckily you’ll use MuleSoft’s DataWeave programming language. DataWeave allows you to easily read and parse data from one format, transform it, and write it out as a different format."

### Inbound Payload

```
<?xml version='1.0' encoding='UTF-8'?>
<event>
  <event_name>Trailblazer DX '23</event_name>
  <event_start>2023/03/06</event_start>
  <event_end>2023.03.08</event_end>
  <product>
    <name>MuleSoft</name>
    <runtime>Mule 4</runtime>
  </product>
  <area>
    <building>Moscone West</building>
    <zone>Mini Hacks</zone>
    <fun_rating>High</fun_rating>
  </area>
  <event_address>
    <address>747 Howard Street</address>
    <city>San Francisco</city>
    <state>CA</state>
    <postCode>94103</postCode>
    <country>USA</country>
  </event_address>
  <team>Developer Advocates</team>
  <mascot>Max</mascot>
</event>
```

### Required Output

```
{
 "event": "TRAILBLAZER DX '23",
 "product": "MuleSoft",
 "feature": "DataWeave",
 "zone": "Mini Hacks",
 "location": "Moscone West, San Francisco",
 "when": "2023-03-06",
 "until": "2023-03-08",
 "fun_rating": "low"
}
```

## DataWeave

### challenge-code
This contains the sample payload that attendees will convert to the specified output. The DataWeave script is empty and this will be linked to allow attendees to open the DataWeave playground directly with the input prepopulated.

### example-code
This contains a similar inbound payload that helps attendees view and use the DataWeave script to help them solve the challenge.

## Contributing

Contributions are what make the MuleSoft community such an amazing place. Any contributions you make are **greatly appreciated**.
	
See [contributing.md](/contributing.md) for the MuleSoft Developer principles.
