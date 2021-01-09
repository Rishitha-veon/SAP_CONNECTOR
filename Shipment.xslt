<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:dis="http://www.sap.com/SBO/DIS" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:nsItem="urn:microsoft-dynamics-schemas/page/insync_item" xmlns:nsWebProductDetails="urn:microsoft-dynamics-schemas/page/insync_webproductdetails" xmlns:navshipment="urn:microsoft-dynamics-schemas/page/insync_postedshipment" xmlns:navInvoice="urn:microsoft-dynamics-schemas/page/insync_postedinvoice" xmlns:navShipSync="urn:microsoft-dynamics-schemas/page/insync_shipmentinvoicesync" xmlns:navTierPrice="urn:microsoft-dynamics-schemas/page/insync_gettierprice" xmlns:navSpecialPrice="urn:microsoft-dynamics-schemas/page/insync_getspecialprice" xmlns:navcust="urn:microsoft-dynamics-schemas/page/insync_customer" xmlns:navcustadd="urn:microsoft-dynamics-schemas/page/insync_shiptoaddress" xmlns:navcustgroup="urn:microsoft-dynamics-schemas/page/insync_webcustomergroupmasterdata" xmlns:navwebsites="urn:microsoft-dynamics-schemas/page/insync_websitemasterdata" xmlns:navcustgender="urn:microsoft-dynamics-schemas/page/insync_webgendermasterdata" xmlns:navorder="urn:microsoft-dynamics-schemas/page/insync_salesorder" xmlns:navcontact="urn:microsoft-dynamics-schemas/page/insync_contact" xmlns:navbusCtcRel="urn:microsoft-dynamics-schemas/page/insync_business_relation_contacts" xmlns:navsalesrep="urn:microsoft-dynamics-schemas/page/insync_salesrep" xmlns:nsWebCustomerDetails="urn:microsoft-dynamics-schemas/page/webcustomerdetails" xmlns:nsNAVCustomer="urn:microsoft-dynamics-schemas/page/customercard" xmlns:nsNAVItem="urn:microsoft-dynamics-schemas/page/itemcard" xmlns:nsWebItemDetails="urn:microsoft-dynamics-schemas/page/webproductdetails" xmlns:nsWebItemDetailsList="urn:microsoft-dynamics-schemas/page/webproductdetailslist" xmlns:nsNAVOrder="urn:microsoft-dynamics-schemas/page/salesorder" xmlns:nsNAVaecutility="urn:microsoft-dynamics-schemas/codeunit/aecutility" xmlns:nsInvoiceLine="urn:microsoft-dynamics-schemas/page/webinvoiceline" xmlns:nsShipmentLine="urn:microsoft-dynamics-schemas/page/webshipmentline" xmlns:nsOrderLine="urn:microsoft-dynamics-schemas/page/weborderlinedetails" xmlns:nsShipmentInvoiceSync="urn:microsoft-dynamics-schemas/page/webshipmentinvoicesync" xmlns:nsNAVContact="urn:microsoft-dynamics-schemas/page/contactcard" xmlns:nsOrderHeader="urn:microsoft-dynamics-schemas/page/salesorder" xmlns:nsCountry="urn:microsoft-dynamics-schemas/page/countryregion" xmlns:nsAppCustomer="urn:microsoft-dynamics-schemas/page/webapplicationcustomerdata" xmlns:nsCategoryDetails="urn:microsoft-dynamics-schemas/page/webproductcategories" xmlns:nsAttributeDetails="urn:microsoft-dynamics-schemas/page/webproductattributes" xmlns:nsWebProdChilds="urn:microsoft-dynamics-schemas/page/webproductchilditem" xmlns:nsShipToAddress="urn:microsoft-dynamics-schemas/page/webshiptoaddressdeatils" xmlns:nsWebOrderHeader="urn:microsoft-dynamics-schemas/page/webapplicationorderdata" xmlns:nsNAVPostedShipment="urn:microsoft-dynamics-schemas/page/webpostedshipment" xmlns:nsNAVPostedInvoice="urn:microsoft-dynamics-schemas/page/webpostedinvoice" xmlns:nsNAVSalesPerson="urn:microsoft-dynamics-schemas/page/salesperson" xmlns:nsNAVSpecialPrice="urn:microsoft-dynamics-schemas/page/insync_getspecialprice" xmlns:nsNAVItemSalesLineDiscount="urn:microsoft-dynamics-schemas/page/sales_line_discounts" xmlns:platformCore="urn:core_2016_2.platform.webservices.netsuite.com" xmlns:listAcct="urn:accounting_2016_2.lists.webservices.netsuite.com" xmlns:nsNAVPaymentTerms="urn:microsoft-dynamics-schemas/page/paymentterms" xmlns:nsWebItemWebSiteDetails="urn:microsoft-dynamics-schemas/page/webproductwebsites" xmlns:sourcelib="lib:SourceAppResource" xmlns:destinationlib="lib:DestinationAppResource" xmlns:genericlib="lib:genericAppResource" xmlns:cloudResourcelib="lib:cloudAppResource" xmlns:cloudsourcelib="lib:sourceAppResource" xmlns:clouddestinationlib="lib:destinationAppResource" exclude-result-prefixes="xsl cloudsourcelib clouddestinationlib msxsl dis env cloudResourcelib sourcelib destinationlib genericlib nsItem navorder nsWebProductDetails navshipment navInvoice navShipSync navTierPrice navSpecialPrice navcust                  navcustadd navcustgroup navwebsites navcustgender navcontact navbusCtcRel navsalesrep nsNAVSpecialPrice nsNAVItemSalesLineDiscount nsNAVPostedInvoice nsNAVSalesPerson nsAppCustomer nsCategoryDetails nsNAVPostedShipment nsAttributeDetails nsWebProdChilds nsShipToAddress platformCore listAcct nsNAVPaymentTerms nsWebItemWebSiteDetails nsWebItemDetailsList">
	<xsl:output method="xml" version="1.0" encoding="utf-8" omit-xml-declaration="no" indent="yes" />
	<xsl:template match="/">
		<Envelops>
			<xsl:for-each select="//E1EDP07">
				<xsl:variable name="quote">'</xsl:variable>
				<xsl:variable name="carriers" select="sourcelib:retrieveFromSAP(concat('&lt;RFC_READ_TABLE&gt;&lt;QUERY_TABLE&gt;ZCSSHPMANI&lt;/QUERY_TABLE&gt;&lt;DELIMITER&gt;*&lt;/DELIMITER&gt;&lt;ROWSKIPS&gt;0&lt;/ROWSKIPS&gt;&lt;ROWCOUNT&gt;0&lt;/ROWCOUNT&gt;&lt;TABLE&gt;&lt;OPTIONS&gt;&lt;ROW&gt;&lt;TEXT&gt;DELIVERY_DOC EQ ',$quote,VBELN,$quote,'&lt;/TEXT&gt;&lt;/ROW&gt;&lt;/OPTIONS&gt;&lt;/TABLE&gt;&lt;TABLE&gt;&lt;FIELDS&gt;&lt;ROW&gt;&lt;FIELDNAME&gt;TRACKING_NUMBER&lt;/FIELDNAME&gt;&lt;OFFSET&gt;000000&lt;/OFFSET&gt;&lt;LENGTH&gt;000000&lt;/LENGTH&gt;&lt;/ROW&gt;&lt;ROW&gt;&lt;FIELDNAME&gt;CARRIERTYPE&lt;/FIELDNAME&gt;&lt;OFFSET&gt;000000&lt;/OFFSET&gt;&lt;LENGTH&gt;000000&lt;/LENGTH&gt;&lt;/ROW&gt;&lt;/FIELDS&gt;&lt;/TABLE&gt;&lt;/RFC_READ_TABLE&gt;'))" />
				<xsl:variable name="orderid">
					<xsl:value-of select="sourcelib:retrieveDatabaseEntry('order','entity_id',concat('SALESDOCUMENT~',VGBEL))" disable-output-escaping="no" />
				</xsl:variable>
				<xsl:variable name="orderdetails" select="destinationlib:GetMagentoDetails(concat('orders/',$orderid))" />
				<xsl:variable name="traceConflictBucket" select="genericlib:TraceConflictBucket(BSTNK)" />
				<Shipment>
					<xsl:for-each select="E1EDP09">
						<xsl:variable name="material">
							<xsl:value-of select="MATNR" disable-output-escaping="no" />
						</xsl:variable>
						<items>
							<order_item_id>
								<xsl:value-of select="$orderdetails//items/item[sku=$material]/item_id" disable-output-escaping="no" />
							</order_item_id>
							<qty>
								<xsl:value-of select="LFIMG" disable-output-escaping="no" />
							</qty>
						</items>
					</xsl:for-each>
					<xsl:for-each select="$carriers//DATA_CSTM/item">
						<tracks>
							<track_number>
								<xsl:value-of select="column0" disable-output-escaping="no" />
							</track_number>
							<title>
								<xsl:value-of select="sourcelib:GetMapping('ShipCost',column1)" disable-output-escaping="no" />
							</title>
							<carrier_code>
								<xsl:value-of select="column1" disable-output-escaping="no" />
							</carrier_code>
						</tracks>
						<tracks/>
					</xsl:for-each>
					<UploadURL>shipments/createShipment</UploadURL>
					<SourceKey>
						<xsl:value-of select="concat('DB:orderShip;SK:SAPShipment~',VBELN,';DK:WebId;ST:Shipment;DT:item')" disable-output-escaping="no" />
					</SourceKey>
					<order_id>
						<xsl:value-of select="$orderid" disable-output-escaping="no" />
					</order_id>
					<items/>
				</Shipment>
			</xsl:for-each>
		</Envelops>
	</xsl:template>
</xsl:stylesheet>