.class public Lorg/mortbay/jetty/security/HTAccessHandler;
.super Lorg/mortbay/jetty/security/SecurityHandler;
.source "HTAccessHandler.java"


# static fields
.field static class$org$mortbay$jetty$security$HTAccessHandler:Ljava/lang/Class;

.field private static log:Lorg/mortbay/log/Logger;


# instance fields
.field _accessFile:Ljava/lang/String;

.field _default:Ljava/lang/String;

.field transient _htCache:Ljava/util/HashMap;

.field private protegee:Lorg/mortbay/jetty/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lorg/mortbay/jetty/security/HTAccessHandler;->class$org$mortbay$jetty$security$HTAccessHandler:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "org.mortbay.jetty.security.HTAccessHandler"

    invoke-static {v0}, Lorg/mortbay/jetty/security/HTAccessHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/security/HTAccessHandler;->class$org$mortbay$jetty$security$HTAccessHandler:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->getLogger(Ljava/lang/String;)Lorg/mortbay/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    return-void

    :cond_0
    sget-object v0, Lorg/mortbay/jetty/security/HTAccessHandler;->class$org$mortbay$jetty$security$HTAccessHandler:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/mortbay/jetty/security/SecurityHandler;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->_default:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, ".htaccess"

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->_accessFile:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->_htCache:Ljava/util/HashMap;

    .line 305
    return-void
.end method

.method static access$000()Lorg/mortbay/log/Logger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    return-object v0
.end method

.method private callWrappedHandler(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/HTAccessHandler;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 261
    :cond_0
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 54
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
.method public getPrincipal(Ljava/lang/String;Lorg/mortbay/jetty/security/UserRealm;)Ljava/security/Principal;
    .locals 1

    .prologue
    .line 273
    if-nez p2, :cond_0

    .line 274
    new-instance v0, Lorg/mortbay/jetty/security/HTAccessHandler$DummyPrincipal;

    invoke-direct {v0, p0, p1}, Lorg/mortbay/jetty/security/HTAccessHandler$DummyPrincipal;-><init>(Lorg/mortbay/jetty/security/HTAccessHandler;Ljava/lang/String;)V

    .line 276
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p2, p1}, Lorg/mortbay/jetty/security/UserRealm;->getPrincipal(Ljava/lang/String;)Ljava/security/Principal;

    move-result-object v0

    goto :goto_0
.end method

