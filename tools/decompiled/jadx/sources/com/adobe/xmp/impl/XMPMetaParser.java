package com.adobe.xmp.impl;

import com.adobe.xmp.XMPConst;
import com.adobe.xmp.XMPException;
import com.adobe.xmp.XMPMeta;
import com.adobe.xmp.options.ParseOptions;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.ProcessingInstruction;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes2.dex */
public class XMPMetaParser {
    private static final Object XMP_RDF = new Object();
    private static DocumentBuilderFactory factory = createDocumentBuilderFactory();

    private XMPMetaParser() {
    }

    public static XMPMeta parse(Object obj, ParseOptions parseOptions) throws XMPException {
        ParameterAsserts.assertNotNull(obj);
        if (parseOptions == null) {
            parseOptions = new ParseOptions();
        }
        Object[] objArrFindRootNode = findRootNode(parseXml(obj, parseOptions), parseOptions.getRequireXMPMeta(), new Object[3]);
        if (objArrFindRootNode != null && objArrFindRootNode[1] == XMP_RDF) {
            XMPMetaImpl xMPMetaImpl = ParseRDF.parse((Node) objArrFindRootNode[0]);
            xMPMetaImpl.setPacketHeader((String) objArrFindRootNode[2]);
            return !parseOptions.getOmitNormalization() ? XMPNormalizer.process(xMPMetaImpl, parseOptions) : xMPMetaImpl;
        }
        return new XMPMetaImpl();
    }

    private static Document parseXml(Object obj, ParseOptions parseOptions) throws XMPException {
        if (obj instanceof InputStream) {
            return parseXmlFromInputStream((InputStream) obj, parseOptions);
        }
        if (obj instanceof byte[]) {
            return parseXmlFromBytebuffer(new ByteBuffer((byte[]) obj), parseOptions);
        }
        return parseXmlFromString((String) obj, parseOptions);
    }

    private static Document parseXmlFromInputStream(InputStream inputStream, ParseOptions parseOptions) throws XMPException {
        if (!parseOptions.getAcceptLatin1() && !parseOptions.getFixControlChars()) {
            return parseInputSource(new InputSource(inputStream));
        }
        try {
            return parseXmlFromBytebuffer(new ByteBuffer(inputStream), parseOptions);
        } catch (IOException e2) {
            throw new XMPException("Error reading the XML-file", 204, e2);
        }
    }

    private static Document parseXmlFromBytebuffer(ByteBuffer byteBuffer, ParseOptions parseOptions) throws XMPException {
        try {
            return parseInputSource(new InputSource(byteBuffer.getByteStream()));
        } catch (XMPException e2) {
            if (e2.getErrorCode() == 201 || e2.getErrorCode() == 204) {
                if (parseOptions.getAcceptLatin1()) {
                    byteBuffer = Latin1Converter.convert(byteBuffer);
                }
                if (parseOptions.getFixControlChars()) {
                    try {
                        return parseInputSource(new InputSource(new FixASCIIControlsReader(new InputStreamReader(byteBuffer.getByteStream(), byteBuffer.getEncoding()))));
                    } catch (UnsupportedEncodingException e3) {
                        throw new XMPException("Unsupported Encoding", 9, e2);
                    }
                }
                return parseInputSource(new InputSource(byteBuffer.getByteStream()));
            }
            throw e2;
        }
    }

    private static Document parseXmlFromString(String str, ParseOptions parseOptions) throws XMPException {
        try {
            return parseInputSource(new InputSource(new StringReader(str)));
        } catch (XMPException e2) {
            if (e2.getErrorCode() == 201 && parseOptions.getFixControlChars()) {
                return parseInputSource(new InputSource(new FixASCIIControlsReader(new StringReader(str))));
            }
            throw e2;
        }
    }

    private static Document parseInputSource(InputSource inputSource) throws XMPException {
        try {
            DocumentBuilder documentBuilderNewDocumentBuilder = factory.newDocumentBuilder();
            documentBuilderNewDocumentBuilder.setErrorHandler(null);
            return documentBuilderNewDocumentBuilder.parse(inputSource);
        } catch (IOException e2) {
            throw new XMPException("Error reading the XML-file", 204, e2);
        } catch (ParserConfigurationException e3) {
            throw new XMPException("XML Parser not correctly configured", 0, e3);
        } catch (SAXException e4) {
            throw new XMPException("XML parsing failure", 201, e4);
        }
    }

    private static Object[] findRootNode(Node node, boolean z, Object[] objArr) {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node nodeItem = childNodes.item(i);
            if (7 == nodeItem.getNodeType() && XMPConst.XMP_PI.equals(((ProcessingInstruction) nodeItem).getTarget())) {
                if (objArr != null) {
                    objArr[2] = ((ProcessingInstruction) nodeItem).getData();
                }
            } else if (3 != nodeItem.getNodeType() && 7 != nodeItem.getNodeType()) {
                String namespaceURI = nodeItem.getNamespaceURI();
                String localName = nodeItem.getLocalName();
                if ((XMPConst.TAG_XMPMETA.equals(localName) || XMPConst.TAG_XAPMETA.equals(localName)) && XMPConst.NS_X.equals(namespaceURI)) {
                    return findRootNode(nodeItem, false, objArr);
                }
                if (!z && "RDF".equals(localName) && XMPConst.NS_RDF.equals(namespaceURI)) {
                    if (objArr == null) {
                        return objArr;
                    }
                    objArr[0] = nodeItem;
                    objArr[1] = XMP_RDF;
                    return objArr;
                }
                Object[] objArrFindRootNode = findRootNode(nodeItem, z, objArr);
                if (objArrFindRootNode != null) {
                    return objArrFindRootNode;
                }
            }
        }
        return null;
    }

    private static DocumentBuilderFactory createDocumentBuilderFactory() {
        DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
        documentBuilderFactoryNewInstance.setNamespaceAware(true);
        documentBuilderFactoryNewInstance.setIgnoringComments(true);
        try {
            documentBuilderFactoryNewInstance.setFeature("http://javax.xml.XMLConstants/feature/secure-processing", true);
        } catch (Exception e2) {
        }
        return documentBuilderFactoryNewInstance;
    }
}
