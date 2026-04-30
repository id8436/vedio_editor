.class public Lorg/mortbay/jetty/webapp/WebXmlConfiguration;
.super Ljava/lang/Object;
.source "WebXmlConfiguration.java"

# interfaces
.implements Lorg/mortbay/jetty/webapp/Configuration;


# static fields
.field static class$java$lang$String:Ljava/lang/Class;

.field static class$java$util$EventListener:Ljava/lang/Class;

.field static class$org$mortbay$jetty$security$ConstraintMapping:Ljava/lang/Class;

.field static class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

.field static class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

.field static class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

.field static class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

.field static class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;


# instance fields
.field protected _constraintMappings:Ljava/lang/Object;

.field protected _context:Lorg/mortbay/jetty/webapp/WebAppContext;

.field protected _defaultWelcomeFileList:Z

.field protected _errorPages:Ljava/util/Map;

.field protected _filterMappings:Ljava/lang/Object;

.field protected _filters:Ljava/lang/Object;

.field protected _hasJSP:Z

.field protected _jspServletClass:Ljava/lang/String;

.field protected _jspServletName:Ljava/lang/String;

.field protected _listeners:Ljava/lang/Object;

.field protected _servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

.field protected _servletMappings:Ljava/lang/Object;

.field protected _servlets:Ljava/lang/Object;

.field protected _version:I

.field protected _welcomeFiles:Ljava/lang/Object;

