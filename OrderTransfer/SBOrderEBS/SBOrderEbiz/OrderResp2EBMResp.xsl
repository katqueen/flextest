<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:ns0="http://www.flexagon.com/order"
                xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction"
                xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:tns="http://www.flexagon.com/OrderEBM" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction"
                xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction"
                xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 tns oraxsl DVMFunctions BasicCredentialsUserFunction UUIDUserFunction IsUserInRoleFunction IsUserInGroupFunction XrefFunctions">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="XMLSchema_-4901770.xsd"/>
        <oracle-xsl-mapper:rootElement name="OrderResponse" namespace="http://www.flexagon.com/order"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="OrderEBM.xsd"/>
        <oracle-xsl-mapper:rootElement name="OrderResponseEBM" namespace="http://www.flexagon.com/OrderEBM"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED AUG 27 15:41:41 CDT 2014].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:OrderResponseEBM>
      <tns:OrderId>
        <xsl:value-of select="/ns0:OrderResponse/ns0:OrderNumber"/>
      </tns:OrderId>
      <tns:QuantityShipped>
        <xsl:value-of select="/ns0:OrderResponse/ns0:QuantitySent"/>
      </tns:QuantityShipped>
      <xsl:if test="/ns0:OrderResponse/ns0:Discount">
        <tns:PercentDiscount>
          <xsl:value-of select="/ns0:OrderResponse/ns0:Discount"/>
        </tns:PercentDiscount>
      </xsl:if>
      <xsl:if test="/ns0:OrderResponse/ns0:Status">
        <tns:OrderStatus>
          <xsl:value-of select="/ns0:OrderResponse/ns0:Status"/>
        </tns:OrderStatus>
      </xsl:if>
    </tns:OrderResponseEBM>
  </xsl:template>
</xsl:stylesheet>
