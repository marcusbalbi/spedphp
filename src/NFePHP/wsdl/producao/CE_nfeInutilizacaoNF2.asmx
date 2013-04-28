<?xml version="1.0" encoding="UTF-8"?>
<wsdl:definitions xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://www.portalfiscal.inf.br/nfe/wsdl/NfeInutilizacao2" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" targetNamespace="http://www.portalfiscal.inf.br/nfe/wsdl/NfeInutilizacao2">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://www.portalfiscal.inf.br/nfe/wsdl/NfeInutilizacao2">
      <s:element name="nfeDadosMsg">
        <s:complexType mixed="true">
          <s:sequence>
            <s:any/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="nfeInutilizacaoNF2Result">
        <s:complexType mixed="true">
          <s:sequence>
            <s:any/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="nfeCabecMsg" type="tns:nfeCabecMsg"/>
      <s:complexType name="nfeCabecMsg">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="versaoDados" type="s:string"/>
          <s:element minOccurs="0" maxOccurs="1" name="cUF" type="s:string"/>
        </s:sequence>
        <s:anyAttribute/>
      </s:complexType>
    </s:schema>
  </wsdl:types>
  <wsdl:message name="nfeInutilizacaoNF2SoapIn">
    <wsdl:part name="nfeDadosMsg" element="tns:nfeDadosMsg"/>
  </wsdl:message>
  <wsdl:message name="nfeInutilizacaoNF2SoapOut">
    <wsdl:part name="nfeInutilizacaoNF2Result" element="tns:nfeInutilizacaoNF2Result"/>
  </wsdl:message>
  <wsdl:message name="nfeInutilizacaoNF2nfeCabecMsg">
    <wsdl:part name="nfeCabecMsg" element="tns:nfeCabecMsg"/>
  </wsdl:message>
  <wsdl:portType name="NfeInutilizacao2Soap">
    <wsdl:operation name="nfeInutilizacaoNF2">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Serviço destinado ao atendimento de solicitações de inutilização de numeração</wsdl:documentation>
      <wsdl:input message="tns:nfeInutilizacaoNF2SoapIn"/>
      <wsdl:output message="tns:nfeInutilizacaoNF2SoapOut"/>
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="NfeInutilizacao2Soap12" type="tns:NfeInutilizacao2Soap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http"/>
    <wsdl:operation name="nfeInutilizacaoNF2">
      <soap12:operation soapAction="http://www.portalfiscal.inf.br/nfe/wsdl/NfeInutilizacao2/nfeInutilizacaoNF2" style="document"/>
      <wsdl:input>
        <soap12:body use="literal"/>
        <soap12:header message="tns:nfeInutilizacaoNF2nfeCabecMsg" part="nfeCabecMsg" use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal"/>
        <soap12:header message="tns:nfeInutilizacaoNF2nfeCabecMsg" part="nfeCabecMsg" use="literal"/>
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="NfeInutilizacao2">
    <wsdl:port name="NfeInutilizacao2Soap12" binding="tns:NfeInutilizacao2Soap12">
      <soap12:address location="https://nfe.sefaz.ce.gov.br:443/nfe2/services/NfeInutilizacao2"/>
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>