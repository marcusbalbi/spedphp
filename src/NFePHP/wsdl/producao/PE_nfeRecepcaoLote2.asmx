<?xml version="1.0" encoding="UTF-8"?>
<wsdl:definitions targetNamespace="http://www.portalfiscal.inf.br/nfe/wsdl/NfeRecepcao2" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:tns="http://www.portalfiscal.inf.br/nfe/wsdl/NfeRecepcao2" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">

   <wsdl:types>

      <s:schema elementFormDefault="qualified" targetNamespace="http://www.portalfiscal.inf.br/nfe/wsdl/NfeRecepcao2">

         <s:element name="nfeDadosMsg">

            <s:complexType mixed="true">

               <s:sequence>

                  <s:any/>

               </s:sequence>

            </s:complexType>

         </s:element>

         <s:element name="nfeRecepcaoLote2Result">

            <s:complexType mixed="true">

               <s:sequence>

                  <s:any/>

               </s:sequence>

            </s:complexType>

         </s:element>

         <s:element name="nfeCabecMsg" type="tns:nfeCabecMsg"/>

         <s:complexType name="nfeCabecMsg">

            <s:sequence>

               <s:element maxOccurs="1" minOccurs="0" name="cUF" type="s:string"/>

               <s:element maxOccurs="1" minOccurs="0" name="versaoDados" type="s:string"/>

            </s:sequence>

            <s:anyAttribute/>

         </s:complexType>

      </s:schema>

   </wsdl:types>

   <wsdl:message name="nfeRecepcaoLote2SoapIn">

      <wsdl:part element="tns:nfeDadosMsg" name="nfeDadosMsg"/>

   </wsdl:message>

   <wsdl:message name="nfeRecepcaoLote2SoapOut">

      <wsdl:part element="tns:nfeRecepcaoLote2Result" name="nfeRecepcaoLote2Result"/>

   </wsdl:message>

   <wsdl:message name="nfeRecepcaoLote2nfeCabecMsg">

      <wsdl:part element="tns:nfeCabecMsg" name="nfeCabecMsg"/>

   </wsdl:message>

   <wsdl:portType name="NfeRecepcao2Soap">

      <wsdl:operation name="nfeRecepcaoLote2">

         <wsdl:input message="tns:nfeRecepcaoLote2SoapIn"/>

         <wsdl:output message="tns:nfeRecepcaoLote2SoapOut"/>

      </wsdl:operation>

   </wsdl:portType>

   <wsdl:binding name="NfeRecepcao2Soap12" type="tns:NfeRecepcao2Soap">

      <soap12:binding transport="http://schemas.xmlsoap.org/soap/http"/>

      <wsdl:operation name="nfeRecepcaoLote2">

         <soap12:operation soapAction="http://www.portalfiscal.inf.br/nfe/wsdl/NfeRecepcao2/nfeRecepcaoLote2" style="document"/>

         <wsdl:input>

            <soap12:body use="literal"/>

            <soap12:header message="tns:nfeRecepcaoLote2nfeCabecMsg" part="nfeCabecMsg" use="literal"/>

         </wsdl:input>

         <wsdl:output>

            <soap12:body use="literal"/>

            <soap12:header message="tns:nfeRecepcaoLote2nfeCabecMsg" part="nfeCabecMsg" use="literal"/>

         </wsdl:output>

      </wsdl:operation>

   </wsdl:binding>

   <wsdl:service name="NfeRecepcao2">

      <wsdl:port binding="tns:NfeRecepcao2Soap12" name="NfeRecepcao2">

         <soap12:address location="https://nfe.sefaz.pe.gov.br/nfe-service/services/NfeRecepcao2"/>

      </wsdl:port>

   </wsdl:service>

</wsdl:definitions>