.field protected _xmlParser:Lorg/mortbay/xml/XmlParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->webXmlParser()Lorg/mortbay/xml/XmlParser;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_xmlParser:Lorg/mortbay/xml/XmlParser;

    .line 79
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 85
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public static webXmlParser()Lorg/mortbay/xml/XmlParser;
    .locals 14

    .prologue
    .line 83
    new-instance v1, Lorg/mortbay/xml/XmlParser;

    invoke-direct {v1}, Lorg/mortbay/xml/XmlParser;-><init>()V

    .line 85
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_0
    const-string/jumbo v2, "/javax/servlet/resources/web-app_2_2.dtd"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 86
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_1
    const-string/jumbo v3, "/javax/servlet/resources/web-app_2_3.dtd"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 87
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string/jumbo v0, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_2
    const-string/jumbo v4, "/javax/servlet/resources/jsp_2_0.xsd"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 88
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string/jumbo v0, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_3
    const-string/jumbo v5, "/javax/servlet/resources/jsp_2_1.xsd"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    .line 89
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string/jumbo v0, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_4
    const-string/jumbo v6, "/javax/servlet/resources/j2ee_1_4.xsd"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    .line 90
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string/jumbo v0, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_5
    const-string/jumbo v7, "/javax/servlet/resources/web-app_2_4.xsd"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    .line 91
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string/jumbo v0, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_6
    const-string/jumbo v8, "/javax/servlet/resources/web-app_2_5.xsd"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v8

    .line 92
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string/jumbo v0, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_7
    const-string/jumbo v9, "/javax/servlet/resources/XMLSchema.dtd"

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    .line 93
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v0, :cond_8

    const-string/jumbo v0, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_8
    const-string/jumbo v10, "/javax/servlet/resources/xml.xsd"

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v10

    .line 94
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v0, :cond_9

    const-string/jumbo v0, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_9
    const-string/jumbo v11, "/javax/servlet/resources/j2ee_web_services_client_1_1.xsd"

    invoke-virtual {v0, v11}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v11

    .line 95
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v0, :cond_a

    const-string/jumbo v0, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_a
    const-string/jumbo v12, "/javax/servlet/resources/javaee_web_services_client_1_2.xsd"

    invoke-virtual {v0, v12}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v12

    .line 96
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v0, :cond_b

    const-string/jumbo v0, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_b
    const-string/jumbo v13, "/javax/servlet/resources/datatypes.dtd"

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 97
    const-string/jumbo v13, "web-app_2_2.dtd"

    invoke-virtual {v1, v13, v2}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 98
    const-string/jumbo v13, "-//Sun Microsystems, Inc.//DTD Web Application 2.2//EN"

    invoke-virtual {v1, v13, v2}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 99
    const-string/jumbo v2, "web.dtd"

    invoke-virtual {v1, v2, v3}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 100
    const-string/jumbo v2, "web-app_2_3.dtd"

    invoke-virtual {v1, v2, v3}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 101
    const-string/jumbo v2, "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN"

    invoke-virtual {v1, v2, v3}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 102
    const-string/jumbo v2, "XMLSchema.dtd"

    invoke-virtual {v1, v2, v9}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 103
    const-string/jumbo v2, "http://www.w3.org/2001/XMLSchema.dtd"

    invoke-virtual {v1, v2, v9}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 104
    const-string/jumbo v2, "-//W3C//DTD XMLSCHEMA 200102//EN"

    invoke-virtual {v1, v2, v9}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 105
    const-string/jumbo v2, "jsp_2_0.xsd"

    invoke-virtual {v1, v2, v4}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 106
    const-string/jumbo v2, "http://java.sun.com/xml/ns/j2ee/jsp_2_0.xsd"

    invoke-virtual {v1, v2, v4}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 107
    const-string/jumbo v2, "jsp_2_1.xsd"

    invoke-virtual {v1, v2, v5}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 108
    const-string/jumbo v2, "http://java.sun.com/xml/ns/javaee/jsp_2_1.xsd"

    invoke-virtual {v1, v2, v5}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 109
    const-string/jumbo v2, "j2ee_1_4.xsd"

    invoke-virtual {v1, v2, v6}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 110
    const-string/jumbo v2, "http://java.sun.com/xml/ns/j2ee/j2ee_1_4.xsd"

    invoke-virtual {v1, v2, v6}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 111
    const-string/jumbo v2, "web-app_2_4.xsd"

    invoke-virtual {v1, v2, v7}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 112
    const-string/jumbo v2, "http://java.sun.com/xml/ns/j2ee/web-app_2_4.xsd"

    invoke-virtual {v1, v2, v7}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 113
    const-string/jumbo v2, "web-app_2_5.xsd"

    invoke-virtual {v1, v2, v8}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 114
    const-string/jumbo v2, "http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd"

    invoke-virtual {v1, v2, v8}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 115
    const-string/jumbo v2, "xml.xsd"

    invoke-virtual {v1, v2, v10}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 116
    const-string/jumbo v2, "http://www.w3.org/2001/xml.xsd"

    invoke-virtual {v1, v2, v10}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 117
    const-string/jumbo v2, "datatypes.dtd"

    invoke-virtual {v1, v2, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 118
    const-string/jumbo v2, "http://www.w3.org/2001/datatypes.dtd"

    invoke-virtual {v1, v2, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 119
    const-string/jumbo v0, "j2ee_web_services_client_1_1.xsd"

    invoke-virtual {v1, v0, v11}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 120
    const-string/jumbo v0, "http://www.ibm.com/webservices/xsd/j2ee_web_services_client_1_1.xsd"

    invoke-virtual {v1, v0, v11}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 121
    const-string/jumbo v0, "javaee_web_services_client_1_2.xsd"

    invoke-virtual {v1, v0, v12}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 122
    const-string/jumbo v0, "http://www.ibm.com/webservices/xsd/javaee_web_services_client_1_2.xsd"

    invoke-virtual {v1, v0, v12}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 124
    return-object v1

    .line 85
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_0

    .line 86
    :cond_1
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_1

    .line 87
    :cond_2
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_2

    .line 88
    :cond_3
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_3

    .line 89
    :cond_4
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_4

    .line 90
    :cond_5
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_5

    .line 91
    :cond_6
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_6

    .line 92
    :cond_7
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_7

    .line 93
    :cond_8
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_8

    .line 94
    :cond_9
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_9

    .line 95
    :cond_a
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_a

    .line 96
    :cond_b
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_b
.end method


# virtual methods
.method public configure(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 220
    .line 221
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_xmlParser:Lorg/mortbay/xml/XmlParser;

    invoke-virtual {v0, p1}, Lorg/mortbay/xml/XmlParser;->parse(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    .line 222
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initialize(Lorg/mortbay/xml/XmlParser$Node;)V

    .line 223
    return-void
.end method

.method public configureClassLoader()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 145
    return-void
.end method

.method public configureDefaults()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Cannot configure webapp after it is started"

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getDefaultsDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 157
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 159
    invoke-static {v1}, Lorg/mortbay/resource/Resource;->newSystemResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 160
    if-nez v0, :cond_2

    .line 161
    invoke-static {v1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 162
    :cond_2
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->configure(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_welcomeFiles:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_defaultWelcomeFileList:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public configureWebApp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string/jumbo v0, "Cannot configure webapp after it is started"

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->findWebXml()Ljava/net/URL;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->configure(Ljava/lang/String;)V

    .line 182
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getOverrideDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 185
    invoke-static {v1}, Lorg/mortbay/resource/Resource;->newSystemResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 186
    if-nez v0, :cond_3

    .line 187
    invoke-static {v1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 188
    :cond_3
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_xmlParser:Lorg/mortbay/xml/XmlParser;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/mortbay/xml/XmlParser;->setValidating(Z)V

    .line 189
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->configure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deconfigureWebApp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 230
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    .line 232
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V

    .line 233
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/mortbay/jetty/servlet/FilterMapping;)V

    .line 234
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServlets([Lorg/mortbay/jetty/servlet/ServletHolder;)V

    .line 235
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServletMappings([Lorg/mortbay/jetty/servlet/ServletMapping;)V

    .line 237
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setEventListeners([Ljava/util/EventListener;)V

    .line 238
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setWelcomeFiles([Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/security/SecurityHandler;->setConstraintMappings([Lorg/mortbay/jetty/security/ConstraintMapping;)V

    .line 242
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->setErrorPages(Ljava/util/Map;)V

    .line 246
    :cond_1
    return-void
.end method

.method protected findWebXml()Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    .line 199
    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWebInf()Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    const-string/jumbo v1, "web.xml"

    invoke-virtual {v0, v1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "No WEB-INF/web.xml in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ". Serving files and default/dynamic servlets only"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 214
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getJSPServletName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 934
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_jspServletName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 936
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object v0

    const-string/jumbo v1, "test.jsp"

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object v0

    .line 937
    if-eqz v0, :cond_0

    .line 939
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/ServletHolder;

    .line 940
    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_jspServletName:Ljava/lang/String;

    .line 943
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_jspServletName:Ljava/lang/String;

    return-object v0
.end method

.method public getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    return-object v0
.end method

.method protected initContextParam(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 390
    const-string/jumbo v0, "param-name"

    invoke-virtual {p1, v0, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 391
    const-string/jumbo v1, "param-value"

    invoke-virtual {p1, v1, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "ContextParam: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 394
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->getInitParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    return-void
.end method

.method protected initDisplayName(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 3

    .prologue
    .line 384
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setDisplayName(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method protected initDistributable(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 2

    .prologue
    .line 658
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->isDistributable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 660
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setDistributable(Z)V

    .line 661
    :cond_0
    return-void
.end method

.method protected initErrorPage(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 716
    const-string/jumbo v0, "error-code"

    invoke-virtual {p1, v0, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 717
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 718
    :cond_0
    const-string/jumbo v0, "exception-type"

    invoke-virtual {p1, v0, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 719
    :cond_1
    const-string/jumbo v1, "location"

    invoke-virtual {p1, v1, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 721
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_errorPages:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 722
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_errorPages:Ljava/util/Map;

    .line 723
    :cond_2
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_errorPages:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    return-void
.end method

.method protected initFilter(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 400
    const-string/jumbo v0, "filter-name"

    invoke-virtual {p1, v0, v5, v6}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 401
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilter(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 402
    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->newFilterHolder()Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 405
    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filters:Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filters:Ljava/lang/Object;

    :cond_0
    move-object v1, v0

    .line 409
    const-string/jumbo v0, "filter-class"

    invoke-virtual {p1, v0, v5, v6}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 413
    :cond_1
    const-string/jumbo v0, "init-param"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v2

    .line 414
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    .line 417
    const-string/jumbo v3, "param-name"

    invoke-virtual {v0, v3, v5, v6}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 418
    const-string/jumbo v4, "param-value"

    invoke-virtual {v0, v4, v5, v6}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-virtual {v1, v3, v0}, Lorg/mortbay/jetty/servlet/FilterHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :cond_2
    return-void
.end method

.method protected initFilterMapping(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 427
    const-string/jumbo v0, "filter-name"

    invoke-virtual {p1, v0, v2, v5}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 431
    new-instance v3, Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-direct {v3}, Lorg/mortbay/jetty/servlet/FilterMapping;-><init>()V

    .line 433
    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/servlet/FilterMapping;->setFilterName(Ljava/lang/String;)V

    .line 435
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 436
    const-string/jumbo v0, "url-pattern"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v4

    .line 437
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v0, v2, v5}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/servlet/FilterMapping;->setPathSpecs([Ljava/lang/String;)V

    .line 446
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 447
    const-string/jumbo v0, "servlet-name"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v4

    .line 448
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v0, v2, v5}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 453
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/servlet/FilterMapping;->setServletNames([Ljava/lang/String;)V

    .line 457
    const-string/jumbo v0, "dispatcher"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    .line 458
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v0, v2, v5}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-static {v0}, Lorg/mortbay/jetty/servlet/Dispatcher;->type(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    .line 462
    goto :goto_2

    .line 463
    :cond_2
    invoke-virtual {v3, v1}, Lorg/mortbay/jetty/servlet/FilterMapping;->setDispatches(I)V

    .line 465
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filterMappings:Ljava/lang/Object;

    invoke-static {v0, v3}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filterMappings:Ljava/lang/Object;

    .line 466
    return-void
.end method

.method protected initJspConfig(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 738
    move v2, v3

    :goto_0
    invoke-virtual {p1}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 740
    invoke-virtual {p1, v2}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 741
    instance-of v0, v1, Lorg/mortbay/xml/XmlParser$Node;

    if-eqz v0, :cond_0

    const-string/jumbo v4, "taglib"

    move-object v0, v1

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v0}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    check-cast v1, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initTagLib(Lorg/mortbay/xml/XmlParser$Node;)V

    .line 738
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 747
    :cond_1
    const-string/jumbo v0, "jsp-property-group"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v2

    .line 748
    const/4 v1, 0x0

    .line 749
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 751
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    .line 752
    const-string/jumbo v4, "url-pattern"

    invoke-virtual {v0, v4}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v4

    .line 753
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 755
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 756
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    invoke-static {v1, v0}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 758
    goto :goto_1

    .line 761
    :cond_3
    invoke-static {v1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_4

    .line 763
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getJSPServletName()Ljava/lang/String;

    move-result-object v0

    .line 764
    if-eqz v0, :cond_4

    .line 766
    new-instance v2, Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-direct {v2}, Lorg/mortbay/jetty/servlet/ServletMapping;-><init>()V

    .line 767
    invoke-virtual {v2, v0}, Lorg/mortbay/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 768
    invoke-static {v1}, Lorg/mortbay/util/LazyList;->toStringArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/mortbay/jetty/servlet/ServletMapping;->setPathSpecs([Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletMappings:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletMappings:Ljava/lang/Object;

    .line 772
    :cond_4
    return-void
.end method

.method protected initListener(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 4

    .prologue
    .line 626
    const-string/jumbo v0, "listener-class"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 630
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 631
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->newListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 632
    instance-of v2, v0, Ljava/util/EventListener;

    if-nez v2, :cond_0

    .line 634
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Not an EventListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 644
    :goto_0
    return-void

    .line 637
    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_listeners:Ljava/lang/Object;

    invoke-static {v2, v0}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_listeners:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 639
    :catch_0
    move-exception v0

    .line 641
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Could not instantiate listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected initLocaleEncodingList(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 703
    const-string/jumbo v0, "locale-encoding-mapping"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    .line 704
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    .line 707
    const-string/jumbo v2, "locale"

    invoke-virtual {v0, v2, v4, v5}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 708
    const-string/jumbo v3, "encoding"

    invoke-virtual {v0, v3, v4, v5}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 709
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->addLocaleEncoding(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 711
    :cond_0
    return-void
.end method

.method protected initLoginConfig(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 862
    const-string/jumbo v0, "auth-method"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    .line 864
    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {v0, v4, v7}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 868
    const-string/jumbo v2, "FORM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 869
    new-instance v0, Lorg/mortbay/jetty/security/FormAuthenticator;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/FormAuthenticator;-><init>()V

    move-object v1, v0

    .line 880
    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/mortbay/jetty/security/SecurityHandler;->setAuthenticator(Lorg/mortbay/jetty/security/Authenticator;)V

    .line 882
    :cond_0
    const-string/jumbo v0, "realm-name"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    .line 884
    invoke-static {}, Lorg/mortbay/jetty/handler/ContextHandler;->getCurrentContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/handler/ContextHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/Server;->getUserRealms()[Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v5

    .line 886
    if-nez v0, :cond_7

    const-string/jumbo v0, "default"

    .line 888
    :goto_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/security/SecurityHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v2

    move v3, v4

    .line 889
    :goto_2
    if-nez v2, :cond_8

    if-eqz v5, :cond_8

    array-length v6, v5

    if-ge v3, v6, :cond_8

    .line 891
    aget-object v6, v5, v3

    if-eqz v6, :cond_1

    aget-object v6, v5, v3

    invoke-interface {v6}, Lorg/mortbay/jetty/security/UserRealm;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 892
    aget-object v2, v5, v3

    .line 889
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 870
    :cond_2
    const-string/jumbo v2, "BASIC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 871
    new-instance v0, Lorg/mortbay/jetty/security/BasicAuthenticator;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/BasicAuthenticator;-><init>()V

    goto :goto_0

    .line 872
    :cond_3
    const-string/jumbo v2, "DIGEST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 873
    new-instance v0, Lorg/mortbay/jetty/security/DigestAuthenticator;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/DigestAuthenticator;-><init>()V

    goto :goto_0

    .line 874
    :cond_4
    const-string/jumbo v2, "CLIENT_CERT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 875
    new-instance v0, Lorg/mortbay/jetty/security/ClientCertAuthenticator;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/ClientCertAuthenticator;-><init>()V

    goto :goto_0

    .line 876
    :cond_5
    const-string/jumbo v2, "CLIENT-CERT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 877
    new-instance v0, Lorg/mortbay/jetty/security/ClientCertAuthenticator;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/ClientCertAuthenticator;-><init>()V

    goto/16 :goto_0

    .line 879
    :cond_6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "UNKNOWN AUTH METHOD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 886
    :cond_7
    invoke-virtual {v0, v4, v7}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 895
    :cond_8
    if-nez v2, :cond_a

    .line 897
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Unknown realm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 898
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 904
    :goto_3
    const-string/jumbo v0, "form-login-config"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    .line 905
    if-eqz v0, :cond_9

    .line 907
    if-nez v1, :cond_b

    .line 908
    const-string/jumbo v0, "FORM Authentication miss-configured"

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 922
    :cond_9
    :goto_4
    return-void

    .line 901
    :cond_a
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/security/SecurityHandler;->setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V

    goto :goto_3

    .line 911
    :cond_b
    const-string/jumbo v2, "form-login-page"

    invoke-virtual {v0, v2}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v2

    .line 912
    if-eqz v2, :cond_c

    .line 913
    invoke-virtual {v2, v4, v7}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mortbay/jetty/security/FormAuthenticator;->setLoginPage(Ljava/lang/String;)V

    .line 914
    :cond_c
    const-string/jumbo v2, "form-error-page"

    invoke-virtual {v0, v2}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    .line 915
    if-eqz v0, :cond_9

    .line 917
    invoke-virtual {v0, v4, v7}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 918
    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/security/FormAuthenticator;->setErrorPage(Ljava/lang/String;)V

    goto :goto_4
.end method

.method protected initMimeConfig(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 677
    const-string/jumbo v0, "extension"

    invoke-virtual {p1, v0, v3, v2}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 678
    if-eqz v0, :cond_0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 680
    :cond_0
    const-string/jumbo v1, "mime-type"

    invoke-virtual {p1, v1, v3, v2}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 681
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->getMimeTypes()Lorg/mortbay/jetty/MimeTypes;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/mortbay/jetty/MimeTypes;->addMimeMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method protected initSecurityConstraint(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 10

    .prologue
    .line 777
    new-instance v3, Lorg/mortbay/jetty/security/Constraint;

    invoke-direct {v3}, Lorg/mortbay/jetty/security/Constraint;-><init>()V

    .line 781
    :try_start_0
    const-string/jumbo v0, "auth-constraint"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    .line 783
    if-eqz v0, :cond_1

    .line 785
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lorg/mortbay/jetty/security/Constraint;->setAuthenticate(Z)V

    .line 787
    const-string/jumbo v1, "role-name"

    invoke-virtual {v0, v1}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v2

    .line 788
    const/4 v0, 0x0

    move-object v1, v0

    .line 789
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 792
    invoke-static {v1, v0}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 793
    goto :goto_0

    .line 794
    :cond_0
    invoke-static {v1}, Lorg/mortbay/util/LazyList;->toStringArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/security/Constraint;->setRoles([Ljava/lang/String;)V

    .line 797
    :cond_1
    const-string/jumbo v0, "user-data-constraint"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    .line 798
    if-eqz v0, :cond_3

    .line 800
    const-string/jumbo v1, "transport-guarantee"

    invoke-virtual {v0, v1}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    .line 801
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 802
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "NONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 803
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/security/Constraint;->setDataConstraint(I)V

    .line 814
    :cond_3
    :goto_1
    const-string/jumbo v0, "web-resource-collection"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v4

    .line 815
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 817
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    .line 818
    const-string/jumbo v1, "web-resource-name"

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v2, v5}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 819
    invoke-virtual {v3}, Lorg/mortbay/jetty/security/Constraint;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/security/Constraint;

    .line 820
    invoke-virtual {v1, v2}, Lorg/mortbay/jetty/security/Constraint;->setName(Ljava/lang/String;)V

    .line 823
    const-string/jumbo v2, "url-pattern"

    invoke-virtual {v0, v2}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v5

    .line 824
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 826
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mortbay/xml/XmlParser$Node;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v2

    .line 827
    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 829
    const-string/jumbo v2, "http-method"

    invoke-virtual {v0, v2}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v7

    .line 830
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 832
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 834
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mortbay/xml/XmlParser$Node;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v2

    .line 835
    new-instance v8, Lorg/mortbay/jetty/security/ConstraintMapping;

    invoke-direct {v8}, Lorg/mortbay/jetty/security/ConstraintMapping;-><init>()V

    .line 836
    invoke-virtual {v8, v2}, Lorg/mortbay/jetty/security/ConstraintMapping;->setMethod(Ljava/lang/String;)V

    .line 837
    invoke-virtual {v8, v6}, Lorg/mortbay/jetty/security/ConstraintMapping;->setPathSpec(Ljava/lang/String;)V

    .line 838
    invoke-virtual {v8, v1}, Lorg/mortbay/jetty/security/ConstraintMapping;->setConstraint(Lorg/mortbay/jetty/security/Constraint;)V

    .line 839
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_constraintMappings:Ljava/lang/Object;

    invoke-static {v2, v8}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_constraintMappings:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 852
    :catch_0
    move-exception v0

    .line 854
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    .line 857
    :cond_6
    return-void

    .line 804
    :cond_7
    :try_start_1
    const-string/jumbo v1, "INTEGRAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 805
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/security/Constraint;->setDataConstraint(I)V

    goto/16 :goto_1

    .line 806
    :cond_8
    const-string/jumbo v1, "CONFIDENTIAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 807
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/security/Constraint;->setDataConstraint(I)V

    goto/16 :goto_1

    .line 810
    :cond_9
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Unknown user-data-constraint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 811
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/security/Constraint;->setDataConstraint(I)V

    goto/16 :goto_1

    .line 844
    :cond_a
    new-instance v2, Lorg/mortbay/jetty/security/ConstraintMapping;

    invoke-direct {v2}, Lorg/mortbay/jetty/security/ConstraintMapping;-><init>()V

    .line 845
    invoke-virtual {v2, v6}, Lorg/mortbay/jetty/security/ConstraintMapping;->setPathSpec(Ljava/lang/String;)V

    .line 846
    invoke-virtual {v2, v1}, Lorg/mortbay/jetty/security/ConstraintMapping;->setConstraint(Lorg/mortbay/jetty/security/Constraint;)V

    .line 847
    iget-object v6, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_constraintMappings:Ljava/lang/Object;

    invoke-static {v6, v2}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_constraintMappings:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method protected initSecurityRole(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 0

    .prologue
    .line 926
    return-void
.end method

.method protected initServlet(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 479
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 482
    const-string/jumbo v0, "servlet-name"

    invoke-virtual {p1, v0, v2, v8}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    .line 483
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v4}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 484
    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->newServletHolder()Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 487
    invoke-virtual {v0, v4}, Lorg/mortbay/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servlets:Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servlets:Ljava/lang/Object;

    :cond_0
    move-object v1, v0

    .line 492
    const-string/jumbo v0, "init-param"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v5

    .line 493
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    .line 496
    const-string/jumbo v6, "param-name"

    invoke-virtual {v0, v6, v2, v8}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    .line 497
    const-string/jumbo v7, "param-value"

    invoke-virtual {v0, v7, v2, v8}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-virtual {v1, v6, v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :cond_1
    const-string/jumbo v0, "servlet-class"

    invoke-virtual {p1, v0, v2, v8}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 504
    if-eqz v3, :cond_3

    const-string/jumbo v5, "jsp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 506
    iput-object v4, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_jspServletName:Ljava/lang/String;

    .line 507
    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_jspServletClass:Ljava/lang/String;

    .line 510
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    .line 511
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_hasJSP:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_1
    const-string/jumbo v3, "scratchdir"

    invoke-virtual {v1, v3}, Lorg/mortbay/jetty/servlet/ServletHolder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 521
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v3

    .line 522
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "jsp"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 523
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 524
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 525
    :cond_2
    const-string/jumbo v3, "scratchdir"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/mortbay/jetty/servlet/ServletHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string/jumbo v3, "?"

    const-string/jumbo v4, "classpath"

    invoke-virtual {v1, v4}, Lorg/mortbay/jetty/servlet/ServletHolder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 529
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/jetty/webapp/WebAppContext;->getClassPath()Ljava/lang/String;

    move-result-object v3

    .line 530
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "classpath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 531
    if-eqz v3, :cond_3

    .line 532
    const-string/jumbo v4, "classpath"

    invoke-virtual {v1, v4, v3}, Lorg/mortbay/jetty/servlet/ServletHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_3
    if-eqz v0, :cond_4

    .line 537
    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 541
    :cond_4
    const-string/jumbo v0, "jsp-file"

    invoke-virtual {p1, v0, v2, v8}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 542
    if-eqz v0, :cond_5

    .line 544
    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->setForcedPath(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_jspServletClass:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 549
    :cond_5
    const-string/jumbo v0, "load-on-startup"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    .line 550
    if-eqz v0, :cond_6

    .line 552
    invoke-virtual {v0, v2, v8}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 553
    const-string/jumbo v0, "t"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 555
    const-string/jumbo v0, "Deprecated boolean load-on-startup.  Please use integer"

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v1, v8}, Lorg/mortbay/jetty/servlet/ServletHolder;->setInitOrder(I)V

    .line 575
    :cond_6
    :goto_2
    const-string/jumbo v0, "security-role-ref"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v3

    .line 576
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 578
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    .line 579
    const-string/jumbo v4, "role-name"

    invoke-virtual {v0, v4, v2, v8}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    .line 580
    const-string/jumbo v5, "role-link"

    invoke-virtual {v0, v5, v2, v8}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    .line 581
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a

    .line 583
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 584
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "link role "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v6, " to "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v6, " for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 585
    :cond_7
    invoke-virtual {v1, v4, v5}, Lorg/mortbay/jetty/servlet/ServletHolder;->setUserRoleLink(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 513
    :catch_0
    move-exception v3

    .line 515
    const-string/jumbo v3, "NO JSP Support for {}, did not find {}"

    iget-object v4, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v4}, Lorg/mortbay/jetty/webapp/WebAppContext;->getContextPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 516
    iput-boolean v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_hasJSP:Z

    .line 517
    const-string/jumbo v0, "org.mortbay.servlet.NoJspServlet"

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_jspServletClass:Ljava/lang/String;

    goto/16 :goto_1

    .line 563
    :cond_8
    if-eqz v3, :cond_9

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 564
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 571
    :goto_4
    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->setInitOrder(I)V

    goto/16 :goto_2

    .line 566
    :catch_1
    move-exception v0

    .line 568
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "Cannot parse load-on-startup "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, ". Please use integer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 569
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_9
    move v0, v2

    goto :goto_4

    .line 589
    :cond_a
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "Ignored invalid security-role-ref element: servlet-name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 593
    :cond_b
    const-string/jumbo v0, "run-as"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    .line 594
    if-eqz v0, :cond_c

    .line 596
    const-string/jumbo v3, "role-name"

    invoke-virtual {v0, v3, v2, v8}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 597
    if-eqz v0, :cond_c

    .line 598
    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->setRunAs(Ljava/lang/String;)V

    .line 601
    :cond_c
    return-void
.end method

.method protected initServletMapping(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 606
    const-string/jumbo v0, "servlet-name"

    invoke-virtual {p1, v0, v4, v5}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 607
    new-instance v1, Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-direct {v1}, Lorg/mortbay/jetty/servlet/ServletMapping;-><init>()V

    .line 608
    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 610
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 611
    const-string/jumbo v0, "url-pattern"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v3

    .line 612
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v0, v4, v5}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 615
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 618
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/servlet/ServletMapping;->setPathSpecs([Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletMappings:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletMappings:Ljava/lang/Object;

    .line 621
    return-void
.end method

.method protected initSessionConfig(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 3

    .prologue
    .line 666
    const-string/jumbo v0, "session-timeout"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_0

    .line 669
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 670
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/mortbay/jetty/servlet/SessionHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/SessionHandler;->getSessionManager()Lorg/mortbay/jetty/SessionManager;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3c

    invoke-interface {v1, v0}, Lorg/mortbay/jetty/SessionManager;->setMaxInactiveInterval(I)V

    .line 672
    :cond_0
    return-void
.end method

.method protected initTagLib(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 729
    const-string/jumbo v0, "taglib-uri"

    invoke-virtual {p1, v0, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 730
    const-string/jumbo v1, "taglib-location"

    invoke-virtual {p1, v1, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 732
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setResourceAlias(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method protected initWebXmlElement(Ljava/lang/String;Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 328
    const-string/jumbo v0, "display-name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initDisplayName(Lorg/mortbay/xml/XmlParser$Node;)V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const-string/jumbo v0, "description"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    const-string/jumbo v0, "context-param"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initContextParam(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    .line 334
    :cond_2
    const-string/jumbo v0, "servlet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 335
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initServlet(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    .line 336
    :cond_3
    const-string/jumbo v0, "servlet-mapping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 337
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initServletMapping(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    .line 338
    :cond_4
    const-string/jumbo v0, "session-config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 339
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initSessionConfig(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    .line 340
    :cond_5
    const-string/jumbo v0, "mime-mapping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 341
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initMimeConfig(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    .line 342
    :cond_6
    const-string/jumbo v0, "welcome-file-list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 343
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initWelcomeFileList(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    .line 344
    :cond_7
    const-string/jumbo v0, "locale-encoding-mapping-list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 345
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initLocaleEncodingList(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    .line 346
    :cond_8
    const-string/jumbo v0, "error-page"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 347
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initErrorPage(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    .line 348
    :cond_9
    const-string/jumbo v0, "taglib"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 349
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initTagLib(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    .line 350
    :cond_a
    const-string/jumbo v0, "jsp-config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 351
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initJspConfig(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    .line 352
    :cond_b
    const-string/jumbo v0, "resource-ref"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 354
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "No implementation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 357
    :cond_c
    const-string/jumbo v0, "security-constraint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 358
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initSecurityConstraint(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    .line 359
    :cond_d
    const-string/jumbo v0, "login-config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 360
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initLoginConfig(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    .line 361
    :cond_e
    const-string/jumbo v0, "security-role"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 362
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initSecurityRole(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    .line 363
    :cond_f
    const-string/jumbo v0, "filter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 364
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initFilter(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    .line 365
    :cond_10
    const-string/jumbo v0, "filter-mapping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 366
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initFilterMapping(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    .line 367
    :cond_11
    const-string/jumbo v0, "listener"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 368
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initListener(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    .line 369
    :cond_12
    const-string/jumbo v0, "distributable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 370
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initDistributable(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    .line 373
    :cond_13
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const-string/jumbo v0, "Element {} not handled in {}"

    invoke-static {v0, p1, p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 376
    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected initWelcomeFileList(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 687
    iget-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_defaultWelcomeFileList:Z

    if-eqz v0, :cond_0

    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_welcomeFiles:Ljava/lang/Object;

    .line 690
    :cond_0
    iput-boolean v3, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_defaultWelcomeFileList:Z

    .line 691
    const-string/jumbo v0, "welcome-file"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    .line 692
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    .line 695
    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 696
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_welcomeFiles:Ljava/lang/Object;

    invoke-static {v2, v0}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_welcomeFiles:Ljava/lang/Object;

    goto :goto_0

    .line 698
    :cond_1
    return-void
.end method

.method protected initialize(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljavax/servlet/UnavailableException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 251
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    .line 253
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilters()[Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filters:Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/mortbay/jetty/servlet/FilterMapping;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filterMappings:Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servlets:Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/mortbay/jetty/servlet/ServletMapping;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletMappings:Ljava/lang/Object;

    .line 258
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getEventListeners()[Ljava/util/EventListener;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_listeners:Ljava/lang/Object;

    .line 259
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWelcomeFiles()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_welcomeFiles:Ljava/lang/Object;

    .line 260
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/security/SecurityHandler;->getConstraintMappings()[Lorg/mortbay/jetty/security/ConstraintMapping;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_constraintMappings:Ljava/lang/Object;

    .line 262
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->getErrorPages()Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_errorPages:Ljava/util/Map;

    .line 265
    const-string/jumbo v0, "version"

    const-string/jumbo v2, "DTD"

    invoke-virtual {p1, v0, v2}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    const-string/jumbo v2, "2.5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 267
    const/16 v0, 0x19

    iput v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_version:I

    .line 278
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lorg/mortbay/xml/XmlParser$Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 280
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 284
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 285
    instance-of v3, v0, Lorg/mortbay/xml/XmlParser$Node;

    if-eqz v3, :cond_1

    .line 287
    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 288
    :try_start_1
    invoke-virtual {v0}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {p0, v1, v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initWebXmlElement(Ljava/lang/String;Lorg/mortbay/xml/XmlParser$Node;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    .line 300
    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 262
    goto :goto_0

    .line 268
    :cond_3
    const-string/jumbo v2, "2.4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 269
    const/16 v0, 0x18

    iput v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_version:I

    goto :goto_1

    .line 270
    :cond_4
    const-string/jumbo v2, "DTD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const/16 v0, 0x17

    iput v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_version:I

    .line 273
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_xmlParser:Lorg/mortbay/xml/XmlParser;

    invoke-virtual {v0}, Lorg/mortbay/xml/XmlParser;->getDTD()Ljava/lang/String;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_0

    const-string/jumbo v2, "web-app_2_2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 275
    const/16 v0, 0x16

    iput v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_version:I

    goto :goto_1

    .line 291
    :catch_0
    move-exception v0

    .line 293
    throw v0

    .line 295
    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 297
    :goto_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Configuration problem at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 298
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 299
    new-instance v0, Ljavax/servlet/UnavailableException;

    const-string/jumbo v1, "Configuration problem"

    invoke-direct {v0, v1}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_5
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filters:Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string/jumbo v0, "org.mortbay.jetty.servlet.FilterHolder"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    :goto_4
    invoke-static {v2, v0}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterHolder;

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V

    .line 304
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filterMappings:Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    if-nez v0, :cond_8

    const-string/jumbo v0, "org.mortbay.jetty.servlet.FilterMapping"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    :goto_5
    invoke-static {v2, v0}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterMapping;

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/mortbay/jetty/servlet/FilterMapping;)V

    .line 305
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servlets:Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    if-nez v0, :cond_9

    const-string/jumbo v0, "org.mortbay.jetty.servlet.ServletHolder"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    :goto_6
    invoke-static {v2, v0}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletHolder;

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServlets([Lorg/mortbay/jetty/servlet/ServletHolder;)V

    .line 306
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletMappings:Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    if-nez v0, :cond_a

    const-string/jumbo v0, "org.mortbay.jetty.servlet.ServletMapping"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    :goto_7
    invoke-static {v2, v0}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletMapping;

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServletMappings([Lorg/mortbay/jetty/servlet/ServletMapping;)V

    .line 308
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_listeners:Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$java$util$EventListener:Ljava/lang/Class;

    if-nez v0, :cond_b

    const-string/jumbo v0, "java.util.EventListener"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$java$util$EventListener:Ljava/lang/Class;

    :goto_8
    invoke-static {v2, v0}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    check-cast v0, [Ljava/util/EventListener;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->setEventListeners([Ljava/util/EventListener;)V

    .line 309
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_welcomeFiles:Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string/jumbo v0, "java.lang.String"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$java$lang$String:Ljava/lang/Class;

    :goto_9
    invoke-static {v2, v0}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->setWelcomeFiles([Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_constraintMappings:Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$security$ConstraintMapping:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string/jumbo v0, "org.mortbay.jetty.security.ConstraintMapping"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$security$ConstraintMapping:Ljava/lang/Class;

    :goto_a
    invoke-static {v2, v0}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/security/ConstraintMapping;

    check-cast v0, [Lorg/mortbay/jetty/security/ConstraintMapping;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/security/SecurityHandler;->setConstraintMappings([Lorg/mortbay/jetty/security/ConstraintMapping;)V

    .line 312
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_errorPages:Ljava/util/Map;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    if-eqz v0, :cond_6

    .line 313
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_errorPages:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->setErrorPages(Ljava/util/Map;)V

    .line 315
    :cond_6
    return-void

    .line 303
    :cond_7
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    goto/16 :goto_4

    .line 304
    :cond_8
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    goto/16 :goto_5

    .line 305
    :cond_9
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    goto/16 :goto_6

    .line 306
    :cond_a
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    goto/16 :goto_7

    .line 308
    :cond_b
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$java$util$EventListener:Ljava/lang/Class;

    goto :goto_8

    .line 309
    :cond_c
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_9

    .line 310
    :cond_d
    sget-object v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$security$ConstraintMapping:Ljava/lang/Class;

    goto :goto_a

    .line 295
    :catch_2
    move-exception v0

    goto/16 :goto_3
.end method

.method protected newListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 650
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected normalizePattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 471
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 473
    :cond_0
    return-object p1
.end method

.method public setWebAppContext(Lorg/mortbay/jetty/webapp/WebAppContext;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    .line 131
    return-void
.end method
