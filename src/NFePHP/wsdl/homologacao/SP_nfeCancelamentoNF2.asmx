<?xml version="1.0" encoding="UTF-8"?>
<wsdl:definitions xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://www.portalfiscal.inf.br/nfe/wsdl/NfeCancelamento2" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" targetNamespace="http://www.portalfiscal.inf.br/nfe/wsdl/NfeCancelamento2" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Serviço destinado ao atendimento de solicitações de cancelamento de Notas Fiscais Eletrônicas.</wsdl:documentation>
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://www.portalfiscal.inf.br/nfe/wsdl/NfeCancelamento2">
      <s:element name="nfeDadosMsg">
        <s:complexType mixed="true">
          <s:sequence>
            <s:any />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="nfeCancelamentoNF2Result">
        <s:complexType mixed="true">
          <s:sequence>
            <s:any />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="nfeCabecMsg" type="tns:nfeCabecMsg" />
      <s:complexType name="nfeCabecMsg">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="cUF" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="versaoDados" type="s:string" />
        </s:sequence>
        <s:anyAttribute />
      </s:complexType>
    </s:schema>
  </wsdl:types>
  <wsdl:message name="nfeCancelamentoNF2Soap12In">
    <wsdl:part name="nfeDadosMsg" element="tns:nfeDadosMsg" />
  </wsdl:message>
  <wsdl:message name="nfeCancelamentoNF2Soap12Out">
    <wsdl:part name="nfeCancelamentoNF2Result" element="tns:nfeCancelamentoNF2Result" />
  </wsdl:message>
  <wsdl:message name="nfeCancelamentoNF2nfeCabecMsg">
    <wsdl:part name="nfeCabecMsg" element="tns:nfeCabecMsg" />
  </wsdl:message>
  <wsdl:portType name="NfeCancelamento2Soap12">
    <wsdl:operation name="nfeCancelamentoNF2">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Cancelamento de NF-e</wsdl:documentation>
      <wsdl:input message="tns:nfeCancelamentoNF2Soap12In" />
      <wsdl:output message="tns:nfeCancelamentoNF2Soap12Out" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="NfeCancelamento2Soap12" type="tns:NfeCancelamento2Soap12">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="nfeCancelamentoNF2">
      <soap12:operation soapAction="http://www.portalfiscal.inf.br/nfe/wsdl/NfeCancelamento2/nfeCancelamentoNF2" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:nfeCancelamentoNF2nfeCabecMsg" part="nfeCabecMsg" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
        <soap12:header message="tns:nfeCancelamentoNF2nfeCabecMsg" part="nfeCabecMsg" use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="NfeCancelamento2">
    <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Serviço destinado ao atendimento de solicitações de cancelamento de Notas Fiscais Eletrônicas.</wsdl:documentation>
    <wsdl:port name="NfeCancelamento2Soap12" binding="tns:NfeCancelamento2Soap12">
      <soap12:address location="https://homologacao.nfe.fazenda.sp.gov.br/nfeweb/services/NfeCancelamento2.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>