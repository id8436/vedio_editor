.class public Lorg/mortbay/xml/XmlConfiguration;
.super Ljava/lang/Object;
.source "XmlConfiguration.java"


# static fields
.field private static final ZERO:Ljava/lang/Integer;

.field private static __parser:Lorg/mortbay/xml/XmlParser;

.field private static __primitiveHolders:[Ljava/lang/Class;

.field private static __primitives:[Ljava/lang/Class;

.field static class$java$lang$Boolean:Ljava/lang/Class;

.field static class$java$lang$Byte:Ljava/lang/Class;

.field static class$java$lang$Character:Ljava/lang/Class;

.field static class$java$lang$Double:Ljava/lang/Class;

.field static class$java$lang$Float:Ljava/lang/Class;

.field static class$java$lang$Integer:Ljava/lang/Class;

.field static class$java$lang$Long:Ljava/lang/Class;

.field static class$java$lang$Object:Ljava/lang/Class;

.field static class$java$lang$Short:Ljava/lang/Class;

.field static class$java$lang$String:Ljava/lang/Class;

.field static class$java$lang$Void:Ljava/lang/Class;

.field static class$java$net$InetAddress:Ljava/lang/Class;

.field static class$java$net$URL:Ljava/lang/Class;

.field static class$org$mortbay$xml$XmlConfiguration:Ljava/lang/Class;


# instance fields
.field private _config:Lorg/mortbay/xml/XmlParser$Node;

.field private _idMap:Ljava/util/Map;

.field private _propertyMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->__primitives:[Ljava/lang/Class;

    .line 56
    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "java.lang.Boolean"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Boolean:Ljava/lang/Class;

    :goto_0
    aput-object v0, v1, v3

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "java.lang.Character"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Character:Ljava/lang/Class;

    :goto_1
    aput-object v0, v1, v4

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string/jumbo v0, "java.lang.Byte"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Byte:Ljava/lang/Class;

    :goto_2
    aput-object v0, v1, v5

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string/jumbo v0, "java.lang.Short"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Short:Ljava/lang/Class;

    :goto_3
    aput-object v0, v1, v6

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string/jumbo v0, "java.lang.Integer"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Integer:Ljava/lang/Class;

    :goto_4
    aput-object v0, v1, v7

    const/4 v2, 0x5

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string/jumbo v0, "java.lang.Long"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Long:Ljava/lang/Class;

    :goto_5
    aput-object v0, v1, v2

    const/4 v2, 0x6

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string/jumbo v0, "java.lang.Float"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Float:Ljava/lang/Class;

    :goto_6
    aput-object v0, v1, v2

    const/4 v2, 0x7

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string/jumbo v0, "java.lang.Double"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Double:Ljava/lang/Class;

    :goto_7
    aput-object v0, v1, v2

    const/16 v2, 0x8

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Void:Ljava/lang/Class;

    if-nez v0, :cond_8

    const-string/jumbo v0, "java.lang.Void"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Void:Ljava/lang/Class;

    :goto_8
    aput-object v0, v1, v2

    sput-object v1, Lorg/mortbay/xml/XmlConfiguration;->__primitiveHolders:[Ljava/lang/Class;

    .line 58
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->ZERO:Ljava/lang/Integer;

    return-void

    .line 56
    :cond_0
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Boolean:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Character:Ljava/lang/Class;

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Byte:Ljava/lang/Class;

    goto :goto_2

    :cond_3
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Short:Ljava/lang/Class;

    goto :goto_3

    :cond_4
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Integer:Ljava/lang/Class;

    goto :goto_4

    :cond_5
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Long:Ljava/lang/Class;

    goto :goto_5

    :cond_6
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Float:Ljava/lang/Class;

    goto :goto_6

    :cond_7
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Double:Ljava/lang/Class;

    goto :goto_7

    :cond_8
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Void:Ljava/lang/Class;

    goto :goto_8
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    .line 144
    invoke-static {}, Lorg/mortbay/xml/XmlConfiguration;->initParser()V

    .line 145
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 146
    sget-object v1, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    monitor-enter v1

    .line 148
    :try_start_0
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    invoke-virtual {v2, v0}, Lorg/mortbay/xml/XmlParser;->parse(Lorg/xml/sax/InputSource;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_config:Lorg/mortbay/xml/XmlParser$Node;

    .line 149
    monitor-exit v1

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    .line 124
    invoke-static {}, Lorg/mortbay/xml/XmlConfiguration;->initParser()V

    .line 125
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "<?xml version=\"1.0\"  encoding=\"ISO-8859-1\"?>\n<!DOCTYPE Configure PUBLIC \"-//Mort Bay Consulting//DTD Configure 1.2//EN\" \"http://jetty.mortbay.org/configure_1_2.dtd\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 128
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    monitor-enter v2

    .line 130
    :try_start_0
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    invoke-virtual {v0, v1}, Lorg/mortbay/xml/XmlParser;->parse(Lorg/xml/sax/InputSource;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_config:Lorg/mortbay/xml/XmlParser$Node;

    .line 131
    monitor-exit v2

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    .line 106
    invoke-static {}, Lorg/mortbay/xml/XmlConfiguration;->initParser()V

    .line 107
    sget-object v1, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    monitor-enter v1

    .line 109
    :try_start_0
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mortbay/xml/XmlParser;->parse(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_config:Lorg/mortbay/xml/XmlParser$Node;

    .line 110
    monitor-exit v1

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private call(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 497
    const-string/jumbo v0, "id"

    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 498
    invoke-direct {p0, p2}, Lorg/mortbay/xml/XmlConfiguration;->nodeClass(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_0

    move-object v9, v0

    move-object p1, v7

    .line 502
    :goto_0
    if-nez v9, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_0
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 505
    :cond_1
    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v4

    move v1, v2

    move v3, v2

    .line 506
    :goto_1
    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 508
    invoke-virtual {p2, v1}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 509
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 506
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 510
    :cond_2
    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v0}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "Arg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 518
    :goto_3
    new-array v11, v3, [Ljava/lang/Object;

    move v4, v2

    move v8, v2

    .line 519
    :goto_4
    if-ge v4, v3, :cond_5

    .line 521
    invoke-virtual {p2, v8}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 522
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_4

    move v0, v4

    .line 519
    :goto_5
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v4, v0

    goto :goto_4

    .line 515
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 523
    :cond_4
    add-int/lit8 v5, v4, 0x1

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    invoke-direct {p0, p1, v0}, Lorg/mortbay/xml/XmlConfiguration;->value(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v11, v4

    move v0, v5

    goto :goto_5

    .line 526
    :cond_5
    const-string/jumbo v0, "name"

    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 527
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "XML call "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 530
    :cond_6
    invoke-virtual {v9}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    move v5, v2

    .line 531
    :goto_6
    if-eqz v12, :cond_c

    array-length v0, v12

    if-ge v5, v0, :cond_c

    .line 533
    aget-object v0, v12, v5

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 531
    :cond_7
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_6

    .line 534
    :cond_8
    aget-object v0, v12, v5

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_7

    .line 535
    aget-object v0, v12, v5

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez p1, :cond_b

    move v0, v6

    :goto_7
    if-ne v4, v0, :cond_7

    .line 536
    if-nez p1, :cond_9

    aget-object v0, v12, v5

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, v9, :cond_7

    .line 542
    :cond_9
    :try_start_0
    aget-object v0, v12, v5

    invoke-virtual {v0, p1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v4, v0

    move v0, v6

    .line 553
    :goto_8
    if-eqz v0, :cond_7

    .line 555
    if-eqz v10, :cond_a

    iget-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v0, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    :cond_a
    invoke-direct {p0, v4, p2, v1}, Lorg/mortbay/xml/XmlConfiguration;->configure(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V

    .line 557
    return-object v4

    :cond_b
    move v0, v2

    .line 535
    goto :goto_7

    .line 545
    :catch_0
    move-exception v0

    .line 547
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    move v0, v2

    move-object v4, v7

    .line 552
    goto :goto_8

    .line 549
    :catch_1
    move-exception v0

    .line 551
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    move v0, v2

    move-object v4, v7

    goto :goto_8

    .line 561
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "No Method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move v1, v4

    goto/16 :goto_3

    :cond_e
    move-object v9, v0

    goto/16 :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 56
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

.method private configure(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 234
    const-string/jumbo v0, "id"

    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v0

    if-ge p3, v0, :cond_a

    .line 240
    invoke-virtual {p2, p3}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 241
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 238
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 242
    :cond_1
    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    .line 246
    :try_start_0
    invoke-virtual {v0}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 247
    const-string/jumbo v2, "Set"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 248
    invoke-direct {p0, p1, v0}, Lorg/mortbay/xml/XmlConfiguration;->set(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 266
    :catch_0
    move-exception v1

    .line 268
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Config error at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    throw v1

    .line 249
    :cond_2
    :try_start_1
    const-string/jumbo v2, "Put"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 250
    invoke-direct {p0, p1, v0}, Lorg/mortbay/xml/XmlConfiguration;->put(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_1

    .line 251
    :cond_3
    const-string/jumbo v2, "Call"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 252
    invoke-direct {p0, p1, v0}, Lorg/mortbay/xml/XmlConfiguration;->call(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    .line 253
    :cond_4
    const-string/jumbo v2, "Get"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 254
    invoke-direct {p0, p1, v0}, Lorg/mortbay/xml/XmlConfiguration;->get(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    .line 255
    :cond_5
    const-string/jumbo v2, "New"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 256
    invoke-direct {p0, p1, v0}, Lorg/mortbay/xml/XmlConfiguration;->newObj(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    .line 257
    :cond_6
    const-string/jumbo v2, "Array"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 258
    invoke-direct {p0, p1, v0}, Lorg/mortbay/xml/XmlConfiguration;->newArray(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    .line 259
    :cond_7
    const-string/jumbo v2, "Ref"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 260
    invoke-direct {p0, p1, v0}, Lorg/mortbay/xml/XmlConfiguration;->refObj(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    .line 261
    :cond_8
    const-string/jumbo v2, "Property"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 262
    invoke-direct {p0, p1, v0}, Lorg/mortbay/xml/XmlConfiguration;->propertyObj(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 264
    :cond_9
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Unknown tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    :cond_a
    return-void
.end method

.method private get(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 452
    invoke-direct {p0, p2}, Lorg/mortbay/xml/XmlConfiguration;->nodeClass(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v0

    .line 453
    if-eqz v0, :cond_2

    move-object p1, v1

    move-object v1, v0

    .line 458
    :goto_0
    const-string/jumbo v0, "name"

    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 459
    const-string/jumbo v0, "id"

    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 460
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "XML get "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 465
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "get"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 467
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 468
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/mortbay/xml/XmlConfiguration;->configure(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_1
    if-eqz v3, :cond_1

    iget-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :cond_1
    return-object p1

    .line 456
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 474
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 475
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 476
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lorg/mortbay/xml/XmlConfiguration;->configure(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 478
    :catch_1
    move-exception v1

    .line 480
    throw v0
.end method

.method private static declared-synchronized initParser()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const-class v1, Lorg/mortbay/xml/XmlConfiguration;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    monitor-exit v1

    return-void

    .line 71
    :cond_0
    :try_start_1
    new-instance v0, Lorg/mortbay/xml/XmlParser;

    invoke-direct {v0}, Lorg/mortbay/xml/XmlParser;-><init>()V

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :try_start_2
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$org$mortbay$xml$XmlConfiguration:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.mortbay.xml.XmlConfiguration"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$org$mortbay$xml$XmlConfiguration:Ljava/lang/Class;

    :goto_1
    const-string/jumbo v2, "org/mortbay/xml/configure_6_0.dtd"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    .line 75
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string/jumbo v3, "configure.dtd"

    invoke-virtual {v2, v3, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 76
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string/jumbo v3, "configure_1_3.dtd"

    invoke-virtual {v2, v3, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 77
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string/jumbo v3, "http://jetty.mortbay.org/configure.dtd"

    invoke-virtual {v2, v3, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 78
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string/jumbo v3, "-//Mort Bay Consulting//DTD Configure//EN"

    invoke-virtual {v2, v3, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 79
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string/jumbo v3, "http://jetty.mortbay.org/configure_1_3.dtd"

    invoke-virtual {v2, v3, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 80
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string/jumbo v3, "-//Mort Bay Consulting//DTD Configure 1.3//EN"

    invoke-virtual {v2, v3, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 81
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string/jumbo v3, "configure_1_2.dtd"

    invoke-virtual {v2, v3, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 82
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string/jumbo v3, "http://jetty.mortbay.org/configure_1_2.dtd"

    invoke-virtual {v2, v3, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 83
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string/jumbo v3, "-//Mort Bay Consulting//DTD Configure 1.2//EN"

    invoke-virtual {v2, v3, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 84
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string/jumbo v3, "configure_1_1.dtd"

    invoke-virtual {v2, v3, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 85
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string/jumbo v3, "http://jetty.mortbay.org/configure_1_1.dtd"

    invoke-virtual {v2, v3, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 86
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string/jumbo v3, "-//Mort Bay Consulting//DTD Configure 1.1//EN"

    invoke-virtual {v2, v3, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 87
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string/jumbo v3, "configure_1_0.dtd"

    invoke-virtual {v2, v3, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 88
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string/jumbo v3, "http://jetty.mortbay.org/configure_1_0.dtd"

    invoke-virtual {v2, v3, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 89
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__parser:Lorg/mortbay/xml/XmlParser;

    const-string/jumbo v3, "-//Mort Bay Consulting//DTD Configure 1.0//EN"

    invoke-virtual {v2, v3, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 93
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 94
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 74
    :cond_1
    :try_start_4
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$org$mortbay$xml$XmlConfiguration:Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method private itemValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 909
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 929
    :goto_0
    return-object p2

    .line 911
    :cond_0
    check-cast p2, Lorg/mortbay/xml/XmlParser$Node;

    .line 912
    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 913
    const-string/jumbo v1, "Call"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/mortbay/xml/XmlConfiguration;->call(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 914
    :cond_1
    const-string/jumbo v1, "Get"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Lorg/mortbay/xml/XmlConfiguration;->get(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 915
    :cond_2
    const-string/jumbo v1, "New"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2}, Lorg/mortbay/xml/XmlConfiguration;->newObj(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 916
    :cond_3
    const-string/jumbo v1, "Ref"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, p2}, Lorg/mortbay/xml/XmlConfiguration;->refObj(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 917
    :cond_4
    const-string/jumbo v1, "Array"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1, p2}, Lorg/mortbay/xml/XmlConfiguration;->newArray(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 918
    :cond_5
    const-string/jumbo v1, "Map"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1, p2}, Lorg/mortbay/xml/XmlConfiguration;->newMap(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 919
    :cond_6
    const-string/jumbo v1, "Property"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, p1, p2}, Lorg/mortbay/xml/XmlConfiguration;->propertyObj(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 921
    :cond_7
    const-string/jumbo v1, "SystemProperty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 923
    const-string/jumbo v0, "name"

    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 924
    const-string/jumbo v1, "default"

    invoke-virtual {p2, v1}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 925
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    .line 928
    :cond_8
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Unknown value tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 929
    const/4 p2, 0x0

    goto/16 :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 958
    :try_start_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 959
    const/4 v0, 0x0

    .line 960
    array-length v1, p0

    new-array v5, v1, [Ljava/lang/Object;

    move v3, v2

    .line 961
    :goto_0
    array-length v1, p0

    if-ge v3, v1, :cond_3

    .line 963
    aget-object v1, p0, v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, ".properties"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 965
    aget-object v1, p0, v3

    invoke-static {v1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 961
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 969
    :cond_0
    new-instance v1, Lorg/mortbay/xml/XmlConfiguration;

    aget-object v6, p0, v3

    invoke-static {v6}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/mortbay/xml/XmlConfiguration;-><init>(Ljava/net/URL;)V

    .line 970
    if-eqz v0, :cond_1

    .line 971
    invoke-virtual {v1}, Lorg/mortbay/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v0}, Lorg/mortbay/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 972
    :cond_1
    invoke-virtual {v4}, Ljava/util/Properties;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 973
    invoke-virtual {v1, v4}, Lorg/mortbay/xml/XmlConfiguration;->setProperties(Ljava/util/Map;)V

    .line 974
    :cond_2
    invoke-virtual {v1}, Lorg/mortbay/xml/XmlConfiguration;->configure()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v3

    move-object v0, v1

    .line 975
    goto :goto_1

    :cond_3
    move v1, v2

    .line 979
    :goto_2
    array-length v0, p0

    if-ge v1, v0, :cond_5

    .line 981
    aget-object v0, v5, v1

    instance-of v0, v0, Lorg/mortbay/component/LifeCycle;

    if-eqz v0, :cond_4

    .line 983
    aget-object v0, v5, v1

    check-cast v0, Lorg/mortbay/component/LifeCycle;

    .line 984
    invoke-interface {v0}, Lorg/mortbay/component/LifeCycle;->isRunning()Z

    move-result v2

    if-nez v2, :cond_4

    .line 985
    invoke-interface {v0}, Lorg/mortbay/component/LifeCycle;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 989
    :catch_0
    move-exception v0

    .line 991
    const-string/jumbo v1, "EXCEPTION "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 994
    :cond_5
    return-void
.end method

.method private newArray(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 660
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "java.lang.Object"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Object:Ljava/lang/Class;

    .line 661
    :goto_0
    const-string/jumbo v1, "type"

    invoke-virtual {p2, v1}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 662
    const-string/jumbo v2, "id"

    invoke-virtual {p2, v2}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 663
    if-eqz v1, :cond_c

    .line 665
    invoke-static {v1}, Lorg/mortbay/util/TypeUtil;->fromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 666
    if-nez v0, :cond_c

    .line 668
    const-string/jumbo v0, "String"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 669
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string/jumbo v0, "java.lang.String"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$String:Ljava/lang/Class;

    :goto_1
    move-object v1, v0

    .line 679
    :goto_2
    const/4 v0, 0x0

    .line 681
    const-string/jumbo v2, "Item"

    invoke-virtual {p2, v2}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v0

    .line 682
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 684
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    .line 685
    const-string/jumbo v3, "id"

    invoke-virtual {v0, v3}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 686
    invoke-direct {p0, p1, v0}, Lorg/mortbay/xml/XmlConfiguration;->value(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v3

    .line 687
    if-nez v3, :cond_9

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->ZERO:Ljava/lang/Integer;

    :goto_4
    invoke-static {v2, v0}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 688
    if-eqz v6, :cond_0

    .line 689
    iget-object v2, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v2, v0

    .line 690
    goto :goto_3

    .line 660
    :cond_1
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_0

    .line 669
    :cond_2
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_1

    .line 670
    :cond_3
    const-string/jumbo v0, "URL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 671
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$net$URL:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string/jumbo v0, "java.net.URL"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$net$URL:Ljava/lang/Class;

    :goto_5
    move-object v1, v0

    goto :goto_2

    :cond_4
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$net$URL:Ljava/lang/Class;

    goto :goto_5

    .line 672
    :cond_5
    const-string/jumbo v0, "InetAddress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 673
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$net$InetAddress:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string/jumbo v0, "java.net.InetAddress"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$net$InetAddress:Ljava/lang/Class;

    :goto_6
    move-object v1, v0

    goto :goto_2

    :cond_6
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$net$InetAddress:Ljava/lang/Class;

    goto :goto_6

    .line 675
    :cond_7
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$org$mortbay$xml$XmlConfiguration:Ljava/lang/Class;

    if-nez v0, :cond_8

    const-string/jumbo v0, "org.mortbay.xml.XmlConfiguration"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$org$mortbay$xml$XmlConfiguration:Ljava/lang/Class;

    :goto_7
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2

    :cond_8
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$org$mortbay$xml$XmlConfiguration:Ljava/lang/Class;

    goto :goto_7

    :cond_9
    move-object v0, v3

    .line 687
    goto :goto_4

    .line 692
    :cond_a
    invoke-static {v2, v1}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 693
    if-eqz v4, :cond_b

    .line 694
    iget-object v1, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    :cond_b
    return-object v0

    :cond_c
    move-object v1, v0

    goto/16 :goto_2
.end method

.method private newMap(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 705
    const-string/jumbo v0, "id"

    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 708
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move v2, v3

    .line 710
    :goto_0
    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    .line 712
    invoke-virtual {p2, v2}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 713
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 710
    :cond_1
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 714
    :cond_2
    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    .line 715
    invoke-virtual {v0}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "Entry"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not an Entry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v6, v3

    move-object v4, v7

    move-object v5, v7

    .line 721
    :goto_2
    invoke-virtual {v0}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v1

    if-ge v6, v1, :cond_7

    .line 723
    invoke-virtual {v0, v6}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 724
    instance-of v9, v1, Ljava/lang/String;

    if-eqz v9, :cond_4

    move-object v1, v4

    move-object v4, v5

    .line 721
    :goto_3
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move-object v5, v4

    move-object v4, v1

    goto :goto_2

    .line 725
    :cond_4
    check-cast v1, Lorg/mortbay/xml/XmlParser$Node;

    .line 726
    invoke-virtual {v1}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Item"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not an Item"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_5
    if-nez v5, :cond_6

    move-object v11, v4

    move-object v4, v1

    move-object v1, v11

    .line 728
    goto :goto_3

    :cond_6
    move-object v4, v5

    .line 730
    goto :goto_3

    .line 733
    :cond_7
    if-eqz v5, :cond_8

    if-nez v4, :cond_9

    .line 734
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Missing Item in Entry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_9
    const-string/jumbo v0, "id"

    invoke-virtual {v5, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 736
    const-string/jumbo v1, "id"

    invoke-virtual {v4, v1}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 738
    invoke-direct {p0, p1, v5}, Lorg/mortbay/xml/XmlConfiguration;->value(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v5

    .line 739
    invoke-direct {p0, p1, v4}, Lorg/mortbay/xml/XmlConfiguration;->value(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v4

    .line 740
    invoke-interface {v8, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    if-eqz v0, :cond_a

    iget-object v6, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    :cond_a
    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 746
    :cond_b
    return-object v8
.end method

.method private newObj(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 572
    invoke-direct {p0, p2}, Lorg/mortbay/xml/XmlConfiguration;->nodeClass(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v7

    .line 573
    const-string/jumbo v0, "id"

    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 575
    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v4

    move v1, v2

    move v3, v2

    .line 576
    :goto_0
    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 578
    invoke-virtual {p2, v1}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 579
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 576
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 580
    :cond_0
    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v0}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "Arg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    :goto_2
    new-array v9, v3, [Ljava/lang/Object;

    move v4, v2

    move v6, v2

    .line 589
    :goto_3
    if-ge v4, v3, :cond_3

    .line 591
    invoke-virtual {p2, v6}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 592
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_2

    move v0, v4

    .line 589
    :goto_4
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v0

    goto :goto_3

    .line 585
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 593
    :cond_2
    add-int/lit8 v5, v4, 0x1

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    invoke-direct {p0, p1, v0}, Lorg/mortbay/xml/XmlConfiguration;->value(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v9, v4

    move v0, v5

    goto :goto_4

    .line 596
    :cond_3
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "XML new "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 599
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v6

    move v5, v2

    .line 600
    :goto_5
    if-eqz v6, :cond_8

    array-length v0, v6

    if-ge v5, v0, :cond_8

    .line 602
    aget-object v0, v6, v5

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-eq v0, v3, :cond_6

    .line 600
    :cond_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_5

    .line 604
    :cond_6
    const/4 v4, 0x0

    .line 608
    :try_start_0
    aget-object v0, v6, v5

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 609
    const/4 v0, 0x1

    .line 623
    :goto_6
    if-eqz v0, :cond_5

    .line 625
    if-eqz v8, :cond_7

    iget-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    :cond_7
    invoke-direct {p0, v4, p2, v1}, Lorg/mortbay/xml/XmlConfiguration;->configure(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V

    .line 627
    return-object v4

    .line 611
    :catch_0
    move-exception v0

    .line 613
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    move v0, v2

    .line 622
    goto :goto_6

    .line 615
    :catch_1
    move-exception v0

    .line 617
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    move v0, v2

    .line 622
    goto :goto_6

    .line 619
    :catch_2
    move-exception v0

    .line 621
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_6

    .line 631
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "No Constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v1, v4

    goto/16 :goto_2
.end method

.method private nodeClass(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 221
    const-string/jumbo v0, "class"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$org$mortbay$xml$XmlConfiguration:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.mortbay.xml.XmlConfiguration"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$org$mortbay$xml$XmlConfiguration:Ljava/lang/Class;

    :goto_1
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$org$mortbay$xml$XmlConfiguration:Ljava/lang/Class;

    goto :goto_1
.end method

.method private propertyObj(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 757
    const-string/jumbo v0, "id"

    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 758
    const-string/jumbo v0, "name"

    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 759
    const-string/jumbo v0, "default"

    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    const/4 v1, 0x0

    .line 761
    iget-object v4, p0, Lorg/mortbay/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/mortbay/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 763
    iget-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 768
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 769
    iget-object v1, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    :cond_1
    if-eqz v0, :cond_2

    .line 771
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lorg/mortbay/xml/XmlConfiguration;->configure(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V

    .line 772
    :cond_2
    return-object v0

    .line 765
    :cond_3
    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method private put(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 435
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Object for put is not a Map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    .line 437
    check-cast v0, Ljava/util/Map;

    .line 439
    const-string/jumbo v1, "name"

    invoke-virtual {p2, v1}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-direct {p0, p1, p2}, Lorg/mortbay/xml/XmlConfiguration;->value(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v2

    .line 441
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "XML "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v3, ".put("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 443
    :cond_1
    return-void
.end method

.method private refObj(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 643
    const-string/jumbo v0, "id"

    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 644
    iget-object v1, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 645
    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "No object for id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 646
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, p2, v0}, Lorg/mortbay/xml/XmlConfiguration;->configure(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V

    .line 647
    return-object v1
.end method

.method private set(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 284
    const-string/jumbo v0, "name"

    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 285
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v3, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 286
    invoke-direct {p0, p1, p2}, Lorg/mortbay/xml/XmlConfiguration;->value(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v6

    .line 287
    new-array v7, v11, [Ljava/lang/Object;

    aput-object v6, v7, v4

    .line 289
    invoke-direct {p0, p2}, Lorg/mortbay/xml/XmlConfiguration;->nodeClass(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_2

    move-object v1, v0

    move-object p1, v2

    .line 295
    :goto_0
    new-array v8, v11, [Ljava/lang/Class;

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string/jumbo v0, "java.lang.Object"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Object:Ljava/lang/Class;

    :goto_1
    aput-object v0, v8, v4

    .line 296
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v8, v4

    .line 298
    :cond_0
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v9, "XML "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v9, "."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v9, "("

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v9, ")"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 304
    :cond_1
    :try_start_0
    invoke-virtual {v1, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 305
    invoke-virtual {v0, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5

    .line 407
    :goto_3
    return-void

    .line 293
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 295
    :cond_3
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_1

    .line 299
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 308
    :catch_0
    move-exception v0

    .line 310
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 324
    :goto_4
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, v8, v0

    const-string/jumbo v9, "TYPE"

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 325
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    aput-object v0, v8, v9

    .line 326
    invoke-virtual {v1, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 327
    invoke-virtual {v0, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_3

    .line 330
    :catch_1
    move-exception v0

    .line 332
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 350
    :goto_5
    :try_start_2
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 353
    invoke-virtual {v0, p1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 357
    :catch_2
    move-exception v0

    .line 359
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 363
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    move v3, v4

    move-object v0, v2

    .line 365
    :goto_6
    if-eqz v6, :cond_7

    array-length v2, v6

    if-ge v3, v2, :cond_7

    .line 367
    aget-object v2, v6, v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    aget-object v2, v6, v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-ne v2, v11, :cond_6

    .line 372
    :try_start_3
    aget-object v2, v6, v3
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_d

    .line 373
    :try_start_4
    aget-object v0, v6, v3

    invoke-virtual {v0, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_9

    goto :goto_3

    .line 376
    :catch_3
    move-exception v0

    move-object v12, v0

    move-object v0, v2

    move-object v2, v12

    .line 378
    :goto_7
    invoke-static {v2}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 365
    :cond_6
    :goto_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    .line 312
    :catch_4
    move-exception v0

    .line 314
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 316
    :catch_5
    move-exception v0

    .line 318
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 334
    :catch_6
    move-exception v0

    .line 336
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 338
    :catch_7
    move-exception v0

    .line 340
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 342
    :catch_8
    move-exception v0

    .line 344
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 380
    :catch_9
    move-exception v0

    move-object v12, v0

    move-object v0, v2

    move-object v2, v12

    .line 382
    :goto_9
    invoke-static {v2}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 388
    :cond_7
    if-eqz v0, :cond_9

    .line 392
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 393
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v4

    .line 395
    :goto_a
    sget-object v6, Lorg/mortbay/xml/XmlConfiguration;->__primitives:[Ljava/lang/Class;

    array-length v6, v6

    if-ge v3, v6, :cond_8

    .line 397
    sget-object v6, Lorg/mortbay/xml/XmlConfiguration;->__primitives:[Ljava/lang/Class;

    aget-object v6, v6, v3

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 399
    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->__primitiveHolders:[Ljava/lang/Class;

    aget-object v2, v2, v3

    .line 404
    :cond_8
    invoke-virtual {v2, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 405
    const/4 v3, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v7, v3

    .line 406
    invoke-virtual {v0, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_c

    goto/16 :goto_3

    .line 409
    :catch_a
    move-exception v0

    .line 411
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 424
    :cond_9
    :goto_b
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    aget-object v2, v8, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 413
    :catch_b
    move-exception v0

    .line 415
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 417
    :catch_c
    move-exception v0

    .line 419
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 380
    :catch_d
    move-exception v2

    goto :goto_9

    .line 376
    :catch_e
    move-exception v2

    goto/16 :goto_7
.end method

.method private value(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 783
    .line 786
    const-string/jumbo v0, "type"

    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 789
    const-string/jumbo v0, "ref"

    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 790
    if-eqz v0, :cond_1

    .line 792
    iget-object v2, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 855
    :goto_0
    if-nez v0, :cond_e

    .line 857
    const-string/jumbo v0, "String"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, ""

    .line 891
    :cond_0
    :goto_1
    return-object v0

    .line 797
    :cond_1
    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 799
    const-string/jumbo v0, "String"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 800
    goto :goto_1

    .line 804
    :cond_3
    const/4 v0, 0x0

    .line 805
    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 808
    if-eqz v4, :cond_4

    const-string/jumbo v3, "String"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_4
    move v3, v0

    .line 812
    :goto_2
    if-gt v3, v2, :cond_5

    .line 814
    invoke-virtual {p2, v3}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 815
    instance-of v5, v0, Ljava/lang/String;

    if-nez v5, :cond_7

    .line 822
    :cond_5
    :goto_3
    if-ge v3, v2, :cond_6

    .line 824
    invoke-virtual {p2, v2}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 825
    instance-of v5, v0, Ljava/lang/String;

    if-nez v5, :cond_8

    .line 832
    :cond_6
    if-le v3, v2, :cond_9

    move-object v0, v1

    goto :goto_1

    .line 816
    :cond_7
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 817
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 818
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 826
    :cond_8
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 827
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_6

    .line 828
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_9
    move v0, v3

    .line 835
    :cond_a
    if-ne v0, v2, :cond_b

    .line 837
    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/mortbay/xml/XmlConfiguration;->itemValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 841
    :cond_b
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 842
    monitor-enter v3

    .line 844
    :goto_4
    if-gt v0, v2, :cond_c

    .line 846
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 847
    invoke-direct {p0, p1, v5}, Lorg/mortbay/xml/XmlConfiguration;->itemValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 844
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 849
    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 850
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_d
    move-object v0, v1

    .line 858
    goto/16 :goto_1

    .line 862
    :cond_e
    if-nez v4, :cond_f

    .line 864
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 868
    :cond_f
    const-string/jumbo v1, "String"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "java.lang.String"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 870
    :cond_11
    invoke-static {v4}, Lorg/mortbay/util/TypeUtil;->fromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 871
    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/mortbay/util/TypeUtil;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1

    .line 873
    :cond_12
    const-string/jumbo v1, "URL"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string/jumbo v1, "java.net.URL"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 875
    :cond_13
    instance-of v1, v0, Ljava/net/URL;

    if-nez v1, :cond_0

    .line 878
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto/16 :goto_1

    .line 880
    :catch_0
    move-exception v0

    .line 882
    new-instance v1, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {v1, v0}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 886
    :cond_14
    const-string/jumbo v1, "InetAddress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string/jumbo v1, "java.net.InetAddress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 888
    :cond_15
    instance-of v1, v0, Ljava/net/InetAddress;

    if-nez v1, :cond_0

    .line 891
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_1

    .line 893
    :catch_1
    move-exception v0

    .line 895
    new-instance v1, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {v1, v0}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 899
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public configure()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_config:Lorg/mortbay/xml/XmlParser$Node;

    invoke-direct {p0, v0}, Lorg/mortbay/xml/XmlConfiguration;->nodeClass(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v1

    .line 205
    iget-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_config:Lorg/mortbay/xml/XmlParser$Node;

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 208
    :goto_0
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 211
    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 212
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    iget-object v2, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_2
    iget-object v1, p0, Lorg/mortbay/xml/XmlConfiguration;->_config:Lorg/mortbay/xml/XmlParser$Node;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/mortbay/xml/XmlConfiguration;->configure(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V

    .line 215
    return-object v0
.end method

.method public configure(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_config:Lorg/mortbay/xml/XmlParser$Node;

    invoke-direct {p0, v0}, Lorg/mortbay/xml/XmlConfiguration;->nodeClass(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v0

    .line 188
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Object is not of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_config:Lorg/mortbay/xml/XmlParser$Node;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/mortbay/xml/XmlConfiguration;->configure(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V

    .line 191
    return-void
.end method

.method public getIdMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    return-object v0
.end method

.method public setIdMap(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lorg/mortbay/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    .line 162
    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lorg/mortbay/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    .line 168
    return-void
.end method
