.class public Lorg/mortbay/jetty/webapp/TagLibConfiguration;
.super Ljava/lang/Object;
.source "TagLibConfiguration.java"

# interfaces
.implements Lorg/mortbay/jetty/webapp/Configuration;


# static fields
.field static class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;


# instance fields
.field _context:Lorg/mortbay/jetty/webapp/WebAppContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 211
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


# virtual methods
.method public configureClassLoader()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    return-void
.end method

.method public configureDefaults()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    return-void
.end method

.method public configureWebApp()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 93
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 99
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getResourceAliases()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getResourceAliases()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 104
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".tld"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "/WEB-INF/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_1
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 112
    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWebInf()Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_4

    .line 121
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v1

    .line 122
    const/4 v0, 0x0

    :goto_1
    if-eqz v1, :cond_4

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 124
    aget-object v2, v1, v0

    if-eqz v2, :cond_3

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".tld"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWebInf()Lorg/mortbay/resource/Resource;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v2

    .line 127
    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    :cond_4
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    const-string/jumbo v1, "org.mortbay.jetty.webapp.NoTLDJarPattern"

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    if-nez v0, :cond_7

    const/4 v0, 0x0

    move-object v2, v0

    .line 139
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 140
    const/4 v0, 0x0

    move v6, v0

    .line 142
    :goto_3
    if-eqz v1, :cond_d

    .line 144
    instance-of v0, v1, Ljava/net/URLClassLoader;

    if-eqz v0, :cond_c

    move-object v0, v1

    .line 146
    check-cast v0, Ljava/net/URLClassLoader;

    invoke-virtual {v0}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v9

    .line 148
    if-eqz v9, :cond_c

    .line 150
    const/4 v0, 0x0

    move v3, v0

    :goto_4
    array-length v0, v9

    if-ge v3, v0, :cond_c

    .line 152
    aget-object v0, v9, v3

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, ".jar"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 155
    aget-object v0, v9, v3

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 157
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    if-eqz v6, :cond_8

    iget-object v4, p0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v4}, Lorg/mortbay/jetty/webapp/WebAppContext;->isParentLoaderPriority()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    if-eqz v2, :cond_8

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 150
    :cond_6
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 135
    :cond_7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    .line 163
    :cond_8
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    const-string/jumbo v0, "TLD search of {}"

    aget-object v4, v9, v3

    invoke-static {v0, v4}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    aget-object v0, v9, v3

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/net/URL;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v10

    .line 168
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 171
    const/4 v5, 0x0

    .line 174
    :try_start_0
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, v10}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :try_start_1
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 176
    :cond_9
    :goto_6
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 178
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 179
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 180
    const-string/jumbo v11, "META-INF/"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, ".tld"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 182
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v12, "jar:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    aget-object v12, v9, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string/jumbo v12, "!/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 183
    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    const-string/jumbo v11, "TLD found {}"

    invoke-static {v11, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    .line 188
    :catch_0
    move-exception v0

    .line 190
    :goto_7
    :try_start_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v11, "Failed to read file: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 194
    if-eqz v4, :cond_6

    .line 196
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    goto/16 :goto_5

    .line 194
    :cond_a
    if-eqz v4, :cond_6

    .line 196
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    goto/16 :goto_5

    .line 194
    :catchall_0
    move-exception v0

    move-object v4, v5

    :goto_8
    if-eqz v4, :cond_b

    .line 196
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    :cond_b
    throw v0

    .line 204
    :cond_c
    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 205
    const/4 v0, 0x1

    move v6, v0

    goto/16 :goto_3

    .line 210
    :cond_d
    new-instance v3, Lorg/mortbay/xml/XmlParser;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lorg/mortbay/xml/XmlParser;-><init>(Z)V

    .line 211
    const-string/jumbo v1, "web-jsptaglib_1_1.dtd"

    sget-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    if-nez v0, :cond_10

    const-string/jumbo v0, "org.mortbay.jetty.webapp.TagLibConfiguration"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    :goto_9
    const-string/jumbo v2, "javax/servlet/jsp/resources/web-jsptaglibrary_1_1.dtd"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 212
    const-string/jumbo v1, "web-jsptaglib_1_2.dtd"

    sget-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    if-nez v0, :cond_11

    const-string/jumbo v0, "org.mortbay.jetty.webapp.TagLibConfiguration"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    :goto_a
    const-string/jumbo v2, "javax/servlet/jsp/resources/web-jsptaglibrary_1_2.dtd"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 213
    const-string/jumbo v1, "web-jsptaglib_2_0.xsd"

    sget-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    if-nez v0, :cond_12

    const-string/jumbo v0, "org.mortbay.jetty.webapp.TagLibConfiguration"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    :goto_b
    const-string/jumbo v2, "javax/servlet/jsp/resources/web-jsptaglibrary_2_0.xsd"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 214
    const-string/jumbo v1, "web-jsptaglibrary_1_1.dtd"

    sget-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string/jumbo v0, "org.mortbay.jetty.webapp.TagLibConfiguration"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    :goto_c
    const-string/jumbo v2, "javax/servlet/jsp/resources/web-jsptaglibrary_1_1.dtd"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 215
    const-string/jumbo v1, "web-jsptaglibrary_1_2.dtd"

    sget-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    if-nez v0, :cond_14

    const-string/jumbo v0, "org.mortbay.jetty.webapp.TagLibConfiguration"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    :goto_d
    const-string/jumbo v2, "javax/servlet/jsp/resources/web-jsptaglibrary_1_2.dtd"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 216
    const-string/jumbo v1, "web-jsptaglibrary_2_0.xsd"

    sget-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    if-nez v0, :cond_15

    const-string/jumbo v0, "org.mortbay.jetty.webapp.TagLibConfiguration"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    :goto_e
    const-string/jumbo v2, "javax/servlet/jsp/resources/web-jsptaglibrary_2_0.xsd"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 217
    const-string/jumbo v0, "/taglib/listener/listener-class"

    invoke-virtual {v3, v0}, Lorg/mortbay/xml/XmlParser;->setXpath(Ljava/lang/String;)V

    .line 219
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 220
    :cond_e
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 224
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/resource/Resource;

    .line 225
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "TLD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 234
    :cond_f
    :try_start_4
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/mortbay/xml/XmlParser;->parse(Ljava/io/InputStream;)Lorg/mortbay/xml/XmlParser$Node;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    move-object v2, v1

    .line 241
    :goto_10
    if-nez v2, :cond_16

    .line 243
    :try_start_5
    const-string/jumbo v1, "No TLD root in {}"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_f

    .line 278
    :catch_1
    move-exception v0

    .line 280
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_f

    .line 211
    :cond_10
    sget-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    goto/16 :goto_9

    .line 212
    :cond_11
    sget-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    goto/16 :goto_a

    .line 213
    :cond_12
    sget-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    goto/16 :goto_b

    .line 214
    :cond_13
    sget-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    goto/16 :goto_c

    .line 215
    :cond_14
    sget-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    goto/16 :goto_d

    .line 216
    :cond_15
    sget-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    goto :goto_e

    .line 236
    :catch_2
    move-exception v1

    .line 238
    :try_start_6
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/mortbay/xml/XmlParser;->parse(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v1

    move-object v2, v1

    goto :goto_10

    .line 247
    :cond_16
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    invoke-virtual {v2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    .line 249
    invoke-virtual {v2, v1}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 250
    instance-of v5, v0, Lorg/mortbay/xml/XmlParser$Node;

    if-eqz v5, :cond_18

    .line 252
    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    .line 253
    const-string/jumbo v5, "listener"

    invoke-virtual {v0}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 255
    const-string/jumbo v5, "listener-class"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v6, v7}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    .line 256
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "listener="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 260
    :cond_17
    :try_start_7
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/mortbay/jetty/webapp/WebAppContext;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;

    .line 262
    iget-object v6, p0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v6, v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->addEventListener(Ljava/util/EventListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_4

    .line 247
    :cond_18
    :goto_12
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 264
    :catch_3
    move-exception v0

    .line 266
    :try_start_8
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "Could not instantiate listener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 267
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    goto :goto_12

    .line 269
    :catch_4
    move-exception v0

    .line 271
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "Could not instantiate listener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 272
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_12

    .line 283
    :cond_19
    return-void

    .line 194
    :catchall_1
    move-exception v0

    goto/16 :goto_8

    .line 188
    :catch_5
    move-exception v0

    move-object v4, v5

    goto/16 :goto_7
.end method

.method public deconfigureWebApp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 288
    return-void
.end method

.method public getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    return-object v0
.end method

.method public setWebAppContext(Lorg/mortbay/jetty/webapp/WebAppContext;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    .line 64
    return-void
.end method