.method protected getProtegee()Lorg/mortbay/jetty/Handler;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->protegee:Lorg/mortbay/jetty/Handler;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 97
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/mortbay/jetty/Request;

    if-eqz v2, :cond_9

    move-object/from16 v2, p2

    check-cast v2, Lorg/mortbay/jetty/Request;

    move-object v3, v2

    .line 98
    :goto_0
    move-object/from16 v0, p3

    instance-of v2, v0, Lorg/mortbay/jetty/Response;

    if-eqz v2, :cond_a

    move-object/from16 v2, p3

    check-cast v2, Lorg/mortbay/jetty/Response;

    move-object v4, v2

    .line 102
    :goto_1
    const/4 v5, 0x0

    .line 103
    const/4 v2, 0x0

    .line 106
    sget-object v6, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    invoke-interface {v6}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 107
    sget-object v6, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v8, "HTAccessHandler pathInContext="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    :cond_0
    const-string/jumbo v6, "Authorization"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 111
    if-eqz v6, :cond_1a

    .line 113
    const/16 v2, 0x20

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    sget-object v5, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-static {v2, v5}, Lorg/mortbay/jetty/security/B64Code;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    const/16 v5, 0x3a

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 116
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 117
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    sget-object v6, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    invoke-interface {v6}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    sget-object v6, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v8, "User="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, ", password="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "******************************"

    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    move-object v6, v5

    move-object v5, v2

    .line 123
    :goto_2
    const/4 v7, 0x0

    .line 127
    const/4 v8, 0x0

    .line 128
    :try_start_0
    const-string/jumbo v2, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v2, p1

    :goto_3
    move-object v9, v2

    .line 131
    :goto_4
    if-eqz v9, :cond_3

    .line 133
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v8, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->_accessFile:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 134
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/HTAccessHandler;->getProtegee()Lorg/mortbay/jetty/Handler;

    move-result-object v2

    check-cast v2, Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v2, v8}, Lorg/mortbay/jetty/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v8

    .line 135
    sget-object v2, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    invoke-interface {v2}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    sget-object v2, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v11, "directory="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, " resource="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v2, v10, v11, v12}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    :cond_2
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v8}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_c

    .line 144
    :cond_3
    const/4 v2, 0x1

    .line 147
    if-nez v8, :cond_5

    iget-object v9, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->_default:Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 149
    iget-object v8, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->_default:Ljava/lang/String;

    invoke-static {v8}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v8

    .line 150
    invoke-virtual {v8}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 151
    :cond_4
    const/4 v2, 0x0

    .line 153
    :cond_5
    if-nez v8, :cond_6

    .line 154
    const/4 v2, 0x0

    .line 157
    :cond_6
    iget-object v9, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->_accessFile:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v10, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->_accessFile:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, "~"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v10, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->_accessFile:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, ".bak"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 161
    :cond_7
    const/16 v2, 0x193

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 162
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lorg/mortbay/jetty/Request;->setHandled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 251
    :cond_8
    :goto_5
    return-void

    .line 97
    :cond_9
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_0

    .line 98
    :cond_a
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v2

    move-object v4, v2

    goto/16 :goto_1

    .line 128
    :cond_b
    :try_start_1
    invoke-static/range {p1 .. p1}, Lorg/mortbay/util/URIUtil;->parentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 140
    :cond_c
    const/4 v8, 0x0

    .line 141
    invoke-static {v9}, Lorg/mortbay/util/URIUtil;->parentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 142
    goto/16 :goto_4

    .line 166
    :cond_d
    if-eqz v2, :cond_19

    .line 168
    sget-object v2, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    invoke-interface {v2}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 169
    sget-object v2, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "HTACCESS="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v2, v9, v10, v11}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    :cond_e
    iget-object v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->_htCache:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 172
    if-eqz v2, :cond_f

    :try_start_2
    invoke-virtual {v2}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->getLastModified()J

    move-result-wide v10

    invoke-virtual {v8}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-eqz v7, :cond_18

    .line 174
    :cond_f
    new-instance v7, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;

    invoke-direct {v7, v8}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;-><init>(Lorg/mortbay/resource/Resource;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 175
    :try_start_3
    iget-object v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->_htCache:Ljava/util/HashMap;

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v2, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    invoke-interface {v2}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 177
    sget-object v2, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v9, "HTCache loaded "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v2, v8, v9, v10}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 181
    :cond_10
    :goto_6
    :try_start_4
    invoke-virtual {v7}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->isForbidden()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 183
    sget-object v2, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "Mis-configured htaccess: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v6}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    const/16 v2, 0x193

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 185
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lorg/mortbay/jetty/Request;->setHandled(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    .line 242
    :catch_0
    move-exception v2

    move-object v4, v7

    .line 244
    :goto_7
    sget-object v5, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    const-string/jumbo v6, "Exception"

    invoke-interface {v5, v6, v2}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    if-eqz v4, :cond_8

    .line 247
    const/16 v2, 0x1f4

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 248
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    goto/16 :goto_5

    .line 190
    :cond_11
    :try_start_5
    invoke-virtual {v7}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->getMethods()Ljava/util/HashMap;

    move-result-object v2

    .line 191
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_12

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 193
    invoke-direct/range {p0 .. p4}, Lorg/mortbay/jetty/security/HTAccessHandler;->callWrappedHandler(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    goto/16 :goto_5

    .line 198
    :cond_12
    invoke-virtual {v7}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->getSatisfy()I

    move-result v2

    .line 201
    const-string/jumbo v8, ""

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->checkAccess(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 202
    sget-object v9, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    invoke-interface {v9}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 203
    sget-object v9, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v11, "IPValid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 206
    :cond_13
    const/4 v9, 0x1

    if-ne v8, v9, :cond_14

    if-nez v2, :cond_14

    .line 208
    invoke-direct/range {p0 .. p4}, Lorg/mortbay/jetty/security/HTAccessHandler;->callWrappedHandler(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    goto/16 :goto_5

    .line 214
    :cond_14
    if-nez v8, :cond_15

    const/4 v8, 0x1

    if-ne v2, v8, :cond_15

    .line 216
    const/16 v2, 0x193

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 217
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    goto/16 :goto_5

    .line 222
    :cond_15
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/HTAccessHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v2

    invoke-virtual {v7, v6, v5, v2, v3}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->checkAuth(Ljava/lang/String;Ljava/lang/String;Lorg/mortbay/jetty/security/UserRealm;Lorg/mortbay/jetty/Request;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 224
    sget-object v2, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    const-string/jumbo v5, "Auth Failed"

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-interface {v2, v5, v6, v8}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    const-string/jumbo v2, "WWW-Authenticate"

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "basic realm="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v7}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v5}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/16 v2, 0x191

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 227
    invoke-virtual {v4}, Lorg/mortbay/jetty/Response;->complete()V

    .line 228
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    goto/16 :goto_5

    .line 233
    :cond_16
    if-eqz v6, :cond_17

    .line 235
    const-string/jumbo v2, "BASIC"

    invoke-virtual {v3, v2}, Lorg/mortbay/jetty/Request;->setAuthType(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/HTAccessHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v2

    invoke-virtual {p0, v6, v2}, Lorg/mortbay/jetty/security/HTAccessHandler;->getPrincipal(Ljava/lang/String;Lorg/mortbay/jetty/security/UserRealm;)Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_17
    move-object v4, v7

    .line 240
    :goto_8
    :try_start_6
    invoke-direct/range {p0 .. p4}, Lorg/mortbay/jetty/security/HTAccessHandler;->callWrappedHandler(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_5

    .line 242
    :catch_1
    move-exception v2

    goto/16 :goto_7

    :catch_2
    move-exception v2

    move-object v4, v7

    goto/16 :goto_7

    :catch_3
    move-exception v4

    move-object v14, v4

    move-object v4, v2

    move-object v2, v14

    goto/16 :goto_7

    :catch_4
    move-exception v2

    move-object v4, v7

    goto/16 :goto_7

    :cond_18
    move-object v7, v2

    goto/16 :goto_6

    :cond_19
    move-object v4, v7

    goto :goto_8

    :cond_1a
    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_2
.end method

.method public setAccessFile(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 296
    if-nez p1, :cond_0

    .line 297
    const-string/jumbo v0, ".htaccess"

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->_accessFile:Ljava/lang/String;

    .line 300
    :goto_0
    return-void

    .line 299
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->_accessFile:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDefault(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->_default:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setProtegee(Lorg/mortbay/jetty/Handler;)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->protegee:Lorg/mortbay/jetty/Handler;

    .line 888
    return-void
.end method